{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
  ( AutoScalingTargetTrackingScalingPolicyConfigurationUpdate (..),

    -- * Smart constructor
    mkAutoScalingTargetTrackingScalingPolicyConfigurationUpdate,

    -- * Lenses
    asttspcuTargetValue,
    asttspcuScaleInCooldown,
    asttspcuDisableScaleIn,
    asttspcuScaleOutCooldown,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Represents the settings of a target tracking scaling policy that will be modified.
--
-- /See:/ 'mkAutoScalingTargetTrackingScalingPolicyConfigurationUpdate' smart constructor.
data AutoScalingTargetTrackingScalingPolicyConfigurationUpdate = AutoScalingTargetTrackingScalingPolicyConfigurationUpdate'
  { -- | The target value for the metric. The range is 8.515920e-109 to 1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2).
    targetValue :: Lude.Double,
    -- | The amount of time, in seconds, after a scale in activity completes before another scale in activity can start. The cooldown period is used to block subsequent scale in requests until it has expired. You should scale in conservatively to protect your application's availability. However, if another alarm triggers a scale out policy during the cooldown period after a scale-in, application auto scaling scales out your scalable target immediately.
    scaleInCooldown :: Lude.Maybe Lude.Int,
    -- | Indicates whether scale in by the target tracking policy is disabled. If the value is true, scale in is disabled and the target tracking policy won't remove capacity from the scalable resource. Otherwise, scale in is enabled and the target tracking policy can remove capacity from the scalable resource. The default value is false.
    disableScaleIn :: Lude.Maybe Lude.Bool,
    -- | The amount of time, in seconds, after a scale out activity completes before another scale out activity can start. While the cooldown period is in effect, the capacity that has been added by the previous scale out event that initiated the cooldown is calculated as part of the desired capacity for the next scale out. You should continuously (but not excessively) scale out.
    scaleOutCooldown :: Lude.Maybe Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'AutoScalingTargetTrackingScalingPolicyConfigurationUpdate' with the minimum fields required to make a request.
--
-- * 'targetValue' - The target value for the metric. The range is 8.515920e-109 to 1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2).
-- * 'scaleInCooldown' - The amount of time, in seconds, after a scale in activity completes before another scale in activity can start. The cooldown period is used to block subsequent scale in requests until it has expired. You should scale in conservatively to protect your application's availability. However, if another alarm triggers a scale out policy during the cooldown period after a scale-in, application auto scaling scales out your scalable target immediately.
-- * 'disableScaleIn' - Indicates whether scale in by the target tracking policy is disabled. If the value is true, scale in is disabled and the target tracking policy won't remove capacity from the scalable resource. Otherwise, scale in is enabled and the target tracking policy can remove capacity from the scalable resource. The default value is false.
-- * 'scaleOutCooldown' - The amount of time, in seconds, after a scale out activity completes before another scale out activity can start. While the cooldown period is in effect, the capacity that has been added by the previous scale out event that initiated the cooldown is calculated as part of the desired capacity for the next scale out. You should continuously (but not excessively) scale out.
mkAutoScalingTargetTrackingScalingPolicyConfigurationUpdate ::
  -- | 'targetValue'
  Lude.Double ->
  AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
mkAutoScalingTargetTrackingScalingPolicyConfigurationUpdate
  pTargetValue_ =
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate'
      { targetValue =
          pTargetValue_,
        scaleInCooldown = Lude.Nothing,
        disableScaleIn = Lude.Nothing,
        scaleOutCooldown = Lude.Nothing
      }

-- | The target value for the metric. The range is 8.515920e-109 to 1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2).
--
-- /Note:/ Consider using 'targetValue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asttspcuTargetValue :: Lens.Lens' AutoScalingTargetTrackingScalingPolicyConfigurationUpdate Lude.Double
asttspcuTargetValue = Lens.lens (targetValue :: AutoScalingTargetTrackingScalingPolicyConfigurationUpdate -> Lude.Double) (\s a -> s {targetValue = a} :: AutoScalingTargetTrackingScalingPolicyConfigurationUpdate)
{-# DEPRECATED asttspcuTargetValue "Use generic-lens or generic-optics with 'targetValue' instead." #-}

-- | The amount of time, in seconds, after a scale in activity completes before another scale in activity can start. The cooldown period is used to block subsequent scale in requests until it has expired. You should scale in conservatively to protect your application's availability. However, if another alarm triggers a scale out policy during the cooldown period after a scale-in, application auto scaling scales out your scalable target immediately.
--
-- /Note:/ Consider using 'scaleInCooldown' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asttspcuScaleInCooldown :: Lens.Lens' AutoScalingTargetTrackingScalingPolicyConfigurationUpdate (Lude.Maybe Lude.Int)
asttspcuScaleInCooldown = Lens.lens (scaleInCooldown :: AutoScalingTargetTrackingScalingPolicyConfigurationUpdate -> Lude.Maybe Lude.Int) (\s a -> s {scaleInCooldown = a} :: AutoScalingTargetTrackingScalingPolicyConfigurationUpdate)
{-# DEPRECATED asttspcuScaleInCooldown "Use generic-lens or generic-optics with 'scaleInCooldown' instead." #-}

-- | Indicates whether scale in by the target tracking policy is disabled. If the value is true, scale in is disabled and the target tracking policy won't remove capacity from the scalable resource. Otherwise, scale in is enabled and the target tracking policy can remove capacity from the scalable resource. The default value is false.
--
-- /Note:/ Consider using 'disableScaleIn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asttspcuDisableScaleIn :: Lens.Lens' AutoScalingTargetTrackingScalingPolicyConfigurationUpdate (Lude.Maybe Lude.Bool)
asttspcuDisableScaleIn = Lens.lens (disableScaleIn :: AutoScalingTargetTrackingScalingPolicyConfigurationUpdate -> Lude.Maybe Lude.Bool) (\s a -> s {disableScaleIn = a} :: AutoScalingTargetTrackingScalingPolicyConfigurationUpdate)
{-# DEPRECATED asttspcuDisableScaleIn "Use generic-lens or generic-optics with 'disableScaleIn' instead." #-}

-- | The amount of time, in seconds, after a scale out activity completes before another scale out activity can start. While the cooldown period is in effect, the capacity that has been added by the previous scale out event that initiated the cooldown is calculated as part of the desired capacity for the next scale out. You should continuously (but not excessively) scale out.
--
-- /Note:/ Consider using 'scaleOutCooldown' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
asttspcuScaleOutCooldown :: Lens.Lens' AutoScalingTargetTrackingScalingPolicyConfigurationUpdate (Lude.Maybe Lude.Int)
asttspcuScaleOutCooldown = Lens.lens (scaleOutCooldown :: AutoScalingTargetTrackingScalingPolicyConfigurationUpdate -> Lude.Maybe Lude.Int) (\s a -> s {scaleOutCooldown = a} :: AutoScalingTargetTrackingScalingPolicyConfigurationUpdate)
{-# DEPRECATED asttspcuScaleOutCooldown "Use generic-lens or generic-optics with 'scaleOutCooldown' instead." #-}

instance
  Lude.ToJSON
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
  where
  toJSON
    AutoScalingTargetTrackingScalingPolicyConfigurationUpdate' {..} =
      Lude.object
        ( Lude.catMaybes
            [ Lude.Just ("TargetValue" Lude..= targetValue),
              ("ScaleInCooldown" Lude..=) Lude.<$> scaleInCooldown,
              ("DisableScaleIn" Lude..=) Lude.<$> disableScaleIn,
              ("ScaleOutCooldown" Lude..=) Lude.<$> scaleOutCooldown
            ]
        )