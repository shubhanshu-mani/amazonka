-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.UserProfileStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.UserProfileStatus
  ( UserProfileStatus
      ( UserProfileStatus',
        UPSDeleteFailed,
        UPSDeleting,
        UPSFailed,
        UPSInService,
        UPSPending,
        UPSUpdateFailed,
        UPSUpdating
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype UserProfileStatus = UserProfileStatus' Lude.Text
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

pattern UPSDeleteFailed :: UserProfileStatus
pattern UPSDeleteFailed = UserProfileStatus' "Delete_Failed"

pattern UPSDeleting :: UserProfileStatus
pattern UPSDeleting = UserProfileStatus' "Deleting"

pattern UPSFailed :: UserProfileStatus
pattern UPSFailed = UserProfileStatus' "Failed"

pattern UPSInService :: UserProfileStatus
pattern UPSInService = UserProfileStatus' "InService"

pattern UPSPending :: UserProfileStatus
pattern UPSPending = UserProfileStatus' "Pending"

pattern UPSUpdateFailed :: UserProfileStatus
pattern UPSUpdateFailed = UserProfileStatus' "Update_Failed"

pattern UPSUpdating :: UserProfileStatus
pattern UPSUpdating = UserProfileStatus' "Updating"

{-# COMPLETE
  UPSDeleteFailed,
  UPSDeleting,
  UPSFailed,
  UPSInService,
  UPSPending,
  UPSUpdateFailed,
  UPSUpdating,
  UserProfileStatus'
  #-}
