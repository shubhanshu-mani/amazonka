{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputChannelLevel
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputChannelLevel
  ( InputChannelLevel (..),

    -- * Smart constructor
    mkInputChannelLevel,

    -- * Lenses
    iclGain,
    iclInputChannel,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Input Channel Level
--
-- /See:/ 'mkInputChannelLevel' smart constructor.
data InputChannelLevel = InputChannelLevel'
  { -- | Remixing value. Units are in dB and acceptable values are within the range from -60 (mute) and 6 dB.
    gain :: Lude.Int,
    -- | The index of the input channel used as a source.
    inputChannel :: Lude.Natural
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'InputChannelLevel' with the minimum fields required to make a request.
--
-- * 'gain' - Remixing value. Units are in dB and acceptable values are within the range from -60 (mute) and 6 dB.
-- * 'inputChannel' - The index of the input channel used as a source.
mkInputChannelLevel ::
  -- | 'gain'
  Lude.Int ->
  -- | 'inputChannel'
  Lude.Natural ->
  InputChannelLevel
mkInputChannelLevel pGain_ pInputChannel_ =
  InputChannelLevel' {gain = pGain_, inputChannel = pInputChannel_}

-- | Remixing value. Units are in dB and acceptable values are within the range from -60 (mute) and 6 dB.
--
-- /Note:/ Consider using 'gain' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iclGain :: Lens.Lens' InputChannelLevel Lude.Int
iclGain = Lens.lens (gain :: InputChannelLevel -> Lude.Int) (\s a -> s {gain = a} :: InputChannelLevel)
{-# DEPRECATED iclGain "Use generic-lens or generic-optics with 'gain' instead." #-}

-- | The index of the input channel used as a source.
--
-- /Note:/ Consider using 'inputChannel' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iclInputChannel :: Lens.Lens' InputChannelLevel Lude.Natural
iclInputChannel = Lens.lens (inputChannel :: InputChannelLevel -> Lude.Natural) (\s a -> s {inputChannel = a} :: InputChannelLevel)
{-# DEPRECATED iclInputChannel "Use generic-lens or generic-optics with 'inputChannel' instead." #-}

instance Lude.FromJSON InputChannelLevel where
  parseJSON =
    Lude.withObject
      "InputChannelLevel"
      ( \x ->
          InputChannelLevel'
            Lude.<$> (x Lude..: "gain") Lude.<*> (x Lude..: "inputChannel")
      )

instance Lude.ToJSON InputChannelLevel where
  toJSON InputChannelLevel' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("gain" Lude..= gain),
            Lude.Just ("inputChannel" Lude..= inputChannel)
          ]
      )