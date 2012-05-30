{-# LANGUAGE ForeignFunctionInterface, CPP #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.EXT.SceneMarker
-- Copyright   :  (c) Sven Panne 2009
-- License     :  BSD-style (see the file LICENSE)
--
-- Maintainer  :  sven.panne@aedion.de
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions from the EXT_scene_marker extension, see
-- <http://www.opengl.org/registry/specs/EXT/scene_marker.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.EXT.SceneMarker (
   -- * Functions
   glBeginScene,
   glEndScene
) where

import Graphics.Rendering.OpenGL.Raw.Extensions

#include "HsOpenGLRaw.h"

extensionNameString :: String
extensionNameString = "GL_EXT_scene_marker"

EXTENSION_ENTRY(glBeginScene,IO ())
EXTENSION_ENTRY(glEndScene,IO ())
