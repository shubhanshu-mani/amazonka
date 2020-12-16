{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScalingPlans.Types.TargetTrackingConfiguration
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types.TargetTrackingConfiguration
  ( TargetTrackingConfiguration (..),

    -- * Smart constructor
    mkTargetTrackingConfiguration,

    -- * Lenses
    ttcEstimatedInstanceWarmup,
    ttcPredefinedScalingMetricSpecification,
    ttcTargetValue,
    ttcScaleInCooldown,
    ttcDisableScaleIn,
    ttcCustomizedScalingMetricSpecification,
    ttcScaleOutCooldown,
  )
where

import Network.AWS.AutoScalingPlans.Types.CustomizedScalingMetricSpecification
import Network.AWS.AutoScalingPlans.Types.PredefinedScalingMetricSpecification
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Describes a target tracking configuration to use with AWS Auto Scaling. Used with 'ScalingInstruction' and 'ScalingPolicy' .
--
-- /See:/ 'mkTargetTrackingConfiguration' smart constructor.
data TargetTrackingConfiguration = TargetTrackingConfiguration'
  { -- | The estimated time, in seconds, until a newly launched instance can contribute to the CloudWatch metrics. This value is used only if the resource is an Auto Scaling group.
    estimatedInstanceWarmup :: Lude.Maybe Lude.Int,
    -- | A predefined metric. You can specify either a predefined metric or a customized metric.
    predefinedScalingMetricSpecification :: Lude.Maybe PredefinedScalingMetricSpecification,
    -- | The target value for the metric. The range is 8.515920e-109 to 1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2).
    targetValue :: Lude.Double,
    -- | The amount of time, in seconds, after a scale in activity completes before another scale in activity can start. This value is not used if the scalable resource is an Auto Scaling group.
    --
    -- The cooldown period is used to block subsequent scale in requests until it has expired. The intention is to scale in conservatively to protect your application's availability. However, if another alarm triggers a scale-out policy during the cooldown period after a scale-in, AWS Auto Scaling scales out your scalable target immediately.
    scaleInCooldown :: Lude.Maybe Lude.Int,
    -- | Indicates whether scale in by the target tracking scaling policy is disabled. If the value is @true@ , scale in is disabled and the target tracking scaling policy doesn't remove capacity from the scalable resource. Otherwise, scale in is enabled and the target tracking scaling policy can remove capacity from the scalable resource.
    --
    -- The default value is @false@ .
    disableScaleIn :: Lude.Maybe Lude.Bool,
    -- | A customized metric. You can specify either a predefined metric or a customized metric.
    customizedScalingMetricSpecification :: Lude.Maybe CustomizedScalingMetricSpecification,
    -- | The amount of time, in seconds, after a scale-out activity completes before another scale-out activity can start. This value is not used if the scalable resource is an Auto Scaling group.
    --
    -- While the cooldown period is in effect, the capacity that has been added by the previous scale-out event that initiated the cooldown is calculated as part of the desired capacity for the next scale out. The intention is to continuously (but not excessively) scale out.
    scaleOutCooldown :: Lude.Maybe Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'TargetTrackingConfiguration' with the minimum fields required to make a request.
--
-- * 'estimatedInstanceWarmup' - The estimated time, in seconds, until a newly launched instance can contribute to the CloudWatch metrics. This value is used only if the resource is an Auto Scaling group.
-- * 'predefinedScalingMetricSpecification' - A predefined metric. You can specify either a predefined metric or a customized metric.
-- * 'targetValue' - The target value for the metric. The range is 8.515920e-109 to 1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2).
-- * 'scaleInCooldown' - The amount of time, in seconds, after a scale in activity completes before another scale in activity can start. This value is not used if the scalable resource is an Auto Scaling group.
--
-- The cooldown period is used to block subsequent scale in requests until it has expired. The intention is to scale in conservatively to protect your application's availability. However, if another alarm triggers a scale-out policy during the cooldown period after a scale-in, AWS Auto Scaling scales out your scalable target immediately.
-- * 'disableScaleIn' - Indicates whether scale in by the target tracking scaling policy is disabled. If the value is @true@ , scale in is disabled and the target tracking scaling policy doesn't remove capacity from the scalable resource. Otherwise, scale in is enabled and the target tracking scaling policy can remove capacity from the scalable resource.
--
-- The default value is @false@ .
-- * 'customizedScalingMetricSpecification' - A customized metric. You can specify either a predefined metric or a customized metric.
-- * 'scaleOutCooldown' - The amount of time, in seconds, after a scale-out activity completes before another scale-out activity can start. This value is not used if the scalable resource is an Auto Scaling group.
--
-- While the cooldown period is in effect, the capacity that has been added by the previous scale-out event that initiated the cooldown is calculated as part of the desired capacity for the next scale out. The intention is to continuously (but not excessively) scale out.
mkTargetTrackingConfiguration ::
  -- | 'targetValue'
  Lude.Double ->
  TargetTrackingConfiguration
