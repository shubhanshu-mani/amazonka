-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.ResourcePath
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.ResourcePath
  ( ResourcePath (..),

    -- * Smart constructor
    mkResourcePath,

    -- * Lenses
    rpComponents,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.WorkDocs.Types.ResourcePathComponent

-- | Describes the path information of a resource.
--
-- /See:/ 'mkResourcePath' smart constructor.
newtype ResourcePath = ResourcePath'
  { components ::
      Lude.Maybe [ResourcePathComponent]
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ResourcePath' with the minimum fields required to make a request.
--
-- * 'components' - The components of the resource path.
mkResourcePath ::
  ResourcePath
mkResourcePath = ResourcePath' {components = Lude.Nothing}

-- | The components of the resource path.
--
-- /Note:/ Consider using 'components' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rpComponents :: Lens.Lens' ResourcePath (Lude.Maybe [ResourcePathComponent])
rpComponents = Lens.lens (components :: ResourcePath -> Lude.Maybe [ResourcePathComponent]) (\s a -> s {components = a} :: ResourcePath)
{-# DEPRECATED rpComponents "Use generic-lens or generic-optics with 'components' instead." #-}

instance Lude.FromJSON ResourcePath where
  parseJSON =
    Lude.withObject
      "ResourcePath"
      ( \x ->
          ResourcePath'
            Lude.<$> (x Lude..:? "Components" Lude..!= Lude.mempty)
      )
