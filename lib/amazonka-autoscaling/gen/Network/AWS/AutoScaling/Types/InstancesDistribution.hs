{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.Types.InstancesDistribution
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.InstancesDistribution
  ( InstancesDistribution (..),

    -- * Smart constructor
    mkInstancesDistribution,

    -- * Lenses
    idSpotAllocationStrategy,
    idSpotInstancePools,
    idSpotMaxPrice,
    idOnDemandBaseCapacity,
    idOnDemandAllocationStrategy,
    idOnDemandPercentageAboveBaseCapacity,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Describes an instances distribution for an Auto Scaling group with a 'MixedInstancesPolicy' .
--
-- The instances distribution specifies the distribution of On-Demand Instances and Spot Instances, the maximum price to pay for Spot Instances, and how the Auto Scaling group allocates instance types to fulfill On-Demand and Spot capacities.
-- When you update @SpotAllocationStrategy@ , @SpotInstancePools@ , or @SpotMaxPrice@ , this update action does not deploy any changes across the running Amazon EC2 instances in the group. Your existing Spot Instances continue to run as long as the maximum price for those instances is higher than the current Spot price. When scale out occurs, Amazon EC2 Auto Scaling launches instances based on the new settings. When scale in occurs, Amazon EC2 Auto Scaling terminates instances according to the group's termination policies.
--
-- /See:/ 'mkInstancesDistribution' smart constructor.
data InstancesDistribution = InstancesDistribution'
  { -- | Indicates how to allocate instances across Spot Instance pools. If the allocation strategy is @capacity-optimized@ (recommended), the Auto Scaling group launches instances using Spot pools that are optimally chosen based on the available Spot capacity. If the allocation strategy is @lowest-price@ , the Auto Scaling group launches instances using the Spot pools with the lowest price, and evenly allocates your instances across the number of Spot pools that you specify. Defaults to @lowest-price@ if not specified.
    spotAllocationStrategy :: Lude.Maybe Lude.Text,
    -- | The number of Spot Instance pools across which to allocate your Spot Instances. The Spot pools are determined from the different instance types in the overrides. Valid only when the Spot allocation strategy is @lowest-price@ . Value must be in the range of 1 to 20. Defaults to 2 if not specified.
    spotInstancePools :: Lude.Maybe Lude.Int,
    -- | The maximum price per unit hour that you are willing to pay for a Spot Instance. If you leave the value at its default (empty), Amazon EC2 Auto Scaling uses the On-Demand price as the maximum Spot price. To remove a value that you previously set, include the property but specify an empty string ("") for the value.
    spotMaxPrice :: Lude.Maybe Lude.Text,
    -- | The minimum amount of the Auto Scaling group's capacity that must be fulfilled by On-Demand Instances. This base portion is provisioned first as your group scales. Defaults to 0 if not specified. If you specify weights for the instance types in the overrides, set the value of @OnDemandBaseCapacity@ in terms of the number of capacity units, and not the number of instances.
    onDemandBaseCapacity :: Lude.Maybe Lude.Int,
    -- | Indicates how to allocate instance types to fulfill On-Demand capacity. The only valid value is @prioritized@ , which is also the default value. This strategy uses the order of instance types in the overrides to define the launch priority of each instance type. The first instance type in the array is prioritized higher than the last. If all your On-Demand capacity cannot be fulfilled using your highest priority instance, then the Auto Scaling groups launches the remaining capacity using the second priority instance type, and so on.
    onDemandAllocationStrategy :: Lude.Maybe Lude.Text,
    -- | Controls the percentages of On-Demand Instances and Spot Instances for your additional capacity beyond @OnDemandBaseCapacity@ . Expressed as a number (for example, 20 specifies 20% On-Demand Instances, 80% Spot Instances). Defaults to 100 if not specified. If set to 100, only On-Demand Instances are provisioned.
    onDemandPercentageAboveBaseCapacity :: Lude.Maybe Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'InstancesDistribution' with the minimum fields required to make a request.
--
-- * 'spotAllocationStrategy' - Indicates how to allocate instances across Spot Instance pools. If the allocation strategy is @capacity-optimized@ (recommended), the Auto Scaling group launches instances using Spot pools that are optimally chosen based on the available Spot capacity. If the allocation strategy is @lowest-price@ , the Auto Scaling group launches instances using the Spot pools with the lowest price, and evenly allocates your instances across the number of Spot pools that you specify. Defaults to @lowest-price@ if not specified.
-- * 'spotInstancePools' - The number of Spot Instance pools across which to allocate your Spot Instances. The Spot pools are determined from the different instance types in the overrides. Valid only when the Spot allocation strategy is @lowest-price@ . Value must be in the range of 1 to 20. Defaults to 2 if not specified.
-- * 'spotMaxPrice' - The maximum price per unit hour that you are willing to pay for a Spot Instance. If you leave the value at its default (empty), Amazon EC2 Auto Scaling uses the On-Demand price as the maximum Spot price. To remove a value that you previously set, include the property but specify an empty string ("") for the value.
-- * 'onDemandBaseCapacity' - The minimum amount of the Auto Scaling group's capacity that must be fulfilled by On-Demand Instances. This base portion is provisioned first as your group scales. Defaults to 0 if not specified. If you specify weights for the instance types in the overrides, set the value of @OnDemandBaseCapacity@ in terms of the number of capacity units, and not the number of instances.
-- * 'onDemandAllocationStrategy' - Indicates how to allocate instance types to fulfill On-Demand capacity. The only valid value is @prioritized@ , which is also the default value. This strategy uses the order of instance types in the overrides to define the launch priority of each instance type. The first instance type in the array is prioritized higher than the last. If all your On-Demand capacity cannot be fulfilled using your highest priority instance, then the Auto Scaling groups launches the remaining capacity using the second priority instance type, and so on.
-- * 'onDemandPercentageAboveBaseCapacity' - Controls the percentages of On-Demand Instances and Spot Instances for your additional capacity beyond @OnDemandBaseCapacity@ . Expressed as a number (for example, 20 specifies 20% On-Demand Instances, 80% Spot Instances). Defaults to 100 if not specified. If set to 100, only On-Demand Instances are provisioned.
mkInstancesDistribution ::
  InstancesDistribution
mkInstancesDistribution =
  InstancesDistribution'
    { spotAllocationStrategy = Lude.Nothing,
      spotInstancePools = Lude.Nothing,
      spotMaxPrice = Lude.Nothing,
      onDemandBaseCapacity = Lude.Nothing,
      onDemandAllocationStrategy = Lude.Nothing,
      onDemandPercentageAboveBaseCapacity = Lude.Nothing
    }

-- | Indicates how to allocate instances across Spot Instance pools. If the allocation strategy is @capacity-optimized@ (recommended), the Auto Scaling group launches instances using Spot pools that are optimally chosen based on the available Spot capacity. If the allocation strategy is @lowest-price@ , the Auto Scaling group launches instances using the Spot pools with the lowest price, and evenly allocates your instances across the number of Spot pools that you specify. Defaults to @lowest-price@ if not specified.
--
-- /Note:/ Consider using 'spotAllocationStrategy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idSpotAllocationStrategy :: Lens.Lens' InstancesDistribution (Lude.Maybe Lude.Text)
idSpotAllocationStrategy = Lens.lens (spotAllocationStrategy :: InstancesDistribution -> Lude.Maybe Lude.Text) (\s a -> s {spotAllocationStrategy = a} :: InstancesDistribution)
{-# DEPRECATED idSpotAllocationStrategy "Use generic-lens or generic-optics with 'spotAllocationStrategy' instead." #-}

-- | The number of Spot Instance pools across which to allocate your Spot Instances. The Spot pools are determined from the different instance types in the overrides. Valid only when the Spot allocation strategy is @lowest-price@ . Value must be in the range of 1 to 20. Defaults to 2 if not specified.
--
-- /Note:/ Consider using 'spotInstancePools' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idSpotInstancePools :: Lens.Lens' InstancesDistribution (Lude.Maybe Lude.Int)
idSpotInstancePools = Lens.lens (spotInstancePools :: InstancesDistribution -> Lude.Maybe Lude.Int) (\s a -> s {spotInstancePools = a} :: InstancesDistribution)
{-# DEPRECATED idSpotInstancePools "Use generic-lens or generic-optics with 'spotInstancePools' instead." #-}

-- | The maximum price per unit hour that you are willing to pay for a Spot Instance. If you leave the value at its default (empty), Amazon EC2 Auto Scaling uses the On-Demand price as the maximum Spot price. To remove a value that you previously set, include the property but specify an empty string ("") for the value.
--
-- /Note:/ Consider using 'spotMaxPrice' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idSpotMaxPrice :: Lens.Lens' InstancesDistribution (Lude.Maybe Lude.Text)
idSpotMaxPrice = Lens.lens (spotMaxPrice :: InstancesDistribution -> Lude.Maybe Lude.Text) (\s a -> s {spotMaxPrice = a} :: InstancesDistribution)
{-# DEPRECATED idSpotMaxPrice "Use generic-lens or generic-optics with 'spotMaxPrice' instead." #-}

-- | The minimum amount of the Auto Scaling group's capacity that must be fulfilled by On-Demand Instances. This base portion is provisioned first as your group scales. Defaults to 0 if not specified. If you specify weights for the instance types in the overrides, set the value of @OnDemandBaseCapacity@ in terms of the number of capacity units, and not the number of instances.
--
-- /Note:/ Consider using 'onDemandBaseCapacity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idOnDemandBaseCapacity :: Lens.Lens' InstancesDistribution (Lude.Maybe Lude.Int)
idOnDemandBaseCapacity = Lens.lens (onDemandBaseCapacity :: InstancesDistribution -> Lude.Maybe Lude.Int) (\s a -> s {onDemandBaseCapacity = a} :: InstancesDistribution)
{-# DEPRECATED idOnDemandBaseCapacity "Use generic-lens or generic-optics with 'onDemandBaseCapacity' instead." #-}

-- | Indicates how to allocate instance types to fulfill On-Demand capacity. The only valid value is @prioritized@ , which is also the default value. This strategy uses the order of instance types in the overrides to define the launch priority of each instance type. The first instance type in the array is prioritized higher than the last. If all your On-Demand capacity cannot be fulfilled using your highest priority instance, then the Auto Scaling groups launches the remaining capacity using the second priority instance type, and so on.
--
-- /Note:/ Consider using 'onDemandAllocationStrategy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idOnDemandAllocationStrategy :: Lens.Lens' InstancesDistribution (Lude.Maybe Lude.Text)
idOnDemandAllocationStrategy = Lens.lens (onDemandAllocationStrategy :: InstancesDistribution -> Lude.Maybe Lude.Text) (\s a -> s {onDemandAllocationStrategy = a} :: InstancesDistribution)
{-# DEPRECATED idOnDemandAllocationStrategy "Use generic-lens or generic-optics with 'onDemandAllocationStrategy' instead." #-}

-- | Controls the percentages of On-Demand Instances and Spot Instances for your additional capacity beyond @OnDemandBaseCapacity@ . Expressed as a number (for example, 20 specifies 20% On-Demand Instances, 80% Spot Instances). Defaults to 100 if not specified. If set to 100, only On-Demand Instances are provisioned.
--
-- /Note:/ Consider using 'onDemandPercentageAboveBaseCapacity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idOnDemandPercentageAboveBaseCapacity :: Lens.Lens' InstancesDistribution (Lude.Maybe Lude.Int)
idOnDemandPercentageAboveBaseCapacity = Lens.lens (onDemandPercentageAboveBaseCapacity :: InstancesDistribution -> Lude.Maybe Lude.Int) (\s a -> s {onDemandPercentageAboveBaseCapacity = a} :: InstancesDistribution)
{-# DEPRECATED idOnDemandPercentageAboveBaseCapacity "Use generic-lens or generic-optics with 'onDemandPercentageAboveBaseCapacity' instead." #-}

instance Lude.FromXML InstancesDistribution where
  parseXML x =
    InstancesDistribution'
      Lude.<$> (x Lude..@? "SpotAllocationStrategy")
      Lude.<*> (x Lude..@? "SpotInstancePools")
      Lude.<*> (x Lude..@? "SpotMaxPrice")
      Lude.<*> (x Lude..@? "OnDemandBaseCapacity")
      Lude.<*> (x Lude..@? "OnDemandAllocationStrategy")
      Lude.<*> (x Lude..@? "OnDemandPercentageAboveBaseCapacity")

instance Lude.ToQuery InstancesDistribution where
  toQuery InstancesDistribution' {..} =
    Lude.mconcat
      [ "SpotAllocationStrategy" Lude.=: spotAllocationStrategy,
        "SpotInstancePools" Lude.=: spotInstancePools,
        "SpotMaxPrice" Lude.=: spotMaxPrice,
        "OnDemandBaseCapacity" Lude.=: onDemandBaseCapacity,
        "OnDemandAllocationStrategy" Lude.=: onDemandAllocationStrategy,
        "OnDemandPercentageAboveBaseCapacity"
          Lude.=: onDemandPercentageAboveBaseCapacity
      ]