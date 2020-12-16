{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.Types.Instance
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.Instance
  ( Instance (..),

    -- * Smart constructor
    mkInstance,

    -- * Lenses
    iInstanceId,
    iWeightedCapacity,
    iProtectedFromScaleIn,
    iInstanceType,
    iAvailabilityZone,
    iLaunchConfigurationName,
    iLaunchTemplate,
    iHealthStatus,
    iLifecycleState,
  )
where

import Network.AWS.AutoScaling.Types.LaunchTemplateSpecification
import Network.AWS.AutoScaling.Types.LifecycleState
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Describes an EC2 instance.
--
-- /See:/ 'mkInstance' smart constructor.
data Instance = Instance'
  { -- | The ID of the instance.
    instanceId :: Lude.Text,
    -- | The number of capacity units contributed by the instance based on its instance type.
    --
    -- Valid Range: Minimum value of 1. Maximum value of 999.
    weightedCapacity :: Lude.Maybe Lude.Text,
    -- | Indicates whether the instance is protected from termination by Amazon EC2 Auto Scaling when scaling in.
    protectedFromScaleIn :: Lude.Bool,
    -- | The instance type of the EC2 instance.
    instanceType :: Lude.Maybe Lude.Text,
    -- | The Availability Zone in which the instance is running.
    availabilityZone :: Lude.Text,
    -- | The launch configuration associated with the instance.
    launchConfigurationName :: Lude.Maybe Lude.Text,
    -- | The launch template for the instance.
    launchTemplate :: Lude.Maybe LaunchTemplateSpecification,
    -- | The last reported health status of the instance. "Healthy" means that the instance is healthy and should remain in service. "Unhealthy" means that the instance is unhealthy and that Amazon EC2 Auto Scaling should terminate and replace it.
    healthStatus :: Lude.Text,
    -- | A description of the current lifecycle state. The @Quarantined@ state is not used.
    lifecycleState :: LifecycleState
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'Instance' with the minimum fields required to make a request.
--
-- * 'instanceId' - The ID of the instance.
-- * 'weightedCapacity' - The number of capacity units contributed by the instance based on its instance type.
--
-- Valid Range: Minimum value of 1. Maximum value of 999.
-- * 'protectedFromScaleIn' - Indicates whether the instance is protected from termination by Amazon EC2 Auto Scaling when scaling in.
-- * 'instanceType' - The instance type of the EC2 instance.
-- * 'availabilityZone' - The Availability Zone in which the instance is running.
-- * 'launchConfigurationName' - The launch configuration associated with the instance.
-- * 'launchTemplate' - The launch template for the instance.
-- * 'healthStatus' - The last reported health status of the instance. "Healthy" means that the instance is healthy and should remain in service. "Unhealthy" means that the instance is unhealthy and that Amazon EC2 Auto Scaling should terminate and replace it.
-- * 'lifecycleState' - A description of the current lifecycle state. The @Quarantined@ state is not used.
mkInstance ::
  -- | 'instanceId'
  Lude.Text ->
  -- | 'protectedFromScaleIn'
  Lude.Bool ->
  -- | 'availabilityZone'
  Lude.Text ->
  -- | 'healthStatus'
  Lude.Text ->
  -- | 'lifecycleState'
  LifecycleState ->
  Instance
mkInstance
  pInstanceId_
  pProtectedFromScaleIn_
  pAvailabilityZone_
  pHealthStatus_
  pLifecycleState_ =
    Instance'
      { instanceId = pInstanceId_,
        weightedCapacity = Lude.Nothing,
        protectedFromScaleIn = pProtectedFromScaleIn_,
        instanceType = Lude.Nothing,
        availabilityZone = pAvailabilityZone_,
        launchConfigurationName = Lude.Nothing,
        launchTemplate = Lude.Nothing,
        healthStatus = pHealthStatus_,
        lifecycleState = pLifecycleState_
      }

-- | The ID of the instance.
--
-- /Note:/ Consider using 'instanceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iInstanceId :: Lens.Lens' Instance Lude.Text
iInstanceId = Lens.lens (instanceId :: Instance -> Lude.Text) (\s a -> s {instanceId = a} :: Instance)
{-# DEPRECATED iInstanceId "Use generic-lens or generic-optics with 'instanceId' instead." #-}

-- | The number of capacity units contributed by the instance based on its instance type.
--
-- Valid Range: Minimum value of 1. Maximum value of 999.
--
-- /Note:/ Consider using 'weightedCapacity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iWeightedCapacity :: Lens.Lens' Instance (Lude.Maybe Lude.Text)
iWeightedCapacity = Lens.lens (weightedCapacity :: Instance -> Lude.Maybe Lude.Text) (\s a -> s {weightedCapacity = a} :: Instance)
{-# DEPRECATED iWeightedCapacity "Use generic-lens or generic-optics with 'weightedCapacity' instead." #-}

-- | Indicates whether the instance is protected from termination by Amazon EC2 Auto Scaling when scaling in.
--
-- /Note:/ Consider using 'protectedFromScaleIn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iProtectedFromScaleIn :: Lens.Lens' Instance Lude.Bool
iProtectedFromScaleIn = Lens.lens (protectedFromScaleIn :: Instance -> Lude.Bool) (\s a -> s {protectedFromScaleIn = a} :: Instance)
{-# DEPRECATED iProtectedFromScaleIn "Use generic-lens or generic-optics with 'protectedFromScaleIn' instead." #-}

-- | The instance type of the EC2 instance.
--
-- /Note:/ Consider using 'instanceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iInstanceType :: Lens.Lens' Instance (Lude.Maybe Lude.Text)
iInstanceType = Lens.lens (instanceType :: Instance -> Lude.Maybe Lude.Text) (\s a -> s {instanceType = a} :: Instance)
{-# DEPRECATED iInstanceType "Use generic-lens or generic-optics with 'instanceType' instead." #-}

-- | The Availability Zone in which the instance is running.
--
-- /Note:/ Consider using 'availabilityZone' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iAvailabilityZone :: Lens.Lens' Instance Lude.Text
iAvailabilityZone = Lens.lens (availabilityZone :: Instance -> Lude.Text) (\s a -> s {availabilityZone = a} :: Instance)
{-# DEPRECATED iAvailabilityZone "Use generic-lens or generic-optics with 'availabilityZone' instead." #-}

-- | The launch configuration associated with the instance.
--
-- /Note:/ Consider using 'launchConfigurationName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iLaunchConfigurationName :: Lens.Lens' Instance (Lude.Maybe Lude.Text)
iLaunchConfigurationName = Lens.lens (launchConfigurationName :: Instance -> Lude.Maybe Lude.Text) (\s a -> s {launchConfigurationName = a} :: Instance)
{-# DEPRECATED iLaunchConfigurationName "Use generic-lens or generic-optics with 'launchConfigurationName' instead." #-}

-- | The launch template for the instance.
--
-- /Note:/ Consider using 'launchTemplate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iLaunchTemplate :: Lens.Lens' Instance (Lude.Maybe LaunchTemplateSpecification)
iLaunchTemplate = Lens.lens (launchTemplate :: Instance -> Lude.Maybe LaunchTemplateSpecification) (\s a -> s {launchTemplate = a} :: Instance)
{-# DEPRECATED iLaunchTemplate "Use generic-lens or generic-optics with 'launchTemplate' instead." #-}

-- | The last reported health status of the instance. "Healthy" means that the instance is healthy and should remain in service. "Unhealthy" means that the instance is unhealthy and that Amazon EC2 Auto Scaling should terminate and replace it.
--
-- /Note:/ Consider using 'healthStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iHealthStatus :: Lens.Lens' Instance Lude.Text
iHealthStatus = Lens.lens (healthStatus :: Instance -> Lude.Text) (\s a -> s {healthStatus = a} :: Instance)
{-# DEPRECATED iHealthStatus "Use generic-lens or generic-optics with 'healthStatus' instead." #-}

-- | A description of the current lifecycle state. The @Quarantined@ state is not used.
--
-- /Note:/ Consider using 'lifecycleState' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iLifecycleState :: Lens.Lens' Instance LifecycleState
iLifecycleState = Lens.lens (lifecycleState :: Instance -> LifecycleState) (\s a -> s {lifecycleState = a} :: Instance)
{-# DEPRECATED iLifecycleState "Use generic-lens or generic-optics with 'lifecycleState' instead." #-}

instance Lude.FromXML Instance where
  parseXML x =
    Instance'
      Lude.<$> (x Lude..@ "InstanceId")
      Lude.<*> (x Lude..@? "WeightedCapacity")
      Lude.<*> (x Lude..@ "ProtectedFromScaleIn")
      Lude.<*> (x Lude..@? "InstanceType")
      Lude.<*> (x Lude..@ "AvailabilityZone")
      Lude.<*> (x Lude..@? "LaunchConfigurationName")
      Lude.<*> (x Lude..@? "LaunchTemplate")
      Lude.<*> (x Lude..@ "HealthStatus")
      Lude.<*> (x Lude..@ "LifecycleState")