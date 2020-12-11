-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ServiceType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ServiceType
  ( ServiceType
      ( ServiceType',
        Gateway,
        GatewayLoadBalancer,
        Interface
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ServiceType = ServiceType' Lude.Text
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

pattern Gateway :: ServiceType
pattern Gateway = ServiceType' "Gateway"

pattern GatewayLoadBalancer :: ServiceType
pattern GatewayLoadBalancer = ServiceType' "GatewayLoadBalancer"

pattern Interface :: ServiceType
pattern Interface = ServiceType' "Interface"

{-# COMPLETE
  Gateway,
  GatewayLoadBalancer,
  Interface,
  ServiceType'
  #-}
