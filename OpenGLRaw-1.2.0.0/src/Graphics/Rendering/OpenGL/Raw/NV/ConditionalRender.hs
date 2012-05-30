--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.OpenGL.Raw.NV.ConditionalRender
-- Copyright   :  (c) Sven Panne 2009
-- License     :  BSD-style (see the file LICENSE)
--
-- Maintainer  :  sven.panne@aedion.de
-- Stability   :  stable
-- Portability :  portable
--
-- All raw functions and tokens from the NV_conditional_render extension, see
-- <http://www.opengl.org/registry/specs/NV/conditional_render.txt>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.OpenGL.Raw.NV.ConditionalRender (
   -- * Functions
   glBeginConditionalRender,
   glEndConditionalRender,
   -- * Tokens
   gl_QUERY_WAIT,
   gl_QUERY_NO_WAIT,
   gl_QUERY_BY_REGION_WAIT,
   gl_QUERY_BY_REGION_NO_WAIT
) where

import Graphics.Rendering.OpenGL.Raw.Core32
