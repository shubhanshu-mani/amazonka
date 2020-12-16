{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.DvbSubDestinationSettings
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.DvbSubDestinationSettings
  ( DvbSubDestinationSettings (..),

    -- * Smart constructor
    mkDvbSubDestinationSettings,

    -- * Lenses
    dsdsBackgroundOpacity,
    dsdsFontOpacity,
    dsdsShadowYOffset,
    dsdsFontResolution,
    dsdsYPosition,
    dsdsBackgroundColor,
    dsdsShadowXOffset,
    dsdsFontSize,
    dsdsXPosition,
    dsdsAlignment,
    dsdsShadowOpacity,
    dsdsTeletextGridControl,
    dsdsOutlineColor,
    dsdsOutlineSize,
    dsdsFont,
    dsdsShadowColor,
    dsdsFontColor,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types.DvbSubDestinationAlignment
import Network.AWS.MediaLive.Types.DvbSubDestinationBackgroundColor
import Network.AWS.MediaLive.Types.DvbSubDestinationFontColor
import Network.AWS.MediaLive.Types.DvbSubDestinationOutlineColor
import Network.AWS.MediaLive.Types.DvbSubDestinationShadowColor
import Network.AWS.MediaLive.Types.DvbSubDestinationTeletextGridControl
import Network.AWS.MediaLive.Types.InputLocation
import qualified Network.AWS.Prelude as Lude

-- | Dvb Sub Destination Settings
--
-- /See:/ 'mkDvbSubDestinationSettings' smart constructor.
data DvbSubDestinationSettings = DvbSubDestinationSettings'
  { -- | Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
    backgroundOpacity :: Lude.Maybe Lude.Natural,
    -- | Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent.  All burn-in and DVB-Sub font settings must match.
    fontOpacity :: Lude.Maybe Lude.Natural,
    -- | Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text.  All burn-in and DVB-Sub font settings must match.
    shadowYOffset :: Lude.Maybe Lude.Int,
    -- | Font resolution in DPI (dots per inch); default is 96 dpi.  All burn-in and DVB-Sub font settings must match.
    fontResolution :: Lude.Maybe Lude.Natural,
    -- | Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit yPosition is provided, the caption will be positioned towards the bottom of the output.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
    yPosition :: Lude.Maybe Lude.Natural,
    -- | Specifies the color of the rectangle behind the captions.  All burn-in and DVB-Sub font settings must match.
    backgroundColor :: Lude.Maybe DvbSubDestinationBackgroundColor,
    -- | Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left.  All burn-in and DVB-Sub font settings must match.
    shadowXOffset :: Lude.Maybe Lude.Int,
    -- | When set to auto fontSize will scale depending on the size of the output.  Giving a positive integer will specify the exact font size in points.  All burn-in and DVB-Sub font settings must match.
    fontSize :: Lude.Maybe Lude.Text,
    -- | Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit xPosition is provided, the horizontal caption position will be determined by the alignment parameter.  This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
    xPosition :: Lude.Maybe Lude.Natural,
    -- | If no explicit xPosition or yPosition is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Selecting "smart" justification will left-justify live subtitles and center-justify pre-recorded subtitles.  This option is not valid for source captions that are STL or 608/embedded.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
    alignment :: Lude.Maybe DvbSubDestinationAlignment,
    -- | Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
    shadowOpacity :: Lude.Maybe Lude.Natural,
    -- | Controls whether a fixed grid size will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
    teletextGridControl :: Lude.Maybe DvbSubDestinationTeletextGridControl,
    -- | Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
    outlineColor :: Lude.Maybe DvbSubDestinationOutlineColor,
    -- | Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
    outlineSize :: Lude.Maybe Lude.Natural,
    -- | External font file used for caption burn-in. File extension must be 'ttf' or 'tte'.  Although the user can select output fonts for many different types of input captions, embedded, STL and teletext sources use a strict grid system. Using external fonts with these caption sources could cause unexpected display of proportional fonts.  All burn-in and DVB-Sub font settings must match.
    font :: Lude.Maybe InputLocation,
    -- | Specifies the color of the shadow cast by the captions.  All burn-in and DVB-Sub font settings must match.
    shadowColor :: Lude.Maybe DvbSubDestinationShadowColor,
    -- | Specifies the color of the burned-in captions.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
    fontColor :: Lude.Maybe DvbSubDestinationFontColor
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DvbSubDestinationSettings' with the minimum fields required to make a request.
--
-- * 'backgroundOpacity' - Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
-- * 'fontOpacity' - Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent.  All burn-in and DVB-Sub font settings must match.
-- * 'shadowYOffset' - Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text.  All burn-in and DVB-Sub font settings must match.
-- * 'fontResolution' - Font resolution in DPI (dots per inch); default is 96 dpi.  All burn-in and DVB-Sub font settings must match.
-- * 'yPosition' - Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit yPosition is provided, the caption will be positioned towards the bottom of the output.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
-- * 'backgroundColor' - Specifies the color of the rectangle behind the captions.  All burn-in and DVB-Sub font settings must match.
-- * 'shadowXOffset' - Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left.  All burn-in and DVB-Sub font settings must match.
-- * 'fontSize' - When set to auto fontSize will scale depending on the size of the output.  Giving a positive integer will specify the exact font size in points.  All burn-in and DVB-Sub font settings must match.
-- * 'xPosition' - Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit xPosition is provided, the horizontal caption position will be determined by the alignment parameter.  This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
-- * 'alignment' - If no explicit xPosition or yPosition is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Selecting "smart" justification will left-justify live subtitles and center-justify pre-recorded subtitles.  This option is not valid for source captions that are STL or 608/embedded.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
-- * 'shadowOpacity' - Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
-- * 'teletextGridControl' - Controls whether a fixed grid size will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
-- * 'outlineColor' - Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
-- * 'outlineSize' - Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
-- * 'font' - External font file used for caption burn-in. File extension must be 'ttf' or 'tte'.  Although the user can select output fonts for many different types of input captions, embedded, STL and teletext sources use a strict grid system. Using external fonts with these caption sources could cause unexpected display of proportional fonts.  All burn-in and DVB-Sub font settings must match.
-- * 'shadowColor' - Specifies the color of the shadow cast by the captions.  All burn-in and DVB-Sub font settings must match.
-- * 'fontColor' - Specifies the color of the burned-in captions.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
mkDvbSubDestinationSettings ::
  DvbSubDestinationSettings
mkDvbSubDestinationSettings =
  DvbSubDestinationSettings'
    { backgroundOpacity = Lude.Nothing,
      fontOpacity = Lude.Nothing,
      shadowYOffset = Lude.Nothing,
      fontResolution = Lude.Nothing,
      yPosition = Lude.Nothing,
      backgroundColor = Lude.Nothing,
      shadowXOffset = Lude.Nothing,
      fontSize = Lude.Nothing,
      xPosition = Lude.Nothing,
      alignment = Lude.Nothing,
      shadowOpacity = Lude.Nothing,
      teletextGridControl = Lude.Nothing,
      outlineColor = Lude.Nothing,
      outlineSize = Lude.Nothing,
      font = Lude.Nothing,
      shadowColor = Lude.Nothing,
      fontColor = Lude.Nothing
    }

-- | Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
--
-- /Note:/ Consider using 'backgroundOpacity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsdsBackgroundOpacity :: Lens.Lens' DvbSubDestinationSettings (Lude.Maybe Lude.Natural)
dsdsBackgroundOpacity = Lens.lens (backgroundOpacity :: DvbSubDestinationSettings -> Lude.Maybe Lude.Natural) (\s a -> s {backgroundOpacity = a} :: DvbSubDestinationSettings)
{-# DEPRECATED dsdsBackgroundOpacity "Use generic-lens or generic-optics with 'backgroundOpacity' instead." #-}

-- | Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent.  All burn-in and DVB-Sub font settings must match.
--
-- /Note:/ Consider using 'fontOpacity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsdsFontOpacity :: Lens.Lens' DvbSubDestinationSettings (Lude.Maybe Lude.Natural)
dsdsFontOpacity = Lens.lens (fontOpacity :: DvbSubDestinationSettings -> Lude.Maybe Lude.Natural) (\s a -> s {fontOpacity = a} :: DvbSubDestinationSettings)
{-# DEPRECATED dsdsFontOpacity "Use generic-lens or generic-optics with 'fontOpacity' instead." #-}

-- | Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text.  All burn-in and DVB-Sub font settings must match.
--
-- /Note:/ Consider using 'shadowYOffset' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsdsShadowYOffset :: Lens.Lens' DvbSubDestinationSettings (Lude.Maybe Lude.Int)
dsdsShadowYOffset = Lens.lens (shadowYOffset :: DvbSubDestinationSettings -> Lude.Maybe Lude.Int) (\s a -> s {shadowYOffset = a} :: DvbSubDestinationSettings)
{-# DEPRECATED dsdsShadowYOffset "Use generic-lens or generic-optics with 'shadowYOffset' instead." #-}

-- | Font resolution in DPI (dots per inch); default is 96 dpi.  All burn-in and DVB-Sub font settings must match.
--
-- /Note:/ Consider using 'fontResolution' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsdsFontResolution :: Lens.Lens' DvbSubDestinationSettings (Lude.Maybe Lude.Natural)
dsdsFontResolution = Lens.lens (fontResolution :: DvbSubDestinationSettings -> Lude.Maybe Lude.Natural) (\s a -> s {fontResolution = a} :: DvbSubDestinationSettings)
{-# DEPRECATED dsdsFontResolution "Use generic-lens or generic-optics with 'fontResolution' instead." #-}

-- | Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit yPosition is provided, the caption will be positioned towards the bottom of the output.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
--
-- /Note:/ Consider using 'yPosition' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsdsYPosition :: Lens.Lens' DvbSubDestinationSettings (Lude.Maybe Lude.Natural)
dsdsYPosition = Lens.lens (yPosition :: DvbSubDestinationSettings -> Lude.Maybe Lude.Natural) (\s a -> s {yPosition = a} :: DvbSubDestinationSettings)
{-# DEPRECATED dsdsYPosition "Use generic-lens or generic-optics with 'yPosition' instead." #-}

-- | Specifies the color of the rectangle behind the captions.  All burn-in and DVB-Sub font settings must match.
--
-- /Note:/ Consider using 'backgroundColor' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsdsBackgroundColor :: Lens.Lens' DvbSubDestinationSettings (Lude.Maybe DvbSubDestinationBackgroundColor)
dsdsBackgroundColor = Lens.lens (backgroundColor :: DvbSubDestinationSettings -> Lude.Maybe DvbSubDestinationBackgroundColor) (\s a -> s {backgroundColor = a} :: DvbSubDestinationSettings)
{-# DEPRECATED dsdsBackgroundColor "Use generic-lens or generic-optics with 'backgroundColor' instead." #-}

-- | Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left.  All burn-in and DVB-Sub font settings must match.
--
-- /Note:/ Consider using 'shadowXOffset' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsdsShadowXOffset :: Lens.Lens' DvbSubDestinationSettings (Lude.Maybe Lude.Int)
dsdsShadowXOffset = Lens.lens (shadowXOffset :: DvbSubDestinationSettings -> Lude.Maybe Lude.Int) (\s a -> s {shadowXOffset = a} :: DvbSubDestinationSettings)
{-# DEPRECATED dsdsShadowXOffset "Use generic-lens or generic-optics with 'shadowXOffset' instead." #-}

-- | When set to auto fontSize will scale depending on the size of the output.  Giving a positive integer will specify the exact font size in points.  All burn-in and DVB-Sub font settings must match.
--
-- /Note:/ Consider using 'fontSize' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsdsFontSize :: Lens.Lens' DvbSubDestinationSettings (Lude.Maybe Lude.Text)
dsdsFontSize = Lens.lens (fontSize :: DvbSubDestinationSettings -> Lude.Maybe Lude.Text) (\s a -> s {fontSize = a} :: DvbSubDestinationSettings)
{-# DEPRECATED dsdsFontSize "Use generic-lens or generic-optics with 'fontSize' instead." #-}

-- | Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit xPosition is provided, the horizontal caption position will be determined by the alignment parameter.  This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
--
-- /Note:/ Consider using 'xPosition' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsdsXPosition :: Lens.Lens' DvbSubDestinationSettings (Lude.Maybe Lude.Natural)
dsdsXPosition = Lens.lens (xPosition :: DvbSubDestinationSettings -> Lude.Maybe Lude.Natural) (\s a -> s {xPosition = a} :: DvbSubDestinationSettings)
{-# DEPRECATED dsdsXPosition "Use generic-lens or generic-optics with 'xPosition' instead." #-}

-- | If no explicit xPosition or yPosition is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Selecting "smart" justification will left-justify live subtitles and center-justify pre-recorded subtitles.  This option is not valid for source captions that are STL or 608/embedded.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
--
-- /Note:/ Consider using 'alignment' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsdsAlignment :: Lens.Lens' DvbSubDestinationSettings (Lude.Maybe DvbSubDestinationAlignment)
dsdsAlignment = Lens.lens (alignment :: DvbSubDestinationSettings -> Lude.Maybe DvbSubDestinationAlignment) (\s a -> s {alignment = a} :: DvbSubDestinationSettings)
{-# DEPRECATED dsdsAlignment "Use generic-lens or generic-optics with 'alignment' instead." #-}

-- | Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
--
-- /Note:/ Consider using 'shadowOpacity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsdsShadowOpacity :: Lens.Lens' DvbSubDestinationSettings (Lude.Maybe Lude.Natural)
dsdsShadowOpacity = Lens.lens (shadowOpacity :: DvbSubDestinationSettings -> Lude.Maybe Lude.Natural) (\s a -> s {shadowOpacity = a} :: DvbSubDestinationSettings)
{-# DEPRECATED dsdsShadowOpacity "Use generic-lens or generic-optics with 'shadowOpacity' instead." #-}

-- | Controls whether a fixed grid size will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
--
-- /Note:/ Consider using 'teletextGridControl' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsdsTeletextGridControl :: Lens.Lens' DvbSubDestinationSettings (Lude.Maybe DvbSubDestinationTeletextGridControl)
dsdsTeletextGridControl = Lens.lens (teletextGridControl :: DvbSubDestinationSettings -> Lude.Maybe DvbSubDestinationTeletextGridControl) (\s a -> s {teletextGridControl = a} :: DvbSubDestinationSettings)
{-# DEPRECATED dsdsTeletextGridControl "Use generic-lens or generic-optics with 'teletextGridControl' instead." #-}

-- | Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
--
-- /Note:/ Consider using 'outlineColor' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsdsOutlineColor :: Lens.Lens' DvbSubDestinationSettings (Lude.Maybe DvbSubDestinationOutlineColor)
dsdsOutlineColor = Lens.lens (outlineColor :: DvbSubDestinationSettings -> Lude.Maybe DvbSubDestinationOutlineColor) (\s a -> s {outlineColor = a} :: DvbSubDestinationSettings)
{-# DEPRECATED dsdsOutlineColor "Use generic-lens or generic-optics with 'outlineColor' instead." #-}

-- | Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
--
-- /Note:/ Consider using 'outlineSize' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsdsOutlineSize :: Lens.Lens' DvbSubDestinationSettings (Lude.Maybe Lude.Natural)
dsdsOutlineSize = Lens.lens (outlineSize :: DvbSubDestinationSettings -> Lude.Maybe Lude.Natural) (\s a -> s {outlineSize = a} :: DvbSubDestinationSettings)
{-# DEPRECATED dsdsOutlineSize "Use generic-lens or generic-optics with 'outlineSize' instead." #-}

-- | External font file used for caption burn-in. File extension must be 'ttf' or 'tte'.  Although the user can select output fonts for many different types of input captions, embedded, STL and teletext sources use a strict grid system. Using external fonts with these caption sources could cause unexpected display of proportional fonts.  All burn-in and DVB-Sub font settings must match.
--
-- /Note:/ Consider using 'font' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsdsFont :: Lens.Lens' DvbSubDestinationSettings (Lude.Maybe InputLocation)
dsdsFont = Lens.lens (font :: DvbSubDestinationSettings -> Lude.Maybe InputLocation) (\s a -> s {font = a} :: DvbSubDestinationSettings)
{-# DEPRECATED dsdsFont "Use generic-lens or generic-optics with 'font' instead." #-}

-- | Specifies the color of the shadow cast by the captions.  All burn-in and DVB-Sub font settings must match.
--
-- /Note:/ Consider using 'shadowColor' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsdsShadowColor :: Lens.Lens' DvbSubDestinationSettings (Lude.Maybe DvbSubDestinationShadowColor)
dsdsShadowColor = Lens.lens (shadowColor :: DvbSubDestinationSettings -> Lude.Maybe DvbSubDestinationShadowColor) (\s a -> s {shadowColor = a} :: DvbSubDestinationSettings)
{-# DEPRECATED dsdsShadowColor "Use generic-lens or generic-optics with 'shadowColor' instead." #-}

-- | Specifies the color of the burned-in captions.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
--
-- /Note:/ Consider using 'fontColor' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsdsFontColor :: Lens.Lens' DvbSubDestinationSettings (Lude.Maybe DvbSubDestinationFontColor)
dsdsFontColor = Lens.lens (fontColor :: DvbSubDestinationSettings -> Lude.Maybe DvbSubDestinationFontColor) (\s a -> s {fontColor = a} :: DvbSubDestinationSettings)
{-# DEPRECATED dsdsFontColor "Use generic-lens or generic-optics with 'fontColor' instead." #-}

instance Lude.FromJSON DvbSubDestinationSettings where
  parseJSON =
    Lude.withObject
      "DvbSubDestinationSettings"
      ( \x ->
          DvbSubDestinationSettings'
            Lude.<$> (x Lude..:? "backgroundOpacity")
            Lude.<*> (x Lude..:? "fontOpacity")
            Lude.<*> (x Lude..:? "shadowYOffset")
            Lude.<*> (x Lude..:? "fontResolution")
            Lude.<*> (x Lude..:? "yPosition")
            Lude.<*> (x Lude..:? "backgroundColor")
            Lude.<*> (x Lude..:? "shadowXOffset")
            Lude.<*> (x Lude..:? "fontSize")
            Lude.<*> (x Lude..:? "xPosition")
            Lude.<*> (x Lude..:? "alignment")
            Lude.<*> (x Lude..:? "shadowOpacity")
            Lude.<*> (x Lude..:? "teletextGridControl")
            Lude.<*> (x Lude..:? "outlineColor")
            Lude.<*> (x Lude..:? "outlineSize")
            Lude.<*> (x Lude..:? "font")
            Lude.<*> (x Lude..:? "shadowColor")
            Lude.<*> (x Lude..:? "fontColor")
      )

instance Lude.ToJSON DvbSubDestinationSettings where
  toJSON DvbSubDestinationSettings' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("backgroundOpacity" Lude..=) Lude.<$> backgroundOpacity,
            ("fontOpacity" Lude..=) Lude.<$> fontOpacity,
            ("shadowYOffset" Lude..=) Lude.<$> shadowYOffset,
            ("fontResolution" Lude..=) Lude.<$> fontResolution,
            ("yPosition" Lude..=) Lude.<$> yPosition,
            ("backgroundColor" Lude..=) Lude.<$> backgroundColor,
            ("shadowXOffset" Lude..=) Lude.<$> shadowXOffset,
            ("fontSize" Lude..=) Lude.<$> fontSize,
            ("xPosition" Lude..=) Lude.<$> xPosition,
            ("alignment" Lude..=) Lude.<$> alignment,
            ("shadowOpacity" Lude..=) Lude.<$> shadowOpacity,
            ("teletextGridControl" Lude..=) Lude.<$> teletextGridControl,
            ("outlineColor" Lude..=) Lude.<$> outlineColor,
            ("outlineSize" Lude..=) Lude.<$> outlineSize,
            ("font" Lude..=) Lude.<$> font,
            ("shadowColor" Lude..=) Lude.<$> shadowColor,
            ("fontColor" Lude..=) Lude.<$> fontColor
          ]
      )