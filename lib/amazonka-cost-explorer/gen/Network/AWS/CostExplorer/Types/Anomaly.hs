{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.Anomaly
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.Anomaly
  ( Anomaly (..),

    -- * Smart constructor
    mkAnomaly,

    -- * Lenses
    aAnomalyStartDate,
    aDimensionValue,
    aAnomalyId,
    aRootCauses,
    aAnomalyEndDate,
    aImpact,
    aAnomalyScore,
    aFeedback,
    aMonitorARN,
  )
where

import Network.AWS.CostExplorer.Types.AnomalyFeedbackType
import Network.AWS.CostExplorer.Types.AnomalyScore
import Network.AWS.CostExplorer.Types.Impact
import Network.AWS.CostExplorer.Types.RootCause
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | An unusual cost pattern. This consists of the detailed metadata and the current status of the anomaly object.
--
-- /See:/ 'mkAnomaly' smart constructor.
data Anomaly = Anomaly'
  { -- | The first day the anomaly is detected.
    anomalyStartDate :: Lude.Maybe Lude.Text,
    -- | The dimension for the anomaly. For example, an AWS service in a service monitor.
    dimensionValue :: Lude.Maybe Lude.Text,
    -- | The unique identifier for the anomaly.
    anomalyId :: Lude.Text,
    -- | The list of identified root causes for the anomaly.
    rootCauses :: Lude.Maybe [RootCause],
    -- | The last day the anomaly is detected.
    anomalyEndDate :: Lude.Maybe Lude.Text,
    -- | The dollar impact for the anomaly.
    impact :: Impact,
    -- | The latest and maximum score for the anomaly.
    anomalyScore :: AnomalyScore,
    -- | The feedback value.
    feedback :: Lude.Maybe AnomalyFeedbackType,
    -- | The Amazon Resource Name (ARN) for the cost monitor that generated this anomaly.
    monitorARN :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'Anomaly' with the minimum fields required to make a request.
--
-- * 'anomalyStartDate' - The first day the anomaly is detected.
-- * 'dimensionValue' - The dimension for the anomaly. For example, an AWS service in a service monitor.
-- * 'anomalyId' - The unique identifier for the anomaly.
-- * 'rootCauses' - The list of identified root causes for the anomaly.
-- * 'anomalyEndDate' - The last day the anomaly is detected.
-- * 'impact' - The dollar impact for the anomaly.
-- * 'anomalyScore' - The latest and maximum score for the anomaly.
-- * 'feedback' - The feedback value.
-- * 'monitorARN' - The Amazon Resource Name (ARN) for the cost monitor that generated this anomaly.
mkAnomaly ::
  -- | 'anomalyId'
  Lude.Text ->
  -- | 'impact'
  Impact ->
  -- | 'anomalyScore'
  AnomalyScore ->
  -- | 'monitorARN'
  Lude.Text ->
  Anomaly
mkAnomaly pAnomalyId_ pImpact_ pAnomalyScore_ pMonitorARN_ =
  Anomaly'
    { anomalyStartDate = Lude.Nothing,
      dimensionValue = Lude.Nothing,
      anomalyId = pAnomalyId_,
      rootCauses = Lude.Nothing,
      anomalyEndDate = Lude.Nothing,
      impact = pImpact_,
      anomalyScore = pAnomalyScore_,
      feedback = Lude.Nothing,
      monitorARN = pMonitorARN_
    }

-- | The first day the anomaly is detected.
--
-- /Note:/ Consider using 'anomalyStartDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aAnomalyStartDate :: Lens.Lens' Anomaly (Lude.Maybe Lude.Text)
aAnomalyStartDate = Lens.lens (anomalyStartDate :: Anomaly -> Lude.Maybe Lude.Text) (\s a -> s {anomalyStartDate = a} :: Anomaly)
{-# DEPRECATED aAnomalyStartDate "Use generic-lens or generic-optics with 'anomalyStartDate' instead." #-}

-- | The dimension for the anomaly. For example, an AWS service in a service monitor.
--
-- /Note:/ Consider using 'dimensionValue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aDimensionValue :: Lens.Lens' Anomaly (Lude.Maybe Lude.Text)
aDimensionValue = Lens.lens (dimensionValue :: Anomaly -> Lude.Maybe Lude.Text) (\s a -> s {dimensionValue = a} :: Anomaly)
{-# DEPRECATED aDimensionValue "Use generic-lens or generic-optics with 'dimensionValue' instead." #-}

-- | The unique identifier for the anomaly.
--
-- /Note:/ Consider using 'anomalyId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aAnomalyId :: Lens.Lens' Anomaly Lude.Text
aAnomalyId = Lens.lens (anomalyId :: Anomaly -> Lude.Text) (\s a -> s {anomalyId = a} :: Anomaly)
{-# DEPRECATED aAnomalyId "Use generic-lens or generic-optics with 'anomalyId' instead." #-}

-- | The list of identified root causes for the anomaly.
--
-- /Note:/ Consider using 'rootCauses' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aRootCauses :: Lens.Lens' Anomaly (Lude.Maybe [RootCause])
aRootCauses = Lens.lens (rootCauses :: Anomaly -> Lude.Maybe [RootCause]) (\s a -> s {rootCauses = a} :: Anomaly)
{-# DEPRECATED aRootCauses "Use generic-lens or generic-optics with 'rootCauses' instead." #-}

-- | The last day the anomaly is detected.
--
-- /Note:/ Consider using 'anomalyEndDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aAnomalyEndDate :: Lens.Lens' Anomaly (Lude.Maybe Lude.Text)
aAnomalyEndDate = Lens.lens (anomalyEndDate :: Anomaly -> Lude.Maybe Lude.Text) (\s a -> s {anomalyEndDate = a} :: Anomaly)
{-# DEPRECATED aAnomalyEndDate "Use generic-lens or generic-optics with 'anomalyEndDate' instead." #-}

-- | The dollar impact for the anomaly.
--
-- /Note:/ Consider using 'impact' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aImpact :: Lens.Lens' Anomaly Impact
aImpact = Lens.lens (impact :: Anomaly -> Impact) (\s a -> s {impact = a} :: Anomaly)
{-# DEPRECATED aImpact "Use generic-lens or generic-optics with 'impact' instead." #-}

-- | The latest and maximum score for the anomaly.
--
-- /Note:/ Consider using 'anomalyScore' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aAnomalyScore :: Lens.Lens' Anomaly AnomalyScore
aAnomalyScore = Lens.lens (anomalyScore :: Anomaly -> AnomalyScore) (\s a -> s {anomalyScore = a} :: Anomaly)
{-# DEPRECATED aAnomalyScore "Use generic-lens or generic-optics with 'anomalyScore' instead." #-}

-- | The feedback value.
--
-- /Note:/ Consider using 'feedback' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aFeedback :: Lens.Lens' Anomaly (Lude.Maybe AnomalyFeedbackType)
aFeedback = Lens.lens (feedback :: Anomaly -> Lude.Maybe AnomalyFeedbackType) (\s a -> s {feedback = a} :: Anomaly)
{-# DEPRECATED aFeedback "Use generic-lens or generic-optics with 'feedback' instead." #-}

-- | The Amazon Resource Name (ARN) for the cost monitor that generated this anomaly.
--
-- /Note:/ Consider using 'monitorARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aMonitorARN :: Lens.Lens' Anomaly Lude.Text
aMonitorARN = Lens.lens (monitorARN :: Anomaly -> Lude.Text) (\s a -> s {monitorARN = a} :: Anomaly)
{-# DEPRECATED aMonitorARN "Use generic-lens or generic-optics with 'monitorARN' instead." #-}

instance Lude.FromJSON Anomaly where
  parseJSON =
    Lude.withObject
      "Anomaly"
      ( \x ->
          Anomaly'
            Lude.<$> (x Lude..:? "AnomalyStartDate")
            Lude.<*> (x Lude..:? "DimensionValue")
            Lude.<*> (x Lude..: "AnomalyId")
            Lude.<*> (x Lude..:? "RootCauses" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..:? "AnomalyEndDate")
            Lude.<*> (x Lude..: "Impact")
            Lude.<*> (x Lude..: "AnomalyScore")
            Lude.<*> (x Lude..:? "Feedback")
            Lude.<*> (x Lude..: "MonitorArn")
      )