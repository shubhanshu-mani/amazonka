-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Eac3MetadataControl
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Eac3MetadataControl
  ( Eac3MetadataControl
      ( Eac3MetadataControl',
        EMCFollowInput,
        EMCUseConfigured
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | Eac3 Metadata Control
newtype Eac3MetadataControl = Eac3MetadataControl' Lude.Text
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

pattern EMCFollowInput :: Eac3MetadataControl
pattern EMCFollowInput = Eac3MetadataControl' "FOLLOW_INPUT"

pattern EMCUseConfigured :: Eac3MetadataControl
pattern EMCUseConfigured = Eac3MetadataControl' "USE_CONFIGURED"

{-# COMPLETE
  EMCFollowInput,
  EMCUseConfigured,
  Eac3MetadataControl'
  #-}
