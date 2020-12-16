{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideo.Types.StreamStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideo.Types.StreamStatus
  ( StreamStatus
      ( StreamStatus',
        Creating,
        Active,
        Updating,
        Deleting
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype StreamStatus = StreamStatus' Lude.Text
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

pattern Creating :: StreamStatus
pattern Creating = StreamStatus' "CREATING"

pattern Active :: StreamStatus
pattern Active = StreamStatus' "ACTIVE"

pattern Updating :: StreamStatus
pattern Updating = StreamStatus' "UPDATING"

pattern Deleting :: StreamStatus
pattern Deleting = StreamStatus' "DELETING"

{-# COMPLETE
  Creating,
  Active,
  Updating,
  Deleting,
  StreamStatus'
  #-}