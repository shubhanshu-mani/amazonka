{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.PortRange
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.PortRange
  ( PortRange (..),

    -- * Smart constructor
    mkPortRange,

    -- * Lenses
    prMinRange,
    prMaxRange,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | A list of port ranges that are permitted to allow inbound traffic from all public IP addresses. To specify a single port, use the same value for @MinRange@ and @MaxRange@ .
--
-- /See:/ 'mkPortRange' smart constructor.
data PortRange = PortRange'
  { -- | The smallest port number in a specified range of port numbers.
    minRange :: Lude.Int,
    -- | The smallest port number in a specified range of port numbers.
    maxRange :: Lude.Maybe Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'PortRange' with the minimum fields required to make a request.
--
-- * 'minRange' - The smallest port number in a specified range of port numbers.
-- * 'maxRange' - The smallest port number in a specified range of port numbers.
mkPortRange ::
  -- | 'minRange'
  Lude.Int ->
  PortRange
mkPortRange pMinRange_ =
  PortRange' {minRange = pMinRange_, maxRange = Lude.Nothing}

-- | The smallest port number in a specified range of port numbers.
--
-- /Note:/ Consider using 'minRange' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prMinRange :: Lens.Lens' PortRange Lude.Int
prMinRange = Lens.lens (minRange :: PortRange -> Lude.Int) (\s a -> s {minRange = a} :: PortRange)
{-# DEPRECATED prMinRange "Use generic-lens or generic-optics with 'minRange' instead." #-}

-- | The smallest port number in a specified range of port numbers.
--
-- /Note:/ Consider using 'maxRange' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prMaxRange :: Lens.Lens' PortRange (Lude.Maybe Lude.Int)
prMaxRange = Lens.lens (maxRange :: PortRange -> Lude.Maybe Lude.Int) (\s a -> s {maxRange = a} :: PortRange)
{-# DEPRECATED prMaxRange "Use generic-lens or generic-optics with 'maxRange' instead." #-}

instance Lude.FromJSON PortRange where
  parseJSON =
    Lude.withObject
      "PortRange"
      ( \x ->
          PortRange'
            Lude.<$> (x Lude..: "MinRange") Lude.<*> (x Lude..:? "MaxRange")
      )

instance Lude.ToJSON PortRange where
  toJSON PortRange' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("MinRange" Lude..= minRange),
            ("MaxRange" Lude..=) Lude.<$> maxRange
          ]
      )