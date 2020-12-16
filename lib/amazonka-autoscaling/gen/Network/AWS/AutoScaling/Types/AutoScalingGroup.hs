{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.Types.AutoScalingGroup
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.AutoScalingGroup
  ( AutoScalingGroup (..),

    -- * Smart constructor
    mkAutoScalingGroup,

    -- * Lenses
    asgStatus,
    asgTerminationPolicies,
    asgCreatedTime,
    asgHealthCheckGracePeriod,
    asgServiceLinkedRoleARN,
    asgNewInstancesProtectedFromScaleIn,
    asgVPCZoneIdentifier,
    asgTargetGroupARNs,
    asgMaxInstanceLifetime,
    asgDefaultCooldown,
    asgMaxSize,
    asgAvailabilityZones,
    asgDesiredCapacity,
    asgMixedInstancesPolicy,
    asgMinSize,
    asgEnabledMetrics,
    asgAutoScalingGroupName,
    asgLaunchConfigurationName,
    asgInstances,
    asgHealthCheckType,
    asgLaunchTemplate,
    asgCapacityRebalance,
    asgAutoScalingGroupARN,
    asgPlacementGroup,
    asgSuspendedProcesses,
    asgLoadBalancerNames,
    asgTags,
  )
where

import Network.AWS.AutoScaling.Types.EnabledMetric
import Network.AWS.AutoScaling.Types.Instance
import Network.AWS.AutoScaling.Types.LaunchTemplateSpecification
import Network.AWS.AutoScaling.Types.MixedInstancesPolicy
import Network.AWS.AutoScaling.Types.SuspendedProcess
import Network.AWS.AutoScaling.Types.TagDescription
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Describes an Auto Scaling group.
--
-- /See:/ 'mkAutoScalingGroup' smart constructor.
data AutoScalingGroup = AutoScalingGroup'
  { -- | The current state of the group when the 'DeleteAutoScalingGroup' operation is in progress.
    status :: Lude.Maybe Lude.Text,
    -- | The termination policies for the group.
    terminationPolicies :: Lude.Maybe [Lude.Text],
    -- | The date and time the group was created.
    createdTime :: Lude.DateTime,
    -- | The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status of an EC2 instance that has come into service.
    healthCheckGracePeriod :: Lude.Maybe Lude.Int,
    -- | The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to call other AWS services on your behalf.
    serviceLinkedRoleARN :: Lude.Maybe Lude.Text,
    -- | Indicates whether newly launched instances are protected from termination by Amazon EC2 Auto Scaling when scaling in.
    newInstancesProtectedFromScaleIn :: Lude.Maybe Lude.Bool,
    -- | One or more subnet IDs, if applicable, separated by commas.
    vpcZoneIdentifier :: Lude.Maybe Lude.Text,
    -- | The Amazon Resource Names (ARN) of the target groups for your load balancer.
    targetGroupARNs :: Lude.Maybe [Lude.Text],
    -- | The maximum amount of time, in seconds, that an instance can be in service.
    --
    -- Valid Range: Minimum value of 0.
    maxInstanceLifetime :: Lude.Maybe Lude.Int,
    -- | The duration of the default cooldown period, in seconds.
    defaultCooldown :: Lude.Int,
    -- | The maximum size of the group.
    maxSize :: Lude.Int,
    -- | One or more Availability Zones for the group.
    availabilityZones :: Lude.NonEmpty Lude.Text,
    -- | The desired size of the group.
    desiredCapacity :: Lude.Int,
    -- | The mixed instances policy for the group.
    mixedInstancesPolicy :: Lude.Maybe MixedInstancesPolicy,
    -- | The minimum size of the group.
    minSize :: Lude.Int,
    -- | The metrics enabled for the group.
    enabledMetrics :: Lude.Maybe [EnabledMetric],
    -- | The name of the Auto Scaling group.
    autoScalingGroupName :: Lude.Text,
    -- | The name of the associated launch configuration.
    launchConfigurationName :: Lude.Maybe Lude.Text,
    -- | The EC2 instances associated with the group.
    instances :: Lude.Maybe [Instance],
    -- | The service to use for the health checks. The valid values are @EC2@ and @ELB@ . If you configure an Auto Scaling group to use ELB health checks, it considers the instance unhealthy if it fails either the EC2 status checks or the load balancer health checks.
    healthCheckType :: Lude.Text,
    -- | The launch template for the group.
    launchTemplate :: Lude.Maybe LaunchTemplateSpecification,
    -- | Indicates whether Capacity Rebalancing is enabled.
    capacityRebalance :: Lude.Maybe Lude.Bool,
    -- | The Amazon Resource Name (ARN) of the Auto Scaling group.
    autoScalingGroupARN :: Lude.Maybe Lude.Text,
    -- | The name of the placement group into which to launch your instances, if any.
    placementGroup :: Lude.Maybe Lude.Text,
    -- | The suspended processes associated with the group.
    suspendedProcesses :: Lude.Maybe [SuspendedProcess],
    -- | One or more load balancers associated with the group.
    loadBalancerNames :: Lude.Maybe [Lude.Text],
    -- | The tags for the group.
    tags :: Lude.Maybe [TagDescription]
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'AutoScalingGroup' with the minimum fields required to make a request.
--
-- * 'status' - The current state of the group when the 'DeleteAutoScalingGroup' operation is in progress.
-- * 'terminationPolicies' - The termination policies for the group.
-- * 'createdTime' - The date and time the group was created.
-- * 'healthCheckGracePeriod' - The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status of an EC2 instance that has come into service.
-- * 'serviceLinkedRoleARN' - The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to call other AWS services on your behalf.
-- * 'newInstancesProtectedFromScaleIn' - Indicates whether newly launched instances are protected from termination by Amazon EC2 Auto Scaling when scaling in.
-- * 'vpcZoneIdentifier' - One or more subnet IDs, if applicable, separated by commas.
-- * 'targetGroupARNs' - The Amazon Resource Names (ARN) of the target groups for your load balancer.
-- * 'maxInstanceLifetime' - The maximum amount of time, in seconds, that an instance can be in service.
--
-- Valid Range: Minimum value of 0.
-- * 'defaultCooldown' - The duration of the default cooldown period, in seconds.
-- * 'maxSize' - The maximum size of the group.
-- * 'availabilityZones' - One or more Availability Zones for the group.
-- * 'desiredCapacity' - The desired size of the group.
-- * 'mixedInstancesPolicy' - The mixed instances policy for the group.
-- * 'minSize' - The minimum size of the group.
-- * 'enabledMetrics' - The metrics enabled for the group.
-- * 'autoScalingGroupName' - The name of the Auto Scaling group.
-- * 'launchConfigurationName' - The name of the associated launch configuration.
-- * 'instances' - The EC2 instances associated with the group.
-- * 'healthCheckType' - The service to use for the health checks. The valid values are @EC2@ and @ELB@ . If you configure an Auto Scaling group to use ELB health checks, it considers the instance unhealthy if it fails either the EC2 status checks or the load balancer health checks.
-- * 'launchTemplate' - The launch template for the group.
-- * 'capacityRebalance' - Indicates whether Capacity Rebalancing is enabled.
-- * 'autoScalingGroupARN' - The Amazon Resource Name (ARN) of the Auto Scaling group.
-- * 'placementGroup' - The name of the placement group into which to launch your instances, if any.
-- * 'suspendedProcesses' - The suspended processes associated with the group.
-- * 'loadBalancerNames' - One or more load balancers associated with the group.
-- * 'tags' - The tags for the group.
mkAutoScalingGroup ::
  -- | 'createdTime'
  Lude.DateTime ->
  -- | 'defaultCooldown'
  Lude.Int ->
  -- | 'maxSize'
  Lude.Int ->
  -- | 'availabilityZones'
  Lude.NonEmpty Lude.Text ->
  -- | 'desiredCapacity'
  Lude.Int ->
  -- | 'minSize'
  Lude.Int ->
  -- | 'autoScalingGroupName'
  Lude.Text ->
  -- | 'healthCheckType'
  Lude.Text ->
  AutoScalingGroup
mkAutoScalingGroup
  pCreatedTime_
  pDefaultCooldown_
  pMaxSize_
  pAvailabilityZones_
  pDesiredCapacity_
  pMinSize_
  pAutoScalingGroupName_
  pHealthCheckType_ =
    AutoScalingGroup'
      { status = Lude.Nothing,
        terminationPolicies = Lude.Nothing,
        createdTime = pCreatedTime_,
        healthCheckGracePeriod = Lude.Nothing,
        serviceLinkedRoleARN = Lude.Nothing,
        newInstancesProtectedFromScaleIn = Lude.Nothing,
        vpcZoneIdentifier = Lude.Nothing,
        targetGroupARNs = Lude.Nothing,
        maxInstanceLifetime = Lude.Nothing,
        defaultCooldown = pDefaultCooldown_,
        maxSize = pMaxSize_,
        availabilityZones = pAvailabilityZones_,
        desiredCapacity = pDesiredCapacity_,
        mixedInstancesPolicy = Lude.Nothing,
        minSize = pMinSize_,
        enabledMetrics = Lude.Nothing,
        autoScalingGroupName = pAutoScalingGroupName_,
        launchConfigurationName = Lude.Nothing,
        instances = Lude.Nothing,
        healthCheckType = pHealthCheckType_,
        launchTemplate = Lude.Nothing,
        capacityRebalance = Lude.Nothing,
        autoScalingGroupARN = Lude.Nothing,
        placementGroup = Lude.Nothing,
        suspendedProcesses = Lude.Nothing,
        loadBalancerNames = Lude.Nothing,
        tags = Lude.Nothing
      }

-- | The current state of the group when the 'DeleteAutoScalingGroup' operation is in progress.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgStatus :: Lens.Lens' AutoScalingGroup (Lude.Maybe Lude.Text)
asgStatus = Lens.lens (status :: AutoScalingGroup -> Lude.Maybe Lude.Text) (\s a -> s {status = a} :: AutoScalingGroup)
{-# DEPRECATED asgStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | The termination policies for the group.
--
-- /Note:/ Consider using 'terminationPolicies' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgTerminationPolicies :: Lens.Lens' AutoScalingGroup (Lude.Maybe [Lude.Text])
asgTerminationPolicies = Lens.lens (terminationPolicies :: AutoScalingGroup -> Lude.Maybe [Lude.Text]) (\s a -> s {terminationPolicies = a} :: AutoScalingGroup)
{-# DEPRECATED asgTerminationPolicies "Use generic-lens or generic-optics with 'terminationPolicies' instead." #-}

-- | The date and time the group was created.
--
-- /Note:/ Consider using 'createdTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgCreatedTime :: Lens.Lens' AutoScalingGroup Lude.DateTime
asgCreatedTime = Lens.lens (createdTime :: AutoScalingGroup -> Lude.DateTime) (\s a -> s {createdTime = a} :: AutoScalingGroup)
{-# DEPRECATED asgCreatedTime "Use generic-lens or generic-optics with 'createdTime' instead." #-}

-- | The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status of an EC2 instance that has come into service.
--
-- /Note:/ Consider using 'healthCheckGracePeriod' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgHealthCheckGracePeriod :: Lens.Lens' AutoScalingGroup (Lude.Maybe Lude.Int)
asgHealthCheckGracePeriod = Lens.lens (healthCheckGracePeriod :: AutoScalingGroup -> Lude.Maybe Lude.Int) (\s a -> s {healthCheckGracePeriod = a} :: AutoScalingGroup)
{-# DEPRECATED asgHealthCheckGracePeriod "Use generic-lens or generic-optics with 'healthCheckGracePeriod' instead." #-}

-- | The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to call other AWS services on your behalf.
--
-- /Note:/ Consider using 'serviceLinkedRoleARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgServiceLinkedRoleARN :: Lens.Lens' AutoScalingGroup (Lude.Maybe Lude.Text)
asgServiceLinkedRoleARN = Lens.lens (serviceLinkedRoleARN :: AutoScalingGroup -> Lude.Maybe Lude.Text) (\s a -> s {serviceLinkedRoleARN = a} :: AutoScalingGroup)
{-# DEPRECATED asgServiceLinkedRoleARN "Use generic-lens or generic-optics with 'serviceLinkedRoleARN' instead." #-}

-- | Indicates whether newly launched instances are protected from termination by Amazon EC2 Auto Scaling when scaling in.
--
-- /Note:/ Consider using 'newInstancesProtectedFromScaleIn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgNewInstancesProtectedFromScaleIn :: Lens.Lens' AutoScalingGroup (Lude.Maybe Lude.Bool)
asgNewInstancesProtectedFromScaleIn = Lens.lens (newInstancesProtectedFromScaleIn :: AutoScalingGroup -> Lude.Maybe Lude.Bool) (\s a -> s {newInstancesProtectedFromScaleIn = a} :: AutoScalingGroup)
{-# DEPRECATED asgNewInstancesProtectedFromScaleIn "Use generic-lens or generic-optics with 'newInstancesProtectedFromScaleIn' instead." #-}

-- | One or more subnet IDs, if applicable, separated by commas.
--
-- /Note:/ Consider using 'vpcZoneIdentifier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgVPCZoneIdentifier :: Lens.Lens' AutoScalingGroup (Lude.Maybe Lude.Text)
asgVPCZoneIdentifier = Lens.lens (vpcZoneIdentifier :: AutoScalingGroup -> Lude.Maybe Lude.Text) (\s a -> s {vpcZoneIdentifier = a} :: AutoScalingGroup)
{-# DEPRECATED asgVPCZoneIdentifier "Use generic-lens or generic-optics with 'vpcZoneIdentifier' instead." #-}

-- | The Amazon Resource Names (ARN) of the target groups for your load balancer.
--
-- /Note:/ Consider using 'targetGroupARNs' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgTargetGroupARNs :: Lens.Lens' AutoScalingGroup (Lude.Maybe [Lude.Text])
asgTargetGroupARNs = Lens.lens (targetGroupARNs :: AutoScalingGroup -> Lude.Maybe [Lude.Text]) (\s a -> s {targetGroupARNs = a} :: AutoScalingGroup)
{-# DEPRECATED asgTargetGroupARNs "Use generic-lens or generic-optics with 'targetGroupARNs' instead." #-}

-- | The maximum amount of time, in seconds, that an instance can be in service.
--
-- Valid Range: Minimum value of 0.
--
-- /Note:/ Consider using 'maxInstanceLifetime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgMaxInstanceLifetime :: Lens.Lens' AutoScalingGroup (Lude.Maybe Lude.Int)
asgMaxInstanceLifetime = Lens.lens (maxInstanceLifetime :: AutoScalingGroup -> Lude.Maybe Lude.Int) (\s a -> s {maxInstanceLifetime = a} :: AutoScalingGroup)
{-# DEPRECATED asgMaxInstanceLifetime "Use generic-lens or generic-optics with 'maxInstanceLifetime' instead." #-}

-- | The duration of the default cooldown period, in seconds.
--
-- /Note:/ Consider using 'defaultCooldown' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgDefaultCooldown :: Lens.Lens' AutoScalingGroup Lude.Int
asgDefaultCooldown = Lens.lens (defaultCooldown :: AutoScalingGroup -> Lude.Int) (\s a -> s {defaultCooldown = a} :: AutoScalingGroup)
{-# DEPRECATED asgDefaultCooldown "Use generic-lens or generic-optics with 'defaultCooldown' instead." #-}

-- | The maximum size of the group.
--
-- /Note:/ Consider using 'maxSize' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgMaxSize :: Lens.Lens' AutoScalingGroup Lude.Int
asgMaxSize = Lens.lens (maxSize :: AutoScalingGroup -> Lude.Int) (\s a -> s {maxSize = a} :: AutoScalingGroup)
{-# DEPRECATED asgMaxSize "Use generic-lens or generic-optics with 'maxSize' instead." #-}

-- | One or more Availability Zones for the group.
--
-- /Note:/ Consider using 'availabilityZones' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgAvailabilityZones :: Lens.Lens' AutoScalingGroup (Lude.NonEmpty Lude.Text)
asgAvailabilityZones = Lens.lens (availabilityZones :: AutoScalingGroup -> Lude.NonEmpty Lude.Text) (\s a -> s {availabilityZones = a} :: AutoScalingGroup)
{-# DEPRECATED asgAvailabilityZones "Use generic-lens or generic-optics with 'availabilityZones' instead." #-}

-- | The desired size of the group.
--
-- /Note:/ Consider using 'desiredCapacity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgDesiredCapacity :: Lens.Lens' AutoScalingGroup Lude.Int
asgDesiredCapacity = Lens.lens (desiredCapacity :: AutoScalingGroup -> Lude.Int) (\s a -> s {desiredCapacity = a} :: AutoScalingGroup)
{-# DEPRECATED asgDesiredCapacity "Use generic-lens or generic-optics with 'desiredCapacity' instead." #-}

-- | The mixed instances policy for the group.
--
-- /Note:/ Consider using 'mixedInstancesPolicy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgMixedInstancesPolicy :: Lens.Lens' AutoScalingGroup (Lude.Maybe MixedInstancesPolicy)
asgMixedInstancesPolicy = Lens.lens (mixedInstancesPolicy :: AutoScalingGroup -> Lude.Maybe MixedInstancesPolicy) (\s a -> s {mixedInstancesPolicy = a} :: AutoScalingGroup)
{-# DEPRECATED asgMixedInstancesPolicy "Use generic-lens or generic-optics with 'mixedInstancesPolicy' instead." #-}

-- | The minimum size of the group.
--
-- /Note:/ Consider using 'minSize' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgMinSize :: Lens.Lens' AutoScalingGroup Lude.Int
asgMinSize = Lens.lens (minSize :: AutoScalingGroup -> Lude.Int) (\s a -> s {minSize = a} :: AutoScalingGroup)
{-# DEPRECATED asgMinSize "Use generic-lens or generic-optics with 'minSize' instead." #-}

-- | The metrics enabled for the group.
--
-- /Note:/ Consider using 'enabledMetrics' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgEnabledMetrics :: Lens.Lens' AutoScalingGroup (Lude.Maybe [EnabledMetric])
asgEnabledMetrics = Lens.lens (enabledMetrics :: AutoScalingGroup -> Lude.Maybe [EnabledMetric]) (\s a -> s {enabledMetrics = a} :: AutoScalingGroup)
{-# DEPRECATED asgEnabledMetrics "Use generic-lens or generic-optics with 'enabledMetrics' instead." #-}

-- | The name of the Auto Scaling group.
--
-- /Note:/ Consider using 'autoScalingGroupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgAutoScalingGroupName :: Lens.Lens' AutoScalingGroup Lude.Text
asgAutoScalingGroupName = Lens.lens (autoScalingGroupName :: AutoScalingGroup -> Lude.Text) (\s a -> s {autoScalingGroupName = a} :: AutoScalingGroup)
{-# DEPRECATED asgAutoScalingGroupName "Use generic-lens or generic-optics with 'autoScalingGroupName' instead." #-}

-- | The name of the associated launch configuration.
--
-- /Note:/ Consider using 'launchConfigurationName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgLaunchConfigurationName :: Lens.Lens' AutoScalingGroup (Lude.Maybe Lude.Text)
asgLaunchConfigurationName = Lens.lens (launchConfigurationName :: AutoScalingGroup -> Lude.Maybe Lude.Text) (\s a -> s {launchConfigurationName = a} :: AutoScalingGroup)
{-# DEPRECATED asgLaunchConfigurationName "Use generic-lens or generic-optics with 'launchConfigurationName' instead." #-}

-- | The EC2 instances associated with the group.
--
-- /Note:/ Consider using 'instances' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgInstances :: Lens.Lens' AutoScalingGroup (Lude.Maybe [Instance])
asgInstances = Lens.lens (instances :: AutoScalingGroup -> Lude.Maybe [Instance]) (\s a -> s {instances = a} :: AutoScalingGroup)
{-# DEPRECATED asgInstances "Use generic-lens or generic-optics with 'instances' instead." #-}

-- | The service to use for the health checks. The valid values are @EC2@ and @ELB@ . If you configure an Auto Scaling group to use ELB health checks, it considers the instance unhealthy if it fails either the EC2 status checks or the load balancer health checks.
--
-- /Note:/ Consider using 'healthCheckType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgHealthCheckType :: Lens.Lens' AutoScalingGroup Lude.Text
asgHealthCheckType = Lens.lens (healthCheckType :: AutoScalingGroup -> Lude.Text) (\s a -> s {healthCheckType = a} :: AutoScalingGroup)
{-# DEPRECATED asgHealthCheckType "Use generic-lens or generic-optics with 'healthCheckType' instead." #-}

-- | The launch template for the group.
--
-- /Note:/ Consider using 'launchTemplate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgLaunchTemplate :: Lens.Lens' AutoScalingGroup (Lude.Maybe LaunchTemplateSpecification)
asgLaunchTemplate = Lens.lens (launchTemplate :: AutoScalingGroup -> Lude.Maybe LaunchTemplateSpecification) (\s a -> s {launchTemplate = a} :: AutoScalingGroup)
{-# DEPRECATED asgLaunchTemplate "Use generic-lens or generic-optics with 'launchTemplate' instead." #-}

-- | Indicates whether Capacity Rebalancing is enabled.
--
-- /Note:/ Consider using 'capacityRebalance' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgCapacityRebalance :: Lens.Lens' AutoScalingGroup (Lude.Maybe Lude.Bool)
asgCapacityRebalance = Lens.lens (capacityRebalance :: AutoScalingGroup -> Lude.Maybe Lude.Bool) (\s a -> s {capacityRebalance = a} :: AutoScalingGroup)
{-# DEPRECATED asgCapacityRebalance "Use generic-lens or generic-optics with 'capacityRebalance' instead." #-}

-- | The Amazon Resource Name (ARN) of the Auto Scaling group.
--
-- /Note:/ Consider using 'autoScalingGroupARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgAutoScalingGroupARN :: Lens.Lens' AutoScalingGroup (Lude.Maybe Lude.Text)
asgAutoScalingGroupARN = Lens.lens (autoScalingGroupARN :: AutoScalingGroup -> Lude.Maybe Lude.Text) (\s a -> s {autoScalingGroupARN = a} :: AutoScalingGroup)
{-# DEPRECATED asgAutoScalingGroupARN "Use generic-lens or generic-optics with 'autoScalingGroupARN' instead." #-}

-- | The name of the placement group into which to launch your instances, if any.
--
-- /Note:/ Consider using 'placementGroup' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgPlacementGroup :: Lens.Lens' AutoScalingGroup (Lude.Maybe Lude.Text)
asgPlacementGroup = Lens.lens (placementGroup :: AutoScalingGroup -> Lude.Maybe Lude.Text) (\s a -> s {placementGroup = a} :: AutoScalingGroup)
{-# DEPRECATED asgPlacementGroup "Use generic-lens or generic-optics with 'placementGroup' instead." #-}

-- | The suspended processes associated with the group.
--
-- /Note:/ Consider using 'suspendedProcesses' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgSuspendedProcesses :: Lens.Lens' AutoScalingGroup (Lude.Maybe [SuspendedProcess])
asgSuspendedProcesses = Lens.lens (suspendedProcesses :: AutoScalingGroup -> Lude.Maybe [SuspendedProcess]) (\s a -> s {suspendedProcesses = a} :: AutoScalingGroup)
{-# DEPRECATED asgSuspendedProcesses "Use generic-lens or generic-optics with 'suspendedProcesses' instead." #-}

-- | One or more load balancers associated with the group.
--
-- /Note:/ Consider using 'loadBalancerNames' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgLoadBalancerNames :: Lens.Lens' AutoScalingGroup (Lude.Maybe [Lude.Text])
asgLoadBalancerNames = Lens.lens (loadBalancerNames :: AutoScalingGroup -> Lude.Maybe [Lude.Text]) (\s a -> s {loadBalancerNames = a} :: AutoScalingGroup)
{-# DEPRECATED asgLoadBalancerNames "Use generic-lens or generic-optics with 'loadBalancerNames' instead." #-}

-- | The tags for the group.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asgTags :: Lens.Lens' AutoScalingGroup (Lude.Maybe [TagDescription])
asgTags = Lens.lens (tags :: AutoScalingGroup -> Lude.Maybe [TagDescription]) (\s a -> s {tags = a} :: AutoScalingGroup)
{-# DEPRECATED asgTags "Use generic-lens or generic-optics with 'tags' instead." #-}

instance Lude.FromXML AutoScalingGroup where
  parseXML x =
    AutoScalingGroup'
      Lude.<$> (x Lude..@? "Status")
      Lude.<*> ( x Lude..@? "TerminationPolicies" Lude..!@ Lude.mempty
                   Lude.>>= Lude.may (Lude.parseXMLList "member")
               )
      Lude.<*> (x Lude..@ "CreatedTime")
      Lude.<*> (x Lude..@? "HealthCheckGracePeriod")
      Lude.<*> (x Lude..@? "ServiceLinkedRoleARN")
      Lude.<*> (x Lude..@? "NewInstancesProtectedFromScaleIn")
      Lude.<*> (x Lude..@? "VPCZoneIdentifier")
      Lude.<*> ( x Lude..@? "TargetGroupARNs" Lude..!@ Lude.mempty
                   Lude.>>= Lude.may (Lude.parseXMLList "member")
               )
      Lude.<*> (x Lude..@? "MaxInstanceLifetime")
      Lude.<*> (x Lude..@ "DefaultCooldown")
      Lude.<*> (x Lude..@ "MaxSize")
      Lude.<*> ( x Lude..@? "AvailabilityZones" Lude..!@ Lude.mempty
                   Lude.>>= Lude.parseXMLNonEmpty "member"
               )
      Lude.<*> (x Lude..@ "DesiredCapacity")
      Lude.<*> (x Lude..@? "MixedInstancesPolicy")
      Lude.<*> (x Lude..@ "MinSize")
      Lude.<*> ( x Lude..@? "EnabledMetrics" Lude..!@ Lude.mempty
                   Lude.>>= Lude.may (Lude.parseXMLList "member")
               )
      Lude.<*> (x Lude..@ "AutoScalingGroupName")
      Lude.<*> (x Lude..@? "LaunchConfigurationName")
      Lude.<*> ( x Lude..@? "Instances" Lude..!@ Lude.mempty
                   Lude.>>= Lude.may (Lude.parseXMLList "member")
               )
      Lude.<*> (x Lude..@ "HealthCheckType")
      Lude.<*> (x Lude..@? "LaunchTemplate")
      Lude.<*> (x Lude..@? "CapacityRebalance")
      Lude.<*> (x Lude..@? "AutoScalingGroupARN")
      Lude.<*> (x Lude..@? "PlacementGroup")
      Lude.<*> ( x Lude..@? "SuspendedProcesses" Lude..!@ Lude.mempty
                   Lude.>>= Lude.may (Lude.parseXMLList "member")
               )
      Lude.<*> ( x Lude..@? "LoadBalancerNames" Lude..!@ Lude.mempty
                   Lude.>>= Lude.may (Lude.parseXMLList "member")
               )
      Lude.<*> ( x Lude..@? "Tags" Lude..!@ Lude.mempty
                   Lude.>>= Lude.may (Lude.parseXMLList "member")
               )