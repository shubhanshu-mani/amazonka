{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.BurninSubtitleShadowColor
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.BurninSubtitleShadowColor
  ( BurninSubtitleShadowColor
      ( BurninSubtitleShadowColor',
        BSSCNone,
        BSSCBlack,
        BSSCWhite
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | Specifies the color of the shadow cast by the captions.
--
-- All burn-in and DVB-Sub font settings must match.
newtype BurninSubtitleShadowColor = BurninSubtitleShadowColor' Lude.Text
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

pattern BSSCNone :: BurninSubtitleShadowColor
pattern BSSCNone = BurninSubtitleShadowColor' "NONE"

pattern BSSCBlack :: BurninSubtitleShadowColor
pattern BSSCBlack = BurninSubtitleShadowColor' "BLACK"

pattern BSSCWhite :: BurninSubtitleShadowColor
pattern BSSCWhite = BurninSubtitleShadowColor' "WHITE"

{-# COMPLETE
  BSSCNone,
  BSSCBlack,
  BSSCWhite,
  BurninSubtitleShadowColor'
  #-}