{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53Domains.Types.OperationType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53Domains.Types.OperationType
  ( OperationType
      ( OperationType',
        RegisterDomain,
        DeleteDomain,
        TransferInDomain,
        UpdateDomainContact,
        UpdateNameserver,
        ChangePrivacyProtection,
        DomainLock,
        EnableAutorenew,
        DisableAutorenew,
        AddDNSsec,
        RemoveDNSsec,
        ExpireDomain,
        TransferOutDomain,
        ChangeDomainOwner,
        RenewDomain,
        PushDomain,
        InternalTransferOutDomain,
        InternalTransferInDomain
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype OperationType = OperationType' Lude.Text
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

pattern RegisterDomain :: OperationType
pattern RegisterDomain = OperationType' "REGISTER_DOMAIN"

pattern DeleteDomain :: OperationType
pattern DeleteDomain = OperationType' "DELETE_DOMAIN"

pattern TransferInDomain :: OperationType
pattern TransferInDomain = OperationType' "TRANSFER_IN_DOMAIN"

pattern UpdateDomainContact :: OperationType
pattern UpdateDomainContact = OperationType' "UPDATE_DOMAIN_CONTACT"

pattern UpdateNameserver :: OperationType
pattern UpdateNameserver = OperationType' "UPDATE_NAMESERVER"

pattern ChangePrivacyProtection :: OperationType
pattern ChangePrivacyProtection = OperationType' "CHANGE_PRIVACY_PROTECTION"

pattern DomainLock :: OperationType
pattern DomainLock = OperationType' "DOMAIN_LOCK"

pattern EnableAutorenew :: OperationType
pattern EnableAutorenew = OperationType' "ENABLE_AUTORENEW"

pattern DisableAutorenew :: OperationType
pattern DisableAutorenew = OperationType' "DISABLE_AUTORENEW"

pattern AddDNSsec :: OperationType
pattern AddDNSsec = OperationType' "ADD_DNSSEC"

pattern RemoveDNSsec :: OperationType
pattern RemoveDNSsec = OperationType' "REMOVE_DNSSEC"

pattern ExpireDomain :: OperationType
pattern ExpireDomain = OperationType' "EXPIRE_DOMAIN"

pattern TransferOutDomain :: OperationType
pattern TransferOutDomain = OperationType' "TRANSFER_OUT_DOMAIN"

pattern ChangeDomainOwner :: OperationType
pattern ChangeDomainOwner = OperationType' "CHANGE_DOMAIN_OWNER"

pattern RenewDomain :: OperationType
pattern RenewDomain = OperationType' "RENEW_DOMAIN"

pattern PushDomain :: OperationType
pattern PushDomain = OperationType' "PUSH_DOMAIN"

pattern InternalTransferOutDomain :: OperationType
pattern InternalTransferOutDomain = OperationType' "INTERNAL_TRANSFER_OUT_DOMAIN"

pattern InternalTransferInDomain :: OperationType
pattern InternalTransferInDomain = OperationType' "INTERNAL_TRANSFER_IN_DOMAIN"

{-# COMPLETE
  RegisterDomain,
  DeleteDomain,
  TransferInDomain,
  UpdateDomainContact,
  UpdateNameserver,
  ChangePrivacyProtection,
  DomainLock,
  EnableAutorenew,
  DisableAutorenew,
  AddDNSsec,
  RemoveDNSsec,
  ExpireDomain,
  TransferOutDomain,
  ChangeDomainOwner,
  RenewDomain,
  PushDomain,
  InternalTransferOutDomain,
  InternalTransferInDomain,
  OperationType'
  #-}