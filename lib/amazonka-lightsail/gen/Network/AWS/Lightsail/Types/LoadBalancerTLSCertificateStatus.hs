{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateStatus
  ( LoadBalancerTLSCertificateStatus
      ( LoadBalancerTLSCertificateStatus',
        LBTCSPendingValidation,
        LBTCSIssued,
        LBTCSInactive,
        LBTCSExpired,
        LBTCSValidationTimedOut,
        LBTCSRevoked,
        LBTCSFailed,
        LBTCSUnknown
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype LoadBalancerTLSCertificateStatus = LoadBalancerTLSCertificateStatus' Lude.Text
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

pattern LBTCSPendingValidation :: LoadBalancerTLSCertificateStatus
pattern LBTCSPendingValidation = LoadBalancerTLSCertificateStatus' "PENDING_VALIDATION"

pattern LBTCSIssued :: LoadBalancerTLSCertificateStatus
pattern LBTCSIssued = LoadBalancerTLSCertificateStatus' "ISSUED"

pattern LBTCSInactive :: LoadBalancerTLSCertificateStatus
pattern LBTCSInactive = LoadBalancerTLSCertificateStatus' "INACTIVE"

pattern LBTCSExpired :: LoadBalancerTLSCertificateStatus
pattern LBTCSExpired = LoadBalancerTLSCertificateStatus' "EXPIRED"

pattern LBTCSValidationTimedOut :: LoadBalancerTLSCertificateStatus
pattern LBTCSValidationTimedOut = LoadBalancerTLSCertificateStatus' "VALIDATION_TIMED_OUT"

pattern LBTCSRevoked :: LoadBalancerTLSCertificateStatus
pattern LBTCSRevoked = LoadBalancerTLSCertificateStatus' "REVOKED"

pattern LBTCSFailed :: LoadBalancerTLSCertificateStatus
pattern LBTCSFailed = LoadBalancerTLSCertificateStatus' "FAILED"

pattern LBTCSUnknown :: LoadBalancerTLSCertificateStatus
pattern LBTCSUnknown = LoadBalancerTLSCertificateStatus' "UNKNOWN"

{-# COMPLETE
  LBTCSPendingValidation,
  LBTCSIssued,
  LBTCSInactive,
  LBTCSExpired,
  LBTCSValidationTimedOut,
  LBTCSRevoked,
  LBTCSFailed,
  LBTCSUnknown,
  LoadBalancerTLSCertificateStatus'
  #-}