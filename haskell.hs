{-# LANGUAGE ForeignFunctionInterface #-}

import Foreign.Ptr
import Control.Concurrent
import Control.Monad
import Data.IORef
import Foreign
import Foreign.C
import Graphics.Rendering.OpenGL.GL as GL

foreign import ccall safe "c_main" c_main :: FunPtr (IO ()) -> IO ()
foreign import ccall "wrapper" mkDrawFrame :: IO () -> IO (FunPtr (IO ()))

main = do
    putStrLn "Haskell start"
    angleRef <- newIORef 0
    allocaArray 8 $ \vBox -> do
        pokeArray (vBox :: Ptr CFloat) [
                -0.5, -0.33,
                0.5, -0.33,
                -0.5,  0.33,
                0.5,  0.33
            ]

        drawFrame <- mkDrawFrame $ do
            modifyIORef angleRef $ \x -> if x < 360 then x + 5 else 0
            angle <- readIORef angleRef
            --putStrLn $ "brightness "++show x
            GL.clearColor $= GL.Color4 (realToFrac $ angle / 360) 0 1 (1 :: GL.GLclampf)
            GL.clear [ColorBuffer, DepthBuffer]
            loadIdentity
            GL.rotate (angle :: GLfloat) (GL.Vector3 0 0 1)
            GL.color $ GL.Color4 1 1 0 (1::GL.GLfloat)
            arrayPointer VertexArray $= VertexArrayDescriptor 2 Float 0 vBox
            clientState VertexArray $= Enabled
            drawArrays TriangleStrip 0 4
            clientState VertexArray $= Disabled

        c_main drawFrame