mkTargetTrackingConfiguration pTargetValue_ =
  TargetTrackingConfiguration'
    { estimatedInstanceWarmup =
        Lude.Nothing,
      predefinedScalingMetricSpecification = Lude.Nothing,
      targetValue = pTargetValue_,
      scaleInCooldown = Lude.Nothing,
      disableScaleIn = Lude.Nothing,
      customizedScalingMetricSpecification = Lude.Nothing,
      scaleOutCooldown = Lude.Nothing
    }

-- | The estimated time, in seconds, until a newly launched instance can contribute to the CloudWatch metrics. This value is used only if the resource is an Auto Scaling group.
--
-- /Note:/ Consider using 'estimatedInstanceWarmup' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ttcEstimatedInstanceWarmup :: Lens.Lens' TargetTrackingConfiguration (Lude.Maybe Lude.Int)
ttcEstimatedInstanceWarmup = Lens.lens (estimatedInstanceWarmup :: TargetTrackingConfiguration -> Lude.Maybe Lude.Int) (\s a -> s {estimatedInstanceWarmup = a} :: TargetTrackingConfiguration)
{-# DEPRECATED ttcEstimatedInstanceWarmup "Use generic-lens or generic-optics with 'estimatedInstanceWarmup' instead." #-}

-- | A predefined metric. You can specify either a predefined metric or a customized metric.
--
-- /Note:/ Consider using 'predefinedScalingMetricSpecification' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ttcPredefinedScalingMetricSpecification :: Lens.Lens' TargetTrackingConfiguration (Lude.Maybe PredefinedScalingMetricSpecification)
ttcPredefinedScalingMetricSpecification = Lens.lens (predefinedScalingMetricSpecification :: TargetTrackingConfiguration -> Lude.Maybe PredefinedScalingMetricSpecification) (\s a -> s {predefinedScalingMetricSpecification = a} :: TargetTrackingConfiguration)
{-# DEPRECATED ttcPredefinedScalingMetricSpecification "Use generic-lens or generic-optics with 'predefinedScalingMetricSpecification' instead." #-}

-- | The target value for the metric. The range is 8.515920e-109 to 1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2).
--
-- /Note:/ Consider using 'targetValue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ttcTargetValue :: Lens.Lens' TargetTrackingConfiguration Lude.Double
ttcTargetValue = Lens.lens (targetValue :: TargetTrackingConfiguration -> Lude.Double) (\s a -> s {targetValue = a} :: TargetTrackingConfiguration)
{-# DEPRECATED ttcTargetValue "Use generic-lens or generic-optics with 'targetValue' instead." #-}

-- | The amount of time, in seconds, after a scale in activity completes before another scale in activity can start. This value is not used if the scalable resource is an Auto Scaling group.
--
-- The cooldown period is used to block subsequent scale in requests until it has expired. The intention is to scale in conservatively to protect your application's availability. However, if another alarm triggers a scale-out policy during the cooldown period after a scale-in, AWS Auto Scaling scales out your scalable target immediately.
--
-- /Note:/ Consider using 'scaleInCooldown' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ttcScaleInCooldown :: Lens.Lens' TargetTrackingConfiguration (Lude.Maybe Lude.Int)
ttcScaleInCooldown = Lens.lens (scaleInCooldown :: TargetTrackingConfiguration -> Lude.Maybe Lude.Int) (\s a -> s {scaleInCooldown = a} :: TargetTrackingConfiguration)
{-# DEPRECATED ttcScaleInCooldown "Use generic-lens or generic-optics with 'scaleInCooldown' instead." #-}

-- | Indicates whether scale in by the target tracking scaling policy is disabled. If the value is @true@ , scale in is disabled and the target tracking scaling policy doesn't remove capacity from the scalable resource. Otherwise, scale in is enabled and the target tracking scaling policy can remove capacity from the scalable resource.
--
-- The default value is @false@ .
--
-- /Note:/ Consider using 'disableScaleIn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ttcDisableScaleIn :: Lens.Lens' TargetTrackingConfiguration (Lude.Maybe Lude.Bool)
ttcDisableScaleIn = Lens.lens (disableScaleIn :: TargetTrackingConfiguration -> Lude.Maybe Lude.Bool) (\s a -> s {disableScaleIn = a} :: TargetTrackingConfiguration)
{-# DEPRECATED ttcDisableScaleIn "Use generic-lens or generic-optics with 'disableScaleIn' instead." #-}

-- | A customized metric. You can specify either a predefined metric or a customized metric.
--
-- /Note:/ Consider using 'customizedScalingMetricSpecification' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ttcCustomizedScalingMetricSpecification :: Lens.Lens' TargetTrackingConfiguration (Lude.Maybe CustomizedScalingMetricSpecification)
ttcCustomizedScalingMetricSpecification = Lens.lens (customizedScalingMetricSpecification :: TargetTrackingConfiguration -> Lude.Maybe CustomizedScalingMetricSpecification) (\s a -> s {customizedScalingMetricSpecification = a} :: TargetTrackingConfiguration)
{-# DEPRECATED ttcCustomizedScalingMetricSpecification "Use generic-lens or generic-optics with 'customizedScalingMetricSpecification' instead." #-}

-- | The amount of time, in seconds, after a scale-out activity completes before another scale-out activity can start. This value is not used if the scalable resource is an Auto Scaling group.
--
-- While the cooldown period is in effect, the capacity that has been added by the previous scale-out event that initiated the cooldown is calculated as part of the desired capacity for the next scale out. The intention is to continuously (but not excessively) scale out.
--
-- /Note:/ Consider using 'scaleOutCooldown' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ttcScaleOutCooldown :: Lens.Lens' TargetTrackingConfiguration (Lude.Maybe Lude.Int)
ttcScaleOutCooldown = Lens.lens (scaleOutCooldown :: TargetTrackingConfiguration -> Lude.Maybe Lude.Int) (\s a -> s {scaleOutCooldown = a} :: TargetTrackingConfiguration)
{-# DEPRECATED ttcScaleOutCooldown "Use generic-lens or generic-optics with 'scaleOutCooldown' instead." #-}

instance Lude.FromJSON TargetTrackingConfiguration where
  parseJSON =
    Lude.withObject
      "TargetTrackingConfiguration"
      ( \x ->
          TargetTrackingConfiguration'
            Lude.<$> (x Lude..:? "EstimatedInstanceWarmup")
            Lude.<*> (x Lude..:? "PredefinedScalingMetricSpecification")
            Lude.<*> (x Lude..: "TargetValue")
            Lude.<*> (x Lude..:? "ScaleInCooldown")
            Lude.<*> (x Lude..:? "DisableScaleIn")
            Lude.<*> (x Lude..:? "CustomizedScalingMetricSpecification")
            Lude.<*> (x Lude..:? "ScaleOutCooldown")
      )

instance Lude.ToJSON TargetTrackingConfiguration where
  toJSON TargetTrackingConfiguration' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("EstimatedInstanceWarmup" Lude..=)
              Lude.<$> estimatedInstanceWarmup,
            ("PredefinedScalingMetricSpecification" Lude..=)
              Lude.<$> predefinedScalingMetricSpecification,
            Lude.Just ("TargetValue" Lude..= targetValue),
            ("ScaleInCooldown" Lude..=) Lude.<$> scaleInCooldown,
            ("DisableScaleIn" Lude..=) Lude.<$> disableScaleIn,
            ("CustomizedScalingMetricSpecification" Lude..=)
              Lude.<$> customizedScalingMetricSpecification,
            ("ScaleOutCooldown" Lude..=) Lude.<$> scaleOutCooldown
          ]
      )