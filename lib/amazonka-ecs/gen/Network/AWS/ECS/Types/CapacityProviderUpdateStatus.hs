{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.CapacityProviderUpdateStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.CapacityProviderUpdateStatus
  ( CapacityProviderUpdateStatus
      ( CapacityProviderUpdateStatus',
        DeleteInProgress,
        DeleteComplete,
        DeleteFailed,
        UpdateInProgress,
        UpdateComplete,
        UpdateFailed
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype CapacityProviderUpdateStatus = CapacityProviderUpdateStatus' Lude.Text
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

pattern DeleteInProgress :: CapacityProviderUpdateStatus
pattern DeleteInProgress = CapacityProviderUpdateStatus' "DELETE_IN_PROGRESS"

pattern DeleteComplete :: CapacityProviderUpdateStatus
pattern DeleteComplete = CapacityProviderUpdateStatus' "DELETE_COMPLETE"

pattern DeleteFailed :: CapacityProviderUpdateStatus
pattern DeleteFailed = CapacityProviderUpdateStatus' "DELETE_FAILED"

pattern UpdateInProgress :: CapacityProviderUpdateStatus
pattern UpdateInProgress = CapacityProviderUpdateStatus' "UPDATE_IN_PROGRESS"

pattern UpdateComplete :: CapacityProviderUpdateStatus
pattern UpdateComplete = CapacityProviderUpdateStatus' "UPDATE_COMPLETE"

pattern UpdateFailed :: CapacityProviderUpdateStatus
pattern UpdateFailed = CapacityProviderUpdateStatus' "UPDATE_FAILED"

{-# COMPLETE
  DeleteInProgress,
  DeleteComplete,
  DeleteFailed,
  UpdateInProgress,
  UpdateComplete,
  UpdateFailed,
  CapacityProviderUpdateStatus'
  #-}