{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.TargetHealthReasonEnum
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.TargetHealthReasonEnum
  ( TargetHealthReasonEnum
      ( TargetHealthReasonEnum',
        Elb_RegistrationInProgress,
        Elb_InitialHealthChecking,
        Target_ResponseCodeMismatch,
        Target_Timeout,
        Target_FailedHealthChecks,
        Target_NotRegistered,
        Target_NotInUse,
        Target_DeregistrationInProgress,
        Target_InvalidState,
        Target_IPUnusable,
        Target_HealthCheckDisabled,
        Elb_InternalError
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype TargetHealthReasonEnum = TargetHealthReasonEnum' Lude.Text
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

pattern Elb_RegistrationInProgress :: TargetHealthReasonEnum
pattern Elb_RegistrationInProgress = TargetHealthReasonEnum' "Elb.RegistrationInProgress"

pattern Elb_InitialHealthChecking :: TargetHealthReasonEnum
pattern Elb_InitialHealthChecking = TargetHealthReasonEnum' "Elb.InitialHealthChecking"

pattern Target_ResponseCodeMismatch :: TargetHealthReasonEnum
pattern Target_ResponseCodeMismatch = TargetHealthReasonEnum' "Target.ResponseCodeMismatch"

pattern Target_Timeout :: TargetHealthReasonEnum
pattern Target_Timeout = TargetHealthReasonEnum' "Target.Timeout"

pattern Target_FailedHealthChecks :: TargetHealthReasonEnum
pattern Target_FailedHealthChecks = TargetHealthReasonEnum' "Target.FailedHealthChecks"

pattern Target_NotRegistered :: TargetHealthReasonEnum
pattern Target_NotRegistered = TargetHealthReasonEnum' "Target.NotRegistered"

pattern Target_NotInUse :: TargetHealthReasonEnum
pattern Target_NotInUse = TargetHealthReasonEnum' "Target.NotInUse"

pattern Target_DeregistrationInProgress :: TargetHealthReasonEnum
pattern Target_DeregistrationInProgress = TargetHealthReasonEnum' "Target.DeregistrationInProgress"

pattern Target_InvalidState :: TargetHealthReasonEnum
pattern Target_InvalidState = TargetHealthReasonEnum' "Target.InvalidState"

pattern Target_IPUnusable :: TargetHealthReasonEnum
pattern Target_IPUnusable = TargetHealthReasonEnum' "Target.IpUnusable"

pattern Target_HealthCheckDisabled :: TargetHealthReasonEnum
pattern Target_HealthCheckDisabled = TargetHealthReasonEnum' "Target.HealthCheckDisabled"

pattern Elb_InternalError :: TargetHealthReasonEnum
pattern Elb_InternalError = TargetHealthReasonEnum' "Elb.InternalError"

{-# COMPLETE
  Elb_RegistrationInProgress,
  Elb_InitialHealthChecking,
  Target_ResponseCodeMismatch,
  Target_Timeout,
  Target_FailedHealthChecks,
  Target_NotRegistered,
  Target_NotInUse,
  Target_DeregistrationInProgress,
  Target_InvalidState,
  Target_IPUnusable,
  Target_HealthCheckDisabled,
  Elb_InternalError,
  TargetHealthReasonEnum'
  #-}