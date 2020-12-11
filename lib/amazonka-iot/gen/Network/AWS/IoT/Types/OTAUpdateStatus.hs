-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.OTAUpdateStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.OTAUpdateStatus
  ( OTAUpdateStatus
      ( OTAUpdateStatus',
        CreateComplete,
        CreateFailed,
        CreateInProgress,
        CreatePending
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype OTAUpdateStatus = OTAUpdateStatus' Lude.Text
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

pattern CreateComplete :: OTAUpdateStatus
pattern CreateComplete = OTAUpdateStatus' "CREATE_COMPLETE"

pattern CreateFailed :: OTAUpdateStatus
pattern CreateFailed = OTAUpdateStatus' "CREATE_FAILED"

pattern CreateInProgress :: OTAUpdateStatus
pattern CreateInProgress = OTAUpdateStatus' "CREATE_IN_PROGRESS"

pattern CreatePending :: OTAUpdateStatus
pattern CreatePending = OTAUpdateStatus' "CREATE_PENDING"

{-# COMPLETE
  CreateComplete,
  CreateFailed,
  CreateInProgress,
  CreatePending,
  OTAUpdateStatus'
  #-}
