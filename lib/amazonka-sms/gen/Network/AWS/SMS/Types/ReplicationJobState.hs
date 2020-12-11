-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.ReplicationJobState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ReplicationJobState
  ( ReplicationJobState
      ( ReplicationJobState',
        RJSActive,
        RJSCompleted,
        RJSDeleted,
        RJSDeleting,
        RJSFailed,
        RJSFailing,
        RJSPausedOnFailure,
        RJSPending
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ReplicationJobState = ReplicationJobState' Lude.Text
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

pattern RJSActive :: ReplicationJobState
pattern RJSActive = ReplicationJobState' "ACTIVE"

pattern RJSCompleted :: ReplicationJobState
pattern RJSCompleted = ReplicationJobState' "COMPLETED"

pattern RJSDeleted :: ReplicationJobState
pattern RJSDeleted = ReplicationJobState' "DELETED"

pattern RJSDeleting :: ReplicationJobState
pattern RJSDeleting = ReplicationJobState' "DELETING"

pattern RJSFailed :: ReplicationJobState
pattern RJSFailed = ReplicationJobState' "FAILED"

pattern RJSFailing :: ReplicationJobState
pattern RJSFailing = ReplicationJobState' "FAILING"

pattern RJSPausedOnFailure :: ReplicationJobState
pattern RJSPausedOnFailure = ReplicationJobState' "PAUSED_ON_FAILURE"

pattern RJSPending :: ReplicationJobState
pattern RJSPending = ReplicationJobState' "PENDING"

{-# COMPLETE
  RJSActive,
  RJSCompleted,
  RJSDeleted,
  RJSDeleting,
  RJSFailed,
  RJSFailing,
  RJSPausedOnFailure,
  RJSPending,
  ReplicationJobState'
  #-}
