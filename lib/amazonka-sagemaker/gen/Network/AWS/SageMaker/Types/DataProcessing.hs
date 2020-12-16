{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.DataProcessing
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DataProcessing
  ( DataProcessing (..),

    -- * Smart constructor
    mkDataProcessing,

    -- * Lenses
    dpOutputFilter,
    dpJoinSource,
    dpInputFilter,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.SageMaker.Types.JoinSource

-- | The data structure used to specify the data to be used for inference in a batch transform job and to associate the data that is relevant to the prediction results in the output. The input filter provided allows you to exclude input data that is not needed for inference in a batch transform job. The output filter provided allows you to include input data relevant to interpreting the predictions in the output from the job. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html Associate Prediction Results with their Corresponding Input Records> .
--
-- /See:/ 'mkDataProcessing' smart constructor.
data DataProcessing = DataProcessing'
  { -- | A <https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html#data-processing-operators JSONPath> expression used to select a portion of the joined dataset to save in the output file for a batch transform job. If you want Amazon SageMaker to store the entire input dataset in the output file, leave the default value, @> @ . If you specify indexes that aren't within the dimension size of the joined dataset, you get an error.
    --
    -- Examples: @"$"@ , @"$[0,5:]"@ , @"$['id','SageMakerOutput']"@
    outputFilter :: Lude.Maybe Lude.Text,
    -- | Specifies the source of the data to join with the transformed data. The valid values are @None@ and @Input@ . The default value is @None@ , which specifies not to join the input with the transformed data. If you want the batch transform job to join the original input data with the transformed data, set @JoinSource@ to @Input@ .
    --
    -- For JSON or JSONLines objects, such as a JSON array, Amazon SageMaker adds the transformed data to the input JSON object in an attribute called @SageMakerOutput@ . The joined result for JSON must be a key-value pair object. If the input is not a key-value pair object, Amazon SageMaker creates a new JSON file. In the new JSON file, and the input data is stored under the @SageMakerInput@ key and the results are stored in @SageMakerOutput@ .
    -- For CSV files, Amazon SageMaker combines the transformed data with the input data at the end of the input data and stores it in the output file. The joined data has the joined input data followed by the transformed data and the output is a CSV file.
    joinSource :: Lude.Maybe JoinSource,
    -- | A <https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html#data-processing-operators JSONPath> expression used to select a portion of the input data to pass to the algorithm. Use the @InputFilter@ parameter to exclude fields, such as an ID column, from the input. If you want Amazon SageMaker to pass the entire input dataset to the algorithm, accept the default value @> @ .
    --
    -- Examples: @"$"@ , @"$[1:]"@ , @"$.features"@
    inputFilter :: Lude.Maybe Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DataProcessing' with the minimum fields required to make a request.
--
-- * 'outputFilter' - A <https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html#data-processing-operators JSONPath> expression used to select a portion of the joined dataset to save in the output file for a batch transform job. If you want Amazon SageMaker to store the entire input dataset in the output file, leave the default value, @> @ . If you specify indexes that aren't within the dimension size of the joined dataset, you get an error.
--
-- Examples: @"$"@ , @"$[0,5:]"@ , @"$['id','SageMakerOutput']"@
-- * 'joinSource' - Specifies the source of the data to join with the transformed data. The valid values are @None@ and @Input@ . The default value is @None@ , which specifies not to join the input with the transformed data. If you want the batch transform job to join the original input data with the transformed data, set @JoinSource@ to @Input@ .
--
-- For JSON or JSONLines objects, such as a JSON array, Amazon SageMaker adds the transformed data to the input JSON object in an attribute called @SageMakerOutput@ . The joined result for JSON must be a key-value pair object. If the input is not a key-value pair object, Amazon SageMaker creates a new JSON file. In the new JSON file, and the input data is stored under the @SageMakerInput@ key and the results are stored in @SageMakerOutput@ .
-- For CSV files, Amazon SageMaker combines the transformed data with the input data at the end of the input data and stores it in the output file. The joined data has the joined input data followed by the transformed data and the output is a CSV file.
-- * 'inputFilter' - A <https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html#data-processing-operators JSONPath> expression used to select a portion of the input data to pass to the algorithm. Use the @InputFilter@ parameter to exclude fields, such as an ID column, from the input. If you want Amazon SageMaker to pass the entire input dataset to the algorithm, accept the default value @> @ .
--
-- Examples: @"$"@ , @"$[1:]"@ , @"$.features"@
mkDataProcessing ::
  DataProcessing
mkDataProcessing =
  DataProcessing'
    { outputFilter = Lude.Nothing,
      joinSource = Lude.Nothing,
      inputFilter = Lude.Nothing
    }

-- | A <https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html#data-processing-operators JSONPath> expression used to select a portion of the joined dataset to save in the output file for a batch transform job. If you want Amazon SageMaker to store the entire input dataset in the output file, leave the default value, @> @ . If you specify indexes that aren't within the dimension size of the joined dataset, you get an error.
--
-- Examples: @"$"@ , @"$[0,5:]"@ , @"$['id','SageMakerOutput']"@
--
-- /Note:/ Consider using 'outputFilter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dpOutputFilter :: Lens.Lens' DataProcessing (Lude.Maybe Lude.Text)
dpOutputFilter = Lens.lens (outputFilter :: DataProcessing -> Lude.Maybe Lude.Text) (\s a -> s {outputFilter = a} :: DataProcessing)
{-# DEPRECATED dpOutputFilter "Use generic-lens or generic-optics with 'outputFilter' instead." #-}

-- | Specifies the source of the data to join with the transformed data. The valid values are @None@ and @Input@ . The default value is @None@ , which specifies not to join the input with the transformed data. If you want the batch transform job to join the original input data with the transformed data, set @JoinSource@ to @Input@ .
--
-- For JSON or JSONLines objects, such as a JSON array, Amazon SageMaker adds the transformed data to the input JSON object in an attribute called @SageMakerOutput@ . The joined result for JSON must be a key-value pair object. If the input is not a key-value pair object, Amazon SageMaker creates a new JSON file. In the new JSON file, and the input data is stored under the @SageMakerInput@ key and the results are stored in @SageMakerOutput@ .
-- For CSV files, Amazon SageMaker combines the transformed data with the input data at the end of the input data and stores it in the output file. The joined data has the joined input data followed by the transformed data and the output is a CSV file.
--
-- /Note:/ Consider using 'joinSource' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dpJoinSource :: Lens.Lens' DataProcessing (Lude.Maybe JoinSource)
dpJoinSource = Lens.lens (joinSource :: DataProcessing -> Lude.Maybe JoinSource) (\s a -> s {joinSource = a} :: DataProcessing)
{-# DEPRECATED dpJoinSource "Use generic-lens or generic-optics with 'joinSource' instead." #-}

-- | A <https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html#data-processing-operators JSONPath> expression used to select a portion of the input data to pass to the algorithm. Use the @InputFilter@ parameter to exclude fields, such as an ID column, from the input. If you want Amazon SageMaker to pass the entire input dataset to the algorithm, accept the default value @> @ .
--
-- Examples: @"$"@ , @"$[1:]"@ , @"$.features"@
--
-- /Note:/ Consider using 'inputFilter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dpInputFilter :: Lens.Lens' DataProcessing (Lude.Maybe Lude.Text)
dpInputFilter = Lens.lens (inputFilter :: DataProcessing -> Lude.Maybe Lude.Text) (\s a -> s {inputFilter = a} :: DataProcessing)
{-# DEPRECATED dpInputFilter "Use generic-lens or generic-optics with 'inputFilter' instead." #-}

instance Lude.FromJSON DataProcessing where
  parseJSON =
    Lude.withObject
      "DataProcessing"
      ( \x ->
          DataProcessing'
            Lude.<$> (x Lude..:? "OutputFilter")
            Lude.<*> (x Lude..:? "JoinSource")
            Lude.<*> (x Lude..:? "InputFilter")
      )

instance Lude.ToJSON DataProcessing where
  toJSON DataProcessing' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("OutputFilter" Lude..=) Lude.<$> outputFilter,
            ("JoinSource" Lude..=) Lude.<$> joinSource,
            ("InputFilter" Lude..=) Lude.<$> inputFilter
          ]
      )