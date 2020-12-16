{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.CertificateState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.CertificateState
  ( CertificateState
      ( CertificateState',
        Registering,
        Registered,
        RegisterFailed,
        Deregistering,
        Deregistered,
        DeregisterFailed
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype CertificateState = CertificateState' Lude.Text
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

pattern Registering :: CertificateState
pattern Registering = CertificateState' "Registering"

pattern Registered :: CertificateState
pattern Registered = CertificateState' "Registered"

pattern RegisterFailed :: CertificateState
pattern RegisterFailed = CertificateState' "RegisterFailed"

pattern Deregistering :: CertificateState
pattern Deregistering = CertificateState' "Deregistering"

pattern Deregistered :: CertificateState
pattern Deregistered = CertificateState' "Deregistered"

pattern DeregisterFailed :: CertificateState
pattern DeregisterFailed = CertificateState' "DeregisterFailed"

{-# COMPLETE
  Registering,
  Registered,
  RegisterFailed,
  Deregistering,
  Deregistered,
  DeregisterFailed,
  CertificateState'
  #-}