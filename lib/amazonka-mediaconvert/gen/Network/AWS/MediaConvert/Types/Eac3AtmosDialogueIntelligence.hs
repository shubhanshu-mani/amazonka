-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Eac3AtmosDialogueIntelligence
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3AtmosDialogueIntelligence
  ( Eac3AtmosDialogueIntelligence
      ( Eac3AtmosDialogueIntelligence',
        EADIDisabled,
        EADIEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | Enable Dolby Dialogue Intelligence to adjust loudness based on dialogue analysis.
newtype Eac3AtmosDialogueIntelligence = Eac3AtmosDialogueIntelligence' Lude.Text
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

pattern EADIDisabled :: Eac3AtmosDialogueIntelligence
pattern EADIDisabled = Eac3AtmosDialogueIntelligence' "DISABLED"

pattern EADIEnabled :: Eac3AtmosDialogueIntelligence
pattern EADIEnabled = Eac3AtmosDialogueIntelligence' "ENABLED"

{-# COMPLETE
  EADIDisabled,
  EADIEnabled,
  Eac3AtmosDialogueIntelligence'
  #-}
