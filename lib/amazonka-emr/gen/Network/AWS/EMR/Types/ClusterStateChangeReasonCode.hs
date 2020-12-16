{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.ClusterStateChangeReasonCode
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.ClusterStateChangeReasonCode
  ( ClusterStateChangeReasonCode
      ( ClusterStateChangeReasonCode',
        CSCRCInternalError,
        CSCRCValidationError,
        CSCRCInstanceFailure,
        CSCRCInstanceFleetTimeout,
        CSCRCBootstrapFailure,
        CSCRCUserRequest,
        CSCRCStepFailure,
        CSCRCAllStepsCompleted
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ClusterStateChangeReasonCode = ClusterStateChangeReasonCode' Lude.Text
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

pattern CSCRCInternalError :: ClusterStateChangeReasonCode
pattern CSCRCInternalError = ClusterStateChangeReasonCode' "INTERNAL_ERROR"

pattern CSCRCValidationError :: ClusterStateChangeReasonCode
pattern CSCRCValidationError = ClusterStateChangeReasonCode' "VALIDATION_ERROR"

pattern CSCRCInstanceFailure :: ClusterStateChangeReasonCode
pattern CSCRCInstanceFailure = ClusterStateChangeReasonCode' "INSTANCE_FAILURE"

pattern CSCRCInstanceFleetTimeout :: ClusterStateChangeReasonCode
pattern CSCRCInstanceFleetTimeout = ClusterStateChangeReasonCode' "INSTANCE_FLEET_TIMEOUT"

pattern CSCRCBootstrapFailure :: ClusterStateChangeReasonCode
pattern CSCRCBootstrapFailure = ClusterStateChangeReasonCode' "BOOTSTRAP_FAILURE"

pattern CSCRCUserRequest :: ClusterStateChangeReasonCode
pattern CSCRCUserRequest = ClusterStateChangeReasonCode' "USER_REQUEST"

pattern CSCRCStepFailure :: ClusterStateChangeReasonCode
pattern CSCRCStepFailure = ClusterStateChangeReasonCode' "STEP_FAILURE"

pattern CSCRCAllStepsCompleted :: ClusterStateChangeReasonCode
pattern CSCRCAllStepsCompleted = ClusterStateChangeReasonCode' "ALL_STEPS_COMPLETED"

{-# COMPLETE
  CSCRCInternalError,
  CSCRCValidationError,
  CSCRCInstanceFailure,
  CSCRCInstanceFleetTimeout,
  CSCRCBootstrapFailure,
  CSCRCUserRequest,
  CSCRCStepFailure,
  CSCRCAllStepsCompleted,
  ClusterStateChangeReasonCode'
  #-}