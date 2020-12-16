{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.InstanceStateChangeReasonCode
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceStateChangeReasonCode
  ( InstanceStateChangeReasonCode
      ( InstanceStateChangeReasonCode',
        ISCRCInternalError,
        ISCRCValidationError,
        ISCRCInstanceFailure,
        ISCRCBootstrapFailure,
        ISCRCClusterTerminated
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype InstanceStateChangeReasonCode = InstanceStateChangeReasonCode' Lude.Text
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

pattern ISCRCInternalError :: InstanceStateChangeReasonCode
pattern ISCRCInternalError = InstanceStateChangeReasonCode' "INTERNAL_ERROR"

pattern ISCRCValidationError :: InstanceStateChangeReasonCode
pattern ISCRCValidationError = InstanceStateChangeReasonCode' "VALIDATION_ERROR"

pattern ISCRCInstanceFailure :: InstanceStateChangeReasonCode
pattern ISCRCInstanceFailure = InstanceStateChangeReasonCode' "INSTANCE_FAILURE"

pattern ISCRCBootstrapFailure :: InstanceStateChangeReasonCode
pattern ISCRCBootstrapFailure = InstanceStateChangeReasonCode' "BOOTSTRAP_FAILURE"

pattern ISCRCClusterTerminated :: InstanceStateChangeReasonCode
pattern ISCRCClusterTerminated = InstanceStateChangeReasonCode' "CLUSTER_TERMINATED"

{-# COMPLETE
  ISCRCInternalError,
  ISCRCValidationError,
  ISCRCInstanceFailure,
  ISCRCBootstrapFailure,
  ISCRCClusterTerminated,
  InstanceStateChangeReasonCode'
  #-}