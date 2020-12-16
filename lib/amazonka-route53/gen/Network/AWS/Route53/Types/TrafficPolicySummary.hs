{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.Types.TrafficPolicySummary
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.TrafficPolicySummary
  ( TrafficPolicySummary (..),

    -- * Smart constructor
    mkTrafficPolicySummary,

    -- * Lenses
    tpsTrafficPolicyCount,
    tpsName,
    tpsId,
    tpsType,
    tpsLatestVersion,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.Route53.Internal
import Network.AWS.Route53.Types.RecordType

-- | A complex type that contains information about the latest version of one traffic policy that is associated with the current AWS account.
--
-- /See:/ 'mkTrafficPolicySummary' smart constructor.
data TrafficPolicySummary = TrafficPolicySummary'
  { -- | The number of traffic policies that are associated with the current AWS account.
    trafficPolicyCount :: Lude.Natural,
    -- | The name that you specified for the traffic policy when you created it.
    name :: Lude.Text,
    -- | The ID that Amazon Route 53 assigned to the traffic policy when you created it.
    id :: Lude.Text,
    -- | The DNS type of the resource record sets that Amazon Route 53 creates when you use a traffic policy to create a traffic policy instance.
    type' :: RecordType,
    -- | The version number of the latest version of the traffic policy.
    latestVersion :: Lude.Natural
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'TrafficPolicySummary' with the minimum fields required to make a request.
--
-- * 'trafficPolicyCount' - The number of traffic policies that are associated with the current AWS account.
-- * 'name' - The name that you specified for the traffic policy when you created it.
-- * 'id' - The ID that Amazon Route 53 assigned to the traffic policy when you created it.
-- * 'type'' - The DNS type of the resource record sets that Amazon Route 53 creates when you use a traffic policy to create a traffic policy instance.
-- * 'latestVersion' - The version number of the latest version of the traffic policy.
mkTrafficPolicySummary ::
  -- | 'trafficPolicyCount'
  Lude.Natural ->
  -- | 'name'
  Lude.Text ->
  -- | 'id'
  Lude.Text ->
  -- | 'type''
  RecordType ->
  -- | 'latestVersion'
  Lude.Natural ->
  TrafficPolicySummary
mkTrafficPolicySummary
  pTrafficPolicyCount_
  pName_
  pId_
  pType_
  pLatestVersion_ =
    TrafficPolicySummary'
      { trafficPolicyCount = pTrafficPolicyCount_,
        name = pName_,
        id = pId_,
        type' = pType_,
        latestVersion = pLatestVersion_
      }

-- | The number of traffic policies that are associated with the current AWS account.
--
-- /Note:/ Consider using 'trafficPolicyCount' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpsTrafficPolicyCount :: Lens.Lens' TrafficPolicySummary Lude.Natural
tpsTrafficPolicyCount = Lens.lens (trafficPolicyCount :: TrafficPolicySummary -> Lude.Natural) (\s a -> s {trafficPolicyCount = a} :: TrafficPolicySummary)
{-# DEPRECATED tpsTrafficPolicyCount "Use generic-lens or generic-optics with 'trafficPolicyCount' instead." #-}

-- | The name that you specified for the traffic policy when you created it.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpsName :: Lens.Lens' TrafficPolicySummary Lude.Text
tpsName = Lens.lens (name :: TrafficPolicySummary -> Lude.Text) (\s a -> s {name = a} :: TrafficPolicySummary)
{-# DEPRECATED tpsName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The ID that Amazon Route 53 assigned to the traffic policy when you created it.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpsId :: Lens.Lens' TrafficPolicySummary Lude.Text
tpsId = Lens.lens (id :: TrafficPolicySummary -> Lude.Text) (\s a -> s {id = a} :: TrafficPolicySummary)
{-# DEPRECATED tpsId "Use generic-lens or generic-optics with 'id' instead." #-}

-- | The DNS type of the resource record sets that Amazon Route 53 creates when you use a traffic policy to create a traffic policy instance.
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpsType :: Lens.Lens' TrafficPolicySummary RecordType
tpsType = Lens.lens (type' :: TrafficPolicySummary -> RecordType) (\s a -> s {type' = a} :: TrafficPolicySummary)
{-# DEPRECATED tpsType "Use generic-lens or generic-optics with 'type'' instead." #-}

-- | The version number of the latest version of the traffic policy.
--
-- /Note:/ Consider using 'latestVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tpsLatestVersion :: Lens.Lens' TrafficPolicySummary Lude.Natural
tpsLatestVersion = Lens.lens (latestVersion :: TrafficPolicySummary -> Lude.Natural) (\s a -> s {latestVersion = a} :: TrafficPolicySummary)
{-# DEPRECATED tpsLatestVersion "Use generic-lens or generic-optics with 'latestVersion' instead." #-}

instance Lude.FromXML TrafficPolicySummary where
  parseXML x =
    TrafficPolicySummary'
      Lude.<$> (x Lude..@ "TrafficPolicyCount")
      Lude.<*> (x Lude..@ "Name")
      Lude.<*> (x Lude..@ "Id")
      Lude.<*> (x Lude..@ "Type")
      Lude.<*> (x Lude..@ "LatestVersion")