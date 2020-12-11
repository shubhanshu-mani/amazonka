-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Shield.Types.ProtectedResourceType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types.ProtectedResourceType
  ( ProtectedResourceType
      ( ProtectedResourceType',
        ApplicationLoadBalancer,
        ClassicLoadBalancer,
        CloudfrontDistribution,
        ElasticIPAllocation,
        GlobalAccelerator,
        Route53HostedZone
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ProtectedResourceType = ProtectedResourceType' Lude.Text
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

pattern ApplicationLoadBalancer :: ProtectedResourceType
pattern ApplicationLoadBalancer = ProtectedResourceType' "APPLICATION_LOAD_BALANCER"

pattern ClassicLoadBalancer :: ProtectedResourceType
pattern ClassicLoadBalancer = ProtectedResourceType' "CLASSIC_LOAD_BALANCER"

pattern CloudfrontDistribution :: ProtectedResourceType
pattern CloudfrontDistribution = ProtectedResourceType' "CLOUDFRONT_DISTRIBUTION"

pattern ElasticIPAllocation :: ProtectedResourceType
pattern ElasticIPAllocation = ProtectedResourceType' "ELASTIC_IP_ALLOCATION"

pattern GlobalAccelerator :: ProtectedResourceType
pattern GlobalAccelerator = ProtectedResourceType' "GLOBAL_ACCELERATOR"

pattern Route53HostedZone :: ProtectedResourceType
pattern Route53HostedZone = ProtectedResourceType' "ROUTE_53_HOSTED_ZONE"

{-# COMPLETE
  ApplicationLoadBalancer,
  ClassicLoadBalancer,
  CloudfrontDistribution,
  ElasticIPAllocation,
  GlobalAccelerator,
  Route53HostedZone,
  ProtectedResourceType'
  #-}
