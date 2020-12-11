-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.BurninSubtitleFontColor
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.BurninSubtitleFontColor
  ( BurninSubtitleFontColor
      ( BurninSubtitleFontColor',
        BSFCBlack,
        BSFCBlue,
        BSFCGreen,
        BSFCRed,
        BSFCWhite,
        BSFCYellow
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | Specifies the color of the burned-in captions. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
newtype BurninSubtitleFontColor = BurninSubtitleFontColor' Lude.Text
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype
    ( Lude.Hashable,
      Lude.NFData,
      Lude.ToJSONKey,
      Lude.FromJSONKey,
      Lude.ToJSON,
      Lude.FromJSON,
      Lude.ToXML,
      Lude.FromXML,
      Lude.ToText,
      Lude.FromText,
      Lude.ToByteString,
      Lude.ToQuery,
      Lude.ToHeader
    )

pattern BSFCBlack :: BurninSubtitleFontColor
pattern BSFCBlack = BurninSubtitleFontColor' "BLACK"

pattern BSFCBlue :: BurninSubtitleFontColor
pattern BSFCBlue = BurninSubtitleFontColor' "BLUE"

pattern BSFCGreen :: BurninSubtitleFontColor
pattern BSFCGreen = BurninSubtitleFontColor' "GREEN"

pattern BSFCRed :: BurninSubtitleFontColor
pattern BSFCRed = BurninSubtitleFontColor' "RED"

pattern BSFCWhite :: BurninSubtitleFontColor
pattern BSFCWhite = BurninSubtitleFontColor' "WHITE"

pattern BSFCYellow :: BurninSubtitleFontColor
pattern BSFCYellow = BurninSubtitleFontColor' "YELLOW"

{-# COMPLETE
  BSFCBlack,
  BSFCBlue,
  BSFCGreen,
  BSFCRed,
  BSFCWhite,
  BSFCYellow,
  BurninSubtitleFontColor'
  #-}
