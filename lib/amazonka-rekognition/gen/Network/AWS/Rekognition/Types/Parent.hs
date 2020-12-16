{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.Parent
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.Parent
  ( Parent (..),

    -- * Smart constructor
    mkParent,

    -- * Lenses
    pName,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | A parent label for a label. A label can have 0, 1, or more parents.
--
-- /See:/ 'mkParent' smart constructor.
newtype Parent = Parent'
  { -- | The name of the parent label.
    name :: Lude.Maybe Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'Parent' with the minimum fields required to make a request.
--
-- * 'name' - The name of the parent label.
mkParent ::
  Parent
mkParent = Parent' {name = Lude.Nothing}

-- | The name of the parent label.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pName :: Lens.Lens' Parent (Lude.Maybe Lude.Text)
pName = Lens.lens (name :: Parent -> Lude.Maybe Lude.Text) (\s a -> s {name = a} :: Parent)
{-# DEPRECATED pName "Use generic-lens or generic-optics with 'name' instead." #-}

instance Lude.FromJSON Parent where
  parseJSON =
    Lude.withObject
      "Parent"
      (\x -> Parent' Lude.<$> (x Lude..:? "Name"))