-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.HyperParameterTuningJobConfig
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.HyperParameterTuningJobConfig
  ( HyperParameterTuningJobConfig (..),

    -- * Smart constructor
    mkHyperParameterTuningJobConfig,

    -- * Lenses
    hptjcTuningJobCompletionCriteria,
    hptjcParameterRanges,
    hptjcHyperParameterTuningJobObjective,
    hptjcTrainingJobEarlyStoppingType,
    hptjcStrategy,
    hptjcResourceLimits,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.SageMaker.Types.HyperParameterTuningJobObjective
import Network.AWS.SageMaker.Types.HyperParameterTuningJobStrategyType
import Network.AWS.SageMaker.Types.ParameterRanges
import Network.AWS.SageMaker.Types.ResourceLimits
import Network.AWS.SageMaker.Types.TrainingJobEarlyStoppingType
import Network.AWS.SageMaker.Types.TuningJobCompletionCriteria

-- | Configures a hyperparameter tuning job.
--
-- /See:/ 'mkHyperParameterTuningJobConfig' smart constructor.
data HyperParameterTuningJobConfig = HyperParameterTuningJobConfig'
  { tuningJobCompletionCriteria ::
      Lude.Maybe
        TuningJobCompletionCriteria,
    parameterRanges ::
      Lude.Maybe ParameterRanges,
    hyperParameterTuningJobObjective ::
      Lude.Maybe
        HyperParameterTuningJobObjective,
    trainingJobEarlyStoppingType ::
      Lude.Maybe
        TrainingJobEarlyStoppingType,
    strategy ::
      HyperParameterTuningJobStrategyType,
    resourceLimits ::
      ResourceLimits
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'HyperParameterTuningJobConfig' with the minimum fields required to make a request.
--
-- * 'hyperParameterTuningJobObjective' - The 'HyperParameterTuningJobObjective' object that specifies the objective metric for this tuning job.
-- * 'parameterRanges' - The 'ParameterRanges' object that specifies the ranges of hyperparameters that this tuning job searches.
-- * 'resourceLimits' - The 'ResourceLimits' object that specifies the maximum number of training jobs and parallel training jobs for this tuning job.
-- * 'strategy' - Specifies how hyperparameter tuning chooses the combinations of hyperparameter values to use for the training job it launches. To use the Bayesian search strategy, set this to @Bayesian@ . To randomly search, set it to @Random@ . For information about search strategies, see <https://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-how-it-works.html How Hyperparameter Tuning Works> .
-- * 'trainingJobEarlyStoppingType' - Specifies whether to use early stopping for training jobs launched by the hyperparameter tuning job. This can be one of the following values (the default value is @OFF@ ):
--
--
--     * OFF
--
--     * Training jobs launched by the hyperparameter tuning job do not use early stopping.
--
--
--     * AUTO
--
--     * Amazon SageMaker stops training jobs launched by the hyperparameter tuning job when they are unlikely to perform better than previously completed training jobs. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-early-stopping.html Stop Training Jobs Early> .
--
--
-- * 'tuningJobCompletionCriteria' - The tuning job's completion criteria.
mkHyperParameterTuningJobConfig ::
  -- | 'strategy'
  HyperParameterTuningJobStrategyType ->
  -- | 'resourceLimits'
  ResourceLimits ->
  HyperParameterTuningJobConfig
mkHyperParameterTuningJobConfig pStrategy_ pResourceLimits_ =
  HyperParameterTuningJobConfig'
    { tuningJobCompletionCriteria =
        Lude.Nothing,
      parameterRanges = Lude.Nothing,
      hyperParameterTuningJobObjective = Lude.Nothing,
      trainingJobEarlyStoppingType = Lude.Nothing,
      strategy = pStrategy_,
      resourceLimits = pResourceLimits_
    }

-- | The tuning job's completion criteria.
--
-- /Note:/ Consider using 'tuningJobCompletionCriteria' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hptjcTuningJobCompletionCriteria :: Lens.Lens' HyperParameterTuningJobConfig (Lude.Maybe TuningJobCompletionCriteria)
hptjcTuningJobCompletionCriteria = Lens.lens (tuningJobCompletionCriteria :: HyperParameterTuningJobConfig -> Lude.Maybe TuningJobCompletionCriteria) (\s a -> s {tuningJobCompletionCriteria = a} :: HyperParameterTuningJobConfig)
{-# DEPRECATED hptjcTuningJobCompletionCriteria "Use generic-lens or generic-optics with 'tuningJobCompletionCriteria' instead." #-}

-- | The 'ParameterRanges' object that specifies the ranges of hyperparameters that this tuning job searches.
--
-- /Note:/ Consider using 'parameterRanges' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hptjcParameterRanges :: Lens.Lens' HyperParameterTuningJobConfig (Lude.Maybe ParameterRanges)
hptjcParameterRanges = Lens.lens (parameterRanges :: HyperParameterTuningJobConfig -> Lude.Maybe ParameterRanges) (\s a -> s {parameterRanges = a} :: HyperParameterTuningJobConfig)
{-# DEPRECATED hptjcParameterRanges "Use generic-lens or generic-optics with 'parameterRanges' instead." #-}

-- | The 'HyperParameterTuningJobObjective' object that specifies the objective metric for this tuning job.
--
-- /Note:/ Consider using 'hyperParameterTuningJobObjective' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hptjcHyperParameterTuningJobObjective :: Lens.Lens' HyperParameterTuningJobConfig (Lude.Maybe HyperParameterTuningJobObjective)
hptjcHyperParameterTuningJobObjective = Lens.lens (hyperParameterTuningJobObjective :: HyperParameterTuningJobConfig -> Lude.Maybe HyperParameterTuningJobObjective) (\s a -> s {hyperParameterTuningJobObjective = a} :: HyperParameterTuningJobConfig)
{-# DEPRECATED hptjcHyperParameterTuningJobObjective "Use generic-lens or generic-optics with 'hyperParameterTuningJobObjective' instead." #-}

-- | Specifies whether to use early stopping for training jobs launched by the hyperparameter tuning job. This can be one of the following values (the default value is @OFF@ ):
--
--
--     * OFF
--
--     * Training jobs launched by the hyperparameter tuning job do not use early stopping.
--
--
--     * AUTO
--
--     * Amazon SageMaker stops training jobs launched by the hyperparameter tuning job when they are unlikely to perform better than previously completed training jobs. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-early-stopping.html Stop Training Jobs Early> .
--
--
--
-- /Note:/ Consider using 'trainingJobEarlyStoppingType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hptjcTrainingJobEarlyStoppingType :: Lens.Lens' HyperParameterTuningJobConfig (Lude.Maybe TrainingJobEarlyStoppingType)
hptjcTrainingJobEarlyStoppingType = Lens.lens (trainingJobEarlyStoppingType :: HyperParameterTuningJobConfig -> Lude.Maybe TrainingJobEarlyStoppingType) (\s a -> s {trainingJobEarlyStoppingType = a} :: HyperParameterTuningJobConfig)
{-# DEPRECATED hptjcTrainingJobEarlyStoppingType "Use generic-lens or generic-optics with 'trainingJobEarlyStoppingType' instead." #-}

-- | Specifies how hyperparameter tuning chooses the combinations of hyperparameter values to use for the training job it launches. To use the Bayesian search strategy, set this to @Bayesian@ . To randomly search, set it to @Random@ . For information about search strategies, see <https://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-how-it-works.html How Hyperparameter Tuning Works> .
--
-- /Note:/ Consider using 'strategy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hptjcStrategy :: Lens.Lens' HyperParameterTuningJobConfig HyperParameterTuningJobStrategyType
hptjcStrategy = Lens.lens (strategy :: HyperParameterTuningJobConfig -> HyperParameterTuningJobStrategyType) (\s a -> s {strategy = a} :: HyperParameterTuningJobConfig)
{-# DEPRECATED hptjcStrategy "Use generic-lens or generic-optics with 'strategy' instead." #-}

-- | The 'ResourceLimits' object that specifies the maximum number of training jobs and parallel training jobs for this tuning job.
--
-- /Note:/ Consider using 'resourceLimits' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hptjcResourceLimits :: Lens.Lens' HyperParameterTuningJobConfig ResourceLimits
hptjcResourceLimits = Lens.lens (resourceLimits :: HyperParameterTuningJobConfig -> ResourceLimits) (\s a -> s {resourceLimits = a} :: HyperParameterTuningJobConfig)
{-# DEPRECATED hptjcResourceLimits "Use generic-lens or generic-optics with 'resourceLimits' instead." #-}

instance Lude.FromJSON HyperParameterTuningJobConfig where
  parseJSON =
    Lude.withObject
      "HyperParameterTuningJobConfig"
      ( \x ->
          HyperParameterTuningJobConfig'
            Lude.<$> (x Lude..:? "TuningJobCompletionCriteria")
            Lude.<*> (x Lude..:? "ParameterRanges")
            Lude.<*> (x Lude..:? "HyperParameterTuningJobObjective")
            Lude.<*> (x Lude..:? "TrainingJobEarlyStoppingType")
            Lude.<*> (x Lude..: "Strategy")
            Lude.<*> (x Lude..: "ResourceLimits")
      )

instance Lude.ToJSON HyperParameterTuningJobConfig where
  toJSON HyperParameterTuningJobConfig' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("TuningJobCompletionCriteria" Lude..=)
              Lude.<$> tuningJobCompletionCriteria,
            ("ParameterRanges" Lude..=) Lude.<$> parameterRanges,
            ("HyperParameterTuningJobObjective" Lude..=)
              Lude.<$> hyperParameterTuningJobObjective,
            ("TrainingJobEarlyStoppingType" Lude..=)
              Lude.<$> trainingJobEarlyStoppingType,
            Lude.Just ("Strategy" Lude..= strategy),
            Lude.Just ("ResourceLimits" Lude..= resourceLimits)
          ]
      )
