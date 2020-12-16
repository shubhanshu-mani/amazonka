{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.InstanceHealthReason
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.InstanceHealthReason
  ( InstanceHealthReason
      ( InstanceHealthReason',
        Lb_RegistrationInProgress,
        Lb_InitialHealthChecking,
        Lb_InternalError,
        Instance_ResponseCodeMismatch,
        Instance_Timeout,
        Instance_FailedHealthChecks,
        Instance_NotRegistered,
        Instance_NotInUse,
        Instance_DeregistrationInProgress,
        Instance_InvalidState,
        Instance_IPUnusable
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype InstanceHealthReason = InstanceHealthReason' Lude.Text
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

pattern Lb_RegistrationInProgress :: InstanceHealthReason
pattern Lb_RegistrationInProgress = InstanceHealthReason' "Lb.RegistrationInProgress"

pattern Lb_InitialHealthChecking :: InstanceHealthReason
pattern Lb_InitialHealthChecking = InstanceHealthReason' "Lb.InitialHealthChecking"

pattern Lb_InternalError :: InstanceHealthReason
pattern Lb_InternalError = InstanceHealthReason' "Lb.InternalError"

pattern Instance_ResponseCodeMismatch :: InstanceHealthReason
pattern Instance_ResponseCodeMismatch = InstanceHealthReason' "Instance.ResponseCodeMismatch"

pattern Instance_Timeout :: InstanceHealthReason
pattern Instance_Timeout = InstanceHealthReason' "Instance.Timeout"

pattern Instance_FailedHealthChecks :: InstanceHealthReason
pattern Instance_FailedHealthChecks = InstanceHealthReason' "Instance.FailedHealthChecks"

pattern Instance_NotRegistered :: InstanceHealthReason
pattern Instance_NotRegistered = InstanceHealthReason' "Instance.NotRegistered"

pattern Instance_NotInUse :: InstanceHealthReason
pattern Instance_NotInUse = InstanceHealthReason' "Instance.NotInUse"

pattern Instance_DeregistrationInProgress :: InstanceHealthReason
pattern Instance_DeregistrationInProgress = InstanceHealthReason' "Instance.DeregistrationInProgress"

pattern Instance_InvalidState :: InstanceHealthReason
pattern Instance_InvalidState = InstanceHealthReason' "Instance.InvalidState"

pattern Instance_IPUnusable :: InstanceHealthReason
pattern Instance_IPUnusable = InstanceHealthReason' "Instance.IpUnusable"

{-# COMPLETE
  Lb_RegistrationInProgress,
  Lb_InitialHealthChecking,
  Lb_InternalError,
  Instance_ResponseCodeMismatch,
  Instance_Timeout,
  Instance_FailedHealthChecks,
  Instance_NotRegistered,
  Instance_NotInUse,
  Instance_DeregistrationInProgress,
  Instance_InvalidState,
  Instance_IPUnusable,
  InstanceHealthReason'
  #-}