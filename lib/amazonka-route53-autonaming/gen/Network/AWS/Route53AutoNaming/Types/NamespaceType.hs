{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types.NamespaceType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.NamespaceType
  ( NamespaceType
      ( NamespaceType',
        NTDNSPublic,
        NTDNSPrivate,
        NTHTTP
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype NamespaceType = NamespaceType' Lude.Text
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

pattern NTDNSPublic :: NamespaceType
pattern NTDNSPublic = NamespaceType' "DNS_PUBLIC"

pattern NTDNSPrivate :: NamespaceType
pattern NTDNSPrivate = NamespaceType' "DNS_PRIVATE"

pattern NTHTTP :: NamespaceType
pattern NTHTTP = NamespaceType' "HTTP"

{-# COMPLETE
  NTDNSPublic,
  NTDNSPrivate,
  NTHTTP,
  NamespaceType'
  #-}