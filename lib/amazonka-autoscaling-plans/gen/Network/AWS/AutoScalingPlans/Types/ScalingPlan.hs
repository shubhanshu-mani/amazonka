-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScalingPlans.Types.ScalingPlan
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types.ScalingPlan
  ( ScalingPlan (..),

    -- * Smart constructor
    mkScalingPlan,

    -- * Lenses
    spCreationTime,
    spStatusStartTime,
    spStatusMessage,
    spScalingPlanName,
    spScalingPlanVersion,
    spApplicationSource,
    spScalingInstructions,
    spStatusCode,
  )
where

import Network.AWS.AutoScalingPlans.Types.ApplicationSource
import Network.AWS.AutoScalingPlans.Types.ScalingInstruction
import Network.AWS.AutoScalingPlans.Types.ScalingPlanStatusCode
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Represents a scaling plan.
--
-- /See:/ 'mkScalingPlan' smart constructor.
data ScalingPlan = ScalingPlan'
  { creationTime ::
      Lude.Maybe Lude.Timestamp,
    statusStartTime :: Lude.Maybe Lude.Timestamp,
    statusMessage :: Lude.Maybe Lude.Text,
    scalingPlanName :: Lude.Text,
    scalingPlanVersion :: Lude.Integer,
    applicationSource :: ApplicationSource,
    scalingInstructions :: [ScalingInstruction],
    statusCode :: ScalingPlanStatusCode
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ScalingPlan' with the minimum fields required to make a request.
--
-- * 'applicationSource' - The application source.
-- * 'creationTime' - The Unix time stamp when the scaling plan was created.
-- * 'scalingInstructions' - The scaling instructions.
-- * 'scalingPlanName' - The name of the scaling plan.
-- * 'scalingPlanVersion' - The version number of the scaling plan.
-- * 'statusCode' - The status of the scaling plan.
--
--
--     * @Active@ - The scaling plan is active.
--
--
--     * @ActiveWithProblems@ - The scaling plan is active, but the scaling configuration for one or more resources could not be applied.
--
--
--     * @CreationInProgress@ - The scaling plan is being created.
--
--
--     * @CreationFailed@ - The scaling plan could not be created.
--
--
--     * @DeletionInProgress@ - The scaling plan is being deleted.
--
--
--     * @DeletionFailed@ - The scaling plan could not be deleted.
--
--
--     * @UpdateInProgress@ - The scaling plan is being updated.
--
--
--     * @UpdateFailed@ - The scaling plan could not be updated.
--
--
-- * 'statusMessage' - A simple message about the current status of the scaling plan.
-- * 'statusStartTime' - The Unix time stamp when the scaling plan entered the current status.
mkScalingPlan ::
  -- | 'scalingPlanName'
  Lude.Text ->
  -- | 'scalingPlanVersion'
  Lude.Integer ->
  -- | 'applicationSource'
  ApplicationSource ->
  -- | 'statusCode'
  ScalingPlanStatusCode ->
  ScalingPlan
mkScalingPlan
  pScalingPlanName_
  pScalingPlanVersion_
  pApplicationSource_
  pStatusCode_ =
    ScalingPlan'
      { creationTime = Lude.Nothing,
        statusStartTime = Lude.Nothing,
        statusMessage = Lude.Nothing,
        scalingPlanName = pScalingPlanName_,
        scalingPlanVersion = pScalingPlanVersion_,
        applicationSource = pApplicationSource_,
        scalingInstructions = Lude.mempty,
        statusCode = pStatusCode_
      }

-- | The Unix time stamp when the scaling plan was created.
--
-- /Note:/ Consider using 'creationTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spCreationTime :: Lens.Lens' ScalingPlan (Lude.Maybe Lude.Timestamp)
spCreationTime = Lens.lens (creationTime :: ScalingPlan -> Lude.Maybe Lude.Timestamp) (\s a -> s {creationTime = a} :: ScalingPlan)
{-# DEPRECATED spCreationTime "Use generic-lens or generic-optics with 'creationTime' instead." #-}

-- | The Unix time stamp when the scaling plan entered the current status.
--
-- /Note:/ Consider using 'statusStartTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spStatusStartTime :: Lens.Lens' ScalingPlan (Lude.Maybe Lude.Timestamp)
spStatusStartTime = Lens.lens (statusStartTime :: ScalingPlan -> Lude.Maybe Lude.Timestamp) (\s a -> s {statusStartTime = a} :: ScalingPlan)
{-# DEPRECATED spStatusStartTime "Use generic-lens or generic-optics with 'statusStartTime' instead." #-}

-- | A simple message about the current status of the scaling plan.
--
-- /Note:/ Consider using 'statusMessage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spStatusMessage :: Lens.Lens' ScalingPlan (Lude.Maybe Lude.Text)
spStatusMessage = Lens.lens (statusMessage :: ScalingPlan -> Lude.Maybe Lude.Text) (\s a -> s {statusMessage = a} :: ScalingPlan)
{-# DEPRECATED spStatusMessage "Use generic-lens or generic-optics with 'statusMessage' instead." #-}

-- | The name of the scaling plan.
--
-- /Note:/ Consider using 'scalingPlanName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spScalingPlanName :: Lens.Lens' ScalingPlan Lude.Text
spScalingPlanName = Lens.lens (scalingPlanName :: ScalingPlan -> Lude.Text) (\s a -> s {scalingPlanName = a} :: ScalingPlan)
{-# DEPRECATED spScalingPlanName "Use generic-lens or generic-optics with 'scalingPlanName' instead." #-}

-- | The version number of the scaling plan.
--
-- /Note:/ Consider using 'scalingPlanVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spScalingPlanVersion :: Lens.Lens' ScalingPlan Lude.Integer
spScalingPlanVersion = Lens.lens (scalingPlanVersion :: ScalingPlan -> Lude.Integer) (\s a -> s {scalingPlanVersion = a} :: ScalingPlan)
{-# DEPRECATED spScalingPlanVersion "Use generic-lens or generic-optics with 'scalingPlanVersion' instead." #-}

-- | The application source.
--
-- /Note:/ Consider using 'applicationSource' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spApplicationSource :: Lens.Lens' ScalingPlan ApplicationSource
spApplicationSource = Lens.lens (applicationSource :: ScalingPlan -> ApplicationSource) (\s a -> s {applicationSource = a} :: ScalingPlan)
{-# DEPRECATED spApplicationSource "Use generic-lens or generic-optics with 'applicationSource' instead." #-}

-- | The scaling instructions.
--
-- /Note:/ Consider using 'scalingInstructions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spScalingInstructions :: Lens.Lens' ScalingPlan [ScalingInstruction]
spScalingInstructions = Lens.lens (scalingInstructions :: ScalingPlan -> [ScalingInstruction]) (\s a -> s {scalingInstructions = a} :: ScalingPlan)
{-# DEPRECATED spScalingInstructions "Use generic-lens or generic-optics with 'scalingInstructions' instead." #-}

-- | The status of the scaling plan.
--
--
--     * @Active@ - The scaling plan is active.
--
--
--     * @ActiveWithProblems@ - The scaling plan is active, but the scaling configuration for one or more resources could not be applied.
--
--
--     * @CreationInProgress@ - The scaling plan is being created.
--
--
--     * @CreationFailed@ - The scaling plan could not be created.
--
--
--     * @DeletionInProgress@ - The scaling plan is being deleted.
--
--
--     * @DeletionFailed@ - The scaling plan could not be deleted.
--
--
--     * @UpdateInProgress@ - The scaling plan is being updated.
--
--
--     * @UpdateFailed@ - The scaling plan could not be updated.
--
--
--
-- /Note:/ Consider using 'statusCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spStatusCode :: Lens.Lens' ScalingPlan ScalingPlanStatusCode
spStatusCode = Lens.lens (statusCode :: ScalingPlan -> ScalingPlanStatusCode) (\s a -> s {statusCode = a} :: ScalingPlan)
{-# DEPRECATED spStatusCode "Use generic-lens or generic-optics with 'statusCode' instead." #-}

instance Lude.FromJSON ScalingPlan where
  parseJSON =
    Lude.withObject
      "ScalingPlan"
      ( \x ->
          ScalingPlan'
            Lude.<$> (x Lude..:? "CreationTime")
            Lude.<*> (x Lude..:? "StatusStartTime")
            Lude.<*> (x Lude..:? "StatusMessage")
            Lude.<*> (x Lude..: "ScalingPlanName")
            Lude.<*> (x Lude..: "ScalingPlanVersion")
            Lude.<*> (x Lude..: "ApplicationSource")
            Lude.<*> (x Lude..:? "ScalingInstructions" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..: "StatusCode")
      )
