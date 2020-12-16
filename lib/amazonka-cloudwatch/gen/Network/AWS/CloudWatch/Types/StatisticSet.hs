{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatch.Types.StatisticSet
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.StatisticSet
  ( StatisticSet (..),

    -- * Smart constructor
    mkStatisticSet,

    -- * Lenses
    ssSampleCount,
    ssMaximum,
    ssMinimum,
    ssSum,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Represents a set of statistics that describes a specific metric.
--
-- /See:/ 'mkStatisticSet' smart constructor.
data StatisticSet = StatisticSet'
  { -- | The number of samples used for the statistic set.
    sampleCount :: Lude.Double,
    -- | The maximum value of the sample set.
    maximum :: Lude.Double,
    -- | The minimum value of the sample set.
    minimum :: Lude.Double,
    -- | The sum of values for the sample set.
    sum :: Lude.Double
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'StatisticSet' with the minimum fields required to make a request.
--
-- * 'sampleCount' - The number of samples used for the statistic set.
-- * 'maximum' - The maximum value of the sample set.
-- * 'minimum' - The minimum value of the sample set.
-- * 'sum' - The sum of values for the sample set.
mkStatisticSet ::
  -- | 'sampleCount'
  Lude.Double ->
  -- | 'maximum'
  Lude.Double ->
  -- | 'minimum'
  Lude.Double ->
  -- | 'sum'
  Lude.Double ->
  StatisticSet
mkStatisticSet pSampleCount_ pMaximum_ pMinimum_ pSum_ =
  StatisticSet'
    { sampleCount = pSampleCount_,
      maximum = pMaximum_,
      minimum = pMinimum_,
      sum = pSum_
    }

-- | The number of samples used for the statistic set.
--
-- /Note:/ Consider using 'sampleCount' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssSampleCount :: Lens.Lens' StatisticSet Lude.Double
ssSampleCount = Lens.lens (sampleCount :: StatisticSet -> Lude.Double) (\s a -> s {sampleCount = a} :: StatisticSet)
{-# DEPRECATED ssSampleCount "Use generic-lens or generic-optics with 'sampleCount' instead." #-}

-- | The maximum value of the sample set.
--
-- /Note:/ Consider using 'maximum' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssMaximum :: Lens.Lens' StatisticSet Lude.Double
ssMaximum = Lens.lens (maximum :: StatisticSet -> Lude.Double) (\s a -> s {maximum = a} :: StatisticSet)
{-# DEPRECATED ssMaximum "Use generic-lens or generic-optics with 'maximum' instead." #-}

-- | The minimum value of the sample set.
--
-- /Note:/ Consider using 'minimum' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssMinimum :: Lens.Lens' StatisticSet Lude.Double
ssMinimum = Lens.lens (minimum :: StatisticSet -> Lude.Double) (\s a -> s {minimum = a} :: StatisticSet)
{-# DEPRECATED ssMinimum "Use generic-lens or generic-optics with 'minimum' instead." #-}

-- | The sum of values for the sample set.
--
-- /Note:/ Consider using 'sum' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssSum :: Lens.Lens' StatisticSet Lude.Double
ssSum = Lens.lens (sum :: StatisticSet -> Lude.Double) (\s a -> s {sum = a} :: StatisticSet)
{-# DEPRECATED ssSum "Use generic-lens or generic-optics with 'sum' instead." #-}

instance Lude.ToQuery StatisticSet where
  toQuery StatisticSet' {..} =
    Lude.mconcat
      [ "SampleCount" Lude.=: sampleCount,
        "Maximum" Lude.=: maximum,
        "Minimum" Lude.=: minimum,
        "Sum" Lude.=: sum
      ]