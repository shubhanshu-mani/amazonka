-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.ChannelEgressEndpoint
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ChannelEgressEndpoint
  ( ChannelEgressEndpoint (..),

    -- * Smart constructor
    mkChannelEgressEndpoint,

    -- * Lenses
    ceeSourceIP,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Placeholder documentation for ChannelEgressEndpoint
--
-- /See:/ 'mkChannelEgressEndpoint' smart constructor.
newtype ChannelEgressEndpoint = ChannelEgressEndpoint'
  { sourceIP ::
      Lude.Maybe Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ChannelEgressEndpoint' with the minimum fields required to make a request.
--
-- * 'sourceIP' - Public IP of where a channel's output comes from
mkChannelEgressEndpoint ::
  ChannelEgressEndpoint
mkChannelEgressEndpoint =
  ChannelEgressEndpoint' {sourceIP = Lude.Nothing}

-- | Public IP of where a channel's output comes from
--
-- /Note:/ Consider using 'sourceIP' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ceeSourceIP :: Lens.Lens' ChannelEgressEndpoint (Lude.Maybe Lude.Text)
ceeSourceIP = Lens.lens (sourceIP :: ChannelEgressEndpoint -> Lude.Maybe Lude.Text) (\s a -> s {sourceIP = a} :: ChannelEgressEndpoint)
{-# DEPRECATED ceeSourceIP "Use generic-lens or generic-optics with 'sourceIP' instead." #-}

instance Lude.FromJSON ChannelEgressEndpoint where
  parseJSON =
    Lude.withObject
      "ChannelEgressEndpoint"
      (\x -> ChannelEgressEndpoint' Lude.<$> (x Lude..:? "sourceIp"))
