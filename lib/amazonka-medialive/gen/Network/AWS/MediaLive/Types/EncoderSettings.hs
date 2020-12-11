-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.EncoderSettings
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.EncoderSettings
  ( EncoderSettings (..),

    -- * Smart constructor
    mkEncoderSettings,

    -- * Lenses
    esCaptionDescriptions,
    esAvailConfiguration,
    esFeatureActivations,
    esNielsenConfiguration,
    esAvailBlanking,
    esGlobalConfiguration,
    esBlackoutSlate,
    esVideoDescriptions,
    esAudioDescriptions,
    esOutputGroups,
    esTimecodeConfig,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types.AudioDescription
import Network.AWS.MediaLive.Types.AvailBlanking
import Network.AWS.MediaLive.Types.AvailConfiguration
import Network.AWS.MediaLive.Types.BlackoutSlate
import Network.AWS.MediaLive.Types.CaptionDescription
import Network.AWS.MediaLive.Types.FeatureActivations
import Network.AWS.MediaLive.Types.GlobalConfiguration
import Network.AWS.MediaLive.Types.NielsenConfiguration
import Network.AWS.MediaLive.Types.OutputGroup
import Network.AWS.MediaLive.Types.TimecodeConfig
import Network.AWS.MediaLive.Types.VideoDescription
import qualified Network.AWS.Prelude as Lude

-- | Encoder Settings
--
-- /See:/ 'mkEncoderSettings' smart constructor.
data EncoderSettings = EncoderSettings'
  { captionDescriptions ::
      Lude.Maybe [CaptionDescription],
    availConfiguration :: Lude.Maybe AvailConfiguration,
    featureActivations :: Lude.Maybe FeatureActivations,
    nielsenConfiguration :: Lude.Maybe NielsenConfiguration,
    availBlanking :: Lude.Maybe AvailBlanking,
    globalConfiguration :: Lude.Maybe GlobalConfiguration,
    blackoutSlate :: Lude.Maybe BlackoutSlate,
    videoDescriptions :: [VideoDescription],
    audioDescriptions :: [AudioDescription],
    outputGroups :: [OutputGroup],
    timecodeConfig :: TimecodeConfig
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'EncoderSettings' with the minimum fields required to make a request.
--
-- * 'audioDescriptions' - Undocumented field.
-- * 'availBlanking' - Settings for ad avail blanking.
-- * 'availConfiguration' - Event-wide configuration settings for ad avail insertion.
-- * 'blackoutSlate' - Settings for blackout slate.
-- * 'captionDescriptions' - Settings for caption decriptions
-- * 'featureActivations' - Feature Activations
-- * 'globalConfiguration' - Configuration settings that apply to the event as a whole.
-- * 'nielsenConfiguration' - Nielsen configuration settings.
-- * 'outputGroups' - Undocumented field.
-- * 'timecodeConfig' - Contains settings used to acquire and adjust timecode information from inputs.
-- * 'videoDescriptions' - Undocumented field.
mkEncoderSettings ::
  -- | 'timecodeConfig'
  TimecodeConfig ->
  EncoderSettings
mkEncoderSettings pTimecodeConfig_ =
  EncoderSettings'
    { captionDescriptions = Lude.Nothing,
      availConfiguration = Lude.Nothing,
      featureActivations = Lude.Nothing,
      nielsenConfiguration = Lude.Nothing,
      availBlanking = Lude.Nothing,
      globalConfiguration = Lude.Nothing,
      blackoutSlate = Lude.Nothing,
      videoDescriptions = Lude.mempty,
      audioDescriptions = Lude.mempty,
      outputGroups = Lude.mempty,
      timecodeConfig = pTimecodeConfig_
    }

-- | Settings for caption decriptions
--
-- /Note:/ Consider using 'captionDescriptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esCaptionDescriptions :: Lens.Lens' EncoderSettings (Lude.Maybe [CaptionDescription])
esCaptionDescriptions = Lens.lens (captionDescriptions :: EncoderSettings -> Lude.Maybe [CaptionDescription]) (\s a -> s {captionDescriptions = a} :: EncoderSettings)
{-# DEPRECATED esCaptionDescriptions "Use generic-lens or generic-optics with 'captionDescriptions' instead." #-}

-- | Event-wide configuration settings for ad avail insertion.
--
-- /Note:/ Consider using 'availConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esAvailConfiguration :: Lens.Lens' EncoderSettings (Lude.Maybe AvailConfiguration)
esAvailConfiguration = Lens.lens (availConfiguration :: EncoderSettings -> Lude.Maybe AvailConfiguration) (\s a -> s {availConfiguration = a} :: EncoderSettings)
{-# DEPRECATED esAvailConfiguration "Use generic-lens or generic-optics with 'availConfiguration' instead." #-}

-- | Feature Activations
--
-- /Note:/ Consider using 'featureActivations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esFeatureActivations :: Lens.Lens' EncoderSettings (Lude.Maybe FeatureActivations)
esFeatureActivations = Lens.lens (featureActivations :: EncoderSettings -> Lude.Maybe FeatureActivations) (\s a -> s {featureActivations = a} :: EncoderSettings)
{-# DEPRECATED esFeatureActivations "Use generic-lens or generic-optics with 'featureActivations' instead." #-}

-- | Nielsen configuration settings.
--
-- /Note:/ Consider using 'nielsenConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esNielsenConfiguration :: Lens.Lens' EncoderSettings (Lude.Maybe NielsenConfiguration)
esNielsenConfiguration = Lens.lens (nielsenConfiguration :: EncoderSettings -> Lude.Maybe NielsenConfiguration) (\s a -> s {nielsenConfiguration = a} :: EncoderSettings)
{-# DEPRECATED esNielsenConfiguration "Use generic-lens or generic-optics with 'nielsenConfiguration' instead." #-}

-- | Settings for ad avail blanking.
--
-- /Note:/ Consider using 'availBlanking' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esAvailBlanking :: Lens.Lens' EncoderSettings (Lude.Maybe AvailBlanking)
esAvailBlanking = Lens.lens (availBlanking :: EncoderSettings -> Lude.Maybe AvailBlanking) (\s a -> s {availBlanking = a} :: EncoderSettings)
{-# DEPRECATED esAvailBlanking "Use generic-lens or generic-optics with 'availBlanking' instead." #-}

-- | Configuration settings that apply to the event as a whole.
--
-- /Note:/ Consider using 'globalConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esGlobalConfiguration :: Lens.Lens' EncoderSettings (Lude.Maybe GlobalConfiguration)
esGlobalConfiguration = Lens.lens (globalConfiguration :: EncoderSettings -> Lude.Maybe GlobalConfiguration) (\s a -> s {globalConfiguration = a} :: EncoderSettings)
{-# DEPRECATED esGlobalConfiguration "Use generic-lens or generic-optics with 'globalConfiguration' instead." #-}

-- | Settings for blackout slate.
--
-- /Note:/ Consider using 'blackoutSlate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esBlackoutSlate :: Lens.Lens' EncoderSettings (Lude.Maybe BlackoutSlate)
esBlackoutSlate = Lens.lens (blackoutSlate :: EncoderSettings -> Lude.Maybe BlackoutSlate) (\s a -> s {blackoutSlate = a} :: EncoderSettings)
{-# DEPRECATED esBlackoutSlate "Use generic-lens or generic-optics with 'blackoutSlate' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'videoDescriptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esVideoDescriptions :: Lens.Lens' EncoderSettings [VideoDescription]
esVideoDescriptions = Lens.lens (videoDescriptions :: EncoderSettings -> [VideoDescription]) (\s a -> s {videoDescriptions = a} :: EncoderSettings)
{-# DEPRECATED esVideoDescriptions "Use generic-lens or generic-optics with 'videoDescriptions' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'audioDescriptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esAudioDescriptions :: Lens.Lens' EncoderSettings [AudioDescription]
esAudioDescriptions = Lens.lens (audioDescriptions :: EncoderSettings -> [AudioDescription]) (\s a -> s {audioDescriptions = a} :: EncoderSettings)
{-# DEPRECATED esAudioDescriptions "Use generic-lens or generic-optics with 'audioDescriptions' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'outputGroups' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esOutputGroups :: Lens.Lens' EncoderSettings [OutputGroup]
esOutputGroups = Lens.lens (outputGroups :: EncoderSettings -> [OutputGroup]) (\s a -> s {outputGroups = a} :: EncoderSettings)
{-# DEPRECATED esOutputGroups "Use generic-lens or generic-optics with 'outputGroups' instead." #-}

-- | Contains settings used to acquire and adjust timecode information from inputs.
--
-- /Note:/ Consider using 'timecodeConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esTimecodeConfig :: Lens.Lens' EncoderSettings TimecodeConfig
esTimecodeConfig = Lens.lens (timecodeConfig :: EncoderSettings -> TimecodeConfig) (\s a -> s {timecodeConfig = a} :: EncoderSettings)
{-# DEPRECATED esTimecodeConfig "Use generic-lens or generic-optics with 'timecodeConfig' instead." #-}

instance Lude.FromJSON EncoderSettings where
  parseJSON =
    Lude.withObject
      "EncoderSettings"
      ( \x ->
          EncoderSettings'
            Lude.<$> (x Lude..:? "captionDescriptions" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..:? "availConfiguration")
            Lude.<*> (x Lude..:? "featureActivations")
            Lude.<*> (x Lude..:? "nielsenConfiguration")
            Lude.<*> (x Lude..:? "availBlanking")
            Lude.<*> (x Lude..:? "globalConfiguration")
            Lude.<*> (x Lude..:? "blackoutSlate")
            Lude.<*> (x Lude..:? "videoDescriptions" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..:? "audioDescriptions" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..:? "outputGroups" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..: "timecodeConfig")
      )

instance Lude.ToJSON EncoderSettings where
  toJSON EncoderSettings' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("captionDescriptions" Lude..=) Lude.<$> captionDescriptions,
            ("availConfiguration" Lude..=) Lude.<$> availConfiguration,
            ("featureActivations" Lude..=) Lude.<$> featureActivations,
            ("nielsenConfiguration" Lude..=) Lude.<$> nielsenConfiguration,
            ("availBlanking" Lude..=) Lude.<$> availBlanking,
            ("globalConfiguration" Lude..=) Lude.<$> globalConfiguration,
            ("blackoutSlate" Lude..=) Lude.<$> blackoutSlate,
            Lude.Just ("videoDescriptions" Lude..= videoDescriptions),
            Lude.Just ("audioDescriptions" Lude..= audioDescriptions),
            Lude.Just ("outputGroups" Lude..= outputGroups),
            Lude.Just ("timecodeConfig" Lude..= timecodeConfig)
          ]
      )
