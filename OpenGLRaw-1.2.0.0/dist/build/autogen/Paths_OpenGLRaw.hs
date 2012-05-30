module Paths_OpenGLRaw (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch


version :: Version
version = Version {versionBranch = [1,2,0,0], versionTags = []}
bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/Users/jonathan.fischoff/Library/Haskell/ghc-7.5.20120528/lib/OpenGLRaw-1.2.0.0/bin"
libdir     = "/Users/jonathan.fischoff/Library/Haskell/ghc-7.5.20120528/lib/OpenGLRaw-1.2.0.0/lib"
datadir    = "/Users/jonathan.fischoff/Library/Haskell/ghc-7.5.20120528/lib/OpenGLRaw-1.2.0.0/share"
libexecdir = "/Users/jonathan.fischoff/Library/Haskell/ghc-7.5.20120528/lib/OpenGLRaw-1.2.0.0/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catchIO (getEnv "OpenGLRaw_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "OpenGLRaw_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "OpenGLRaw_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "OpenGLRaw_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
