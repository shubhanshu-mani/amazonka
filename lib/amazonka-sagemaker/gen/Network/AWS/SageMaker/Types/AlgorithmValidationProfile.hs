{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AlgorithmValidationProfile
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AlgorithmValidationProfile
  ( AlgorithmValidationProfile (..),

    -- * Smart constructor
    mkAlgorithmValidationProfile,

    -- * Lenses
    avpTrainingJobDefinition,
    avpTransformJobDefinition,
    avpProfileName,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.SageMaker.Types.TrainingJobDefinition
import Network.AWS.SageMaker.Types.TransformJobDefinition

-- | Defines a training job and a batch transform job that Amazon SageMaker runs to validate your algorithm.
--
-- The data provided in the validation profile is made available to your buyers on AWS Marketplace.
--
-- /See:/ 'mkAlgorithmValidationProfile' smart constructor.
data AlgorithmValidationProfile = AlgorithmValidationProfile'
  { -- | The @TrainingJobDefinition@ object that describes the training job that Amazon SageMaker runs to validate your algorithm.
    trainingJobDefinition :: TrainingJobDefinition,
    -- | The @TransformJobDefinition@ object that describes the transform job that Amazon SageMaker runs to validate your algorithm.
    transformJobDefinition :: Lude.Maybe TransformJobDefinition,
    -- | The name of the profile for the algorithm. The name must have 1 to 63 characters. Valid characters are a-z, A-Z, 0-9, and - (hyphen).
    profileName :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'AlgorithmValidationProfile' with the minimum fields required to make a request.
--
-- * 'trainingJobDefinition' - The @TrainingJobDefinition@ object that describes the training job that Amazon SageMaker runs to validate your algorithm.
-- * 'transformJobDefinition' - The @TransformJobDefinition@ object that describes the transform job that Amazon SageMaker runs to validate your algorithm.
-- * 'profileName' - The name of the profile for the algorithm. The name must have 1 to 63 characters. Valid characters are a-z, A-Z, 0-9, and - (hyphen).
mkAlgorithmValidationProfile ::
  -- | 'trainingJobDefinition'
  TrainingJobDefinition ->
  -- | 'profileName'
  Lude.Text ->
  AlgorithmValidationProfile
mkAlgorithmValidationProfile pTrainingJobDefinition_ pProfileName_ =
  AlgorithmValidationProfile'
    { trainingJobDefinition =
        pTrainingJobDefinition_,
      transformJobDefinition = Lude.Nothing,
      profileName = pProfileName_
    }

-- | The @TrainingJobDefinition@ object that describes the training job that Amazon SageMaker runs to validate your algorithm.
--
-- /Note:/ Consider using 'trainingJobDefinition' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
avpTrainingJobDefinition :: Lens.Lens' AlgorithmValidationProfile TrainingJobDefinition
avpTrainingJobDefinition = Lens.lens (trainingJobDefinition :: AlgorithmValidationProfile -> TrainingJobDefinition) (\s a -> s {trainingJobDefinition = a} :: AlgorithmValidationProfile)
{-# DEPRECATED avpTrainingJobDefinition "Use generic-lens or generic-optics with 'trainingJobDefinition' instead." #-}

-- | The @TransformJobDefinition@ object that describes the transform job that Amazon SageMaker runs to validate your algorithm.
--
-- /Note:/ Consider using 'transformJobDefinition' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
avpTransformJobDefinition :: Lens.Lens' AlgorithmValidationProfile (Lude.Maybe TransformJobDefinition)
avpTransformJobDefinition = Lens.lens (transformJobDefinition :: AlgorithmValidationProfile -> Lude.Maybe TransformJobDefinition) (\s a -> s {transformJobDefinition = a} :: AlgorithmValidationProfile)
{-# DEPRECATED avpTransformJobDefinition "Use generic-lens or generic-optics with 'transformJobDefinition' instead." #-}

-- | The name of the profile for the algorithm. The name must have 1 to 63 characters. Valid characters are a-z, A-Z, 0-9, and - (hyphen).
--
-- /Note:/ Consider using 'profileName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
avpProfileName :: Lens.Lens' AlgorithmValidationProfile Lude.Text
avpProfileName = Lens.lens (profileName :: AlgorithmValidationProfile -> Lude.Text) (\s a -> s {profileName = a} :: AlgorithmValidationProfile)
{-# DEPRECATED avpProfileName "Use generic-lens or generic-optics with 'profileName' instead." #-}

instance Lude.FromJSON AlgorithmValidationProfile where
  parseJSON =
    Lude.withObject
      "AlgorithmValidationProfile"
      ( \x ->
          AlgorithmValidationProfile'
            Lude.<$> (x Lude..: "TrainingJobDefinition")
            Lude.<*> (x Lude..:? "TransformJobDefinition")
            Lude.<*> (x Lude..: "ProfileName")
      )

instance Lude.ToJSON AlgorithmValidationProfile where
  toJSON AlgorithmValidationProfile' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("TrainingJobDefinition" Lude..= trainingJobDefinition),
            ("TransformJobDefinition" Lude..=) Lude.<$> transformJobDefinition,
            Lude.Just ("ProfileName" Lude..= profileName)
          ]
      )