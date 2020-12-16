{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Eac3DynamicRangeCompressionLine
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3DynamicRangeCompressionLine
  ( Eac3DynamicRangeCompressionLine
      ( Eac3DynamicRangeCompressionLine',
        EDRCLNone,
        EDRCLFilmStandard,
        EDRCLFilmLight,
        EDRCLMusicStandard,
        EDRCLMusicLight,
        EDRCLSpeech
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | Specify the absolute peak level for a signal with dynamic range compression.
newtype Eac3DynamicRangeCompressionLine = Eac3DynamicRangeCompressionLine' Lude.Text
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

pattern EDRCLNone :: Eac3DynamicRangeCompressionLine
pattern EDRCLNone = Eac3DynamicRangeCompressionLine' "NONE"

pattern EDRCLFilmStandard :: Eac3DynamicRangeCompressionLine
pattern EDRCLFilmStandard = Eac3DynamicRangeCompressionLine' "FILM_STANDARD"

pattern EDRCLFilmLight :: Eac3DynamicRangeCompressionLine
pattern EDRCLFilmLight = Eac3DynamicRangeCompressionLine' "FILM_LIGHT"

pattern EDRCLMusicStandard :: Eac3DynamicRangeCompressionLine
pattern EDRCLMusicStandard = Eac3DynamicRangeCompressionLine' "MUSIC_STANDARD"

pattern EDRCLMusicLight :: Eac3DynamicRangeCompressionLine
pattern EDRCLMusicLight = Eac3DynamicRangeCompressionLine' "MUSIC_LIGHT"

pattern EDRCLSpeech :: Eac3DynamicRangeCompressionLine
pattern EDRCLSpeech = Eac3DynamicRangeCompressionLine' "SPEECH"

{-# COMPLETE
  EDRCLNone,
  EDRCLFilmStandard,
  EDRCLFilmLight,
  EDRCLMusicStandard,
  EDRCLMusicLight,
  EDRCLSpeech,
  Eac3DynamicRangeCompressionLine'
  #-}