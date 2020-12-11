-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.AudioDescriptionLanguageCodeControl
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AudioDescriptionLanguageCodeControl
  ( AudioDescriptionLanguageCodeControl
      ( AudioDescriptionLanguageCodeControl',
        ADLCCFollowInput,
        ADLCCUseConfigured
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | Audio Description Language Code Control
newtype AudioDescriptionLanguageCodeControl = AudioDescriptionLanguageCodeControl' Lude.Text
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

pattern ADLCCFollowInput :: AudioDescriptionLanguageCodeControl
pattern ADLCCFollowInput = AudioDescriptionLanguageCodeControl' "FOLLOW_INPUT"

pattern ADLCCUseConfigured :: AudioDescriptionLanguageCodeControl
pattern ADLCCUseConfigured = AudioDescriptionLanguageCodeControl' "USE_CONFIGURED"

{-# COMPLETE
  ADLCCFollowInput,
  ADLCCUseConfigured,
  AudioDescriptionLanguageCodeControl'
  #-}
