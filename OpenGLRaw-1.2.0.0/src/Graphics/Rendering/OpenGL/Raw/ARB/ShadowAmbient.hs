--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.ARB.ShadowAmbient
-- Copyright   :  (c) Sven Panne 2009
-- License     :  BSD-style (see the file LICENSE)
--
-- Maintainer  :  sven.panne@aedion.de
-- Stability   :  stable
-- Portability :  portable
--
-- All tokens from the ARB_shadow_ambient extension, see
-- <http://www.opengl.org/registry/specs/ARB/shadow_ambient.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.ARB.ShadowAmbient (
   -- * Tokens
   gl_TEXTURE_COMPARE_FAIL_VALUE
) where

import Graphics.Rendering.OpenGL.Raw.Core32

gl_TEXTURE_COMPARE_FAIL_VALUE :: GLenum
gl_TEXTURE_COMPARE_FAIL_VALUE = 0x80BF
