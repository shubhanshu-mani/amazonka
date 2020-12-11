-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M2tsAudioStreamType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsAudioStreamType
  ( M2tsAudioStreamType
      ( M2tsAudioStreamType',
        MASTAtsc,
        MASTDvb
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | M2ts Audio Stream Type
newtype M2tsAudioStreamType = M2tsAudioStreamType' Lude.Text
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

pattern MASTAtsc :: M2tsAudioStreamType
pattern MASTAtsc = M2tsAudioStreamType' "ATSC"

pattern MASTDvb :: M2tsAudioStreamType
pattern MASTDvb = M2tsAudioStreamType' "DVB"

{-# COMPLETE
  MASTAtsc,
  MASTDvb,
  M2tsAudioStreamType'
  #-}
