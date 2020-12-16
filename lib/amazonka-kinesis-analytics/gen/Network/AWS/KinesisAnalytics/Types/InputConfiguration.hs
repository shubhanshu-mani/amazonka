{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisAnalytics.Types.InputConfiguration
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalytics.Types.InputConfiguration
  ( InputConfiguration (..),

    -- * Smart constructor
    mkInputConfiguration,

    -- * Lenses
    icInputStartingPositionConfiguration,
    icId,
  )
where

import Network.AWS.KinesisAnalytics.Types.InputStartingPositionConfiguration
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | When you start your application, you provide this configuration, which identifies the input source and the point in the input source at which you want the application to start processing records.
--
-- /See:/ 'mkInputConfiguration' smart constructor.
data InputConfiguration = InputConfiguration'
  { -- | Point at which you want the application to start processing records from the streaming source.
    inputStartingPositionConfiguration :: InputStartingPositionConfiguration,
    -- | Input source ID. You can get this ID by calling the <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html DescribeApplication> operation.
    id :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'InputConfiguration' with the minimum fields required to make a request.
--
-- * 'inputStartingPositionConfiguration' - Point at which you want the application to start processing records from the streaming source.
-- * 'id' - Input source ID. You can get this ID by calling the <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html DescribeApplication> operation.
mkInputConfiguration ::
  -- | 'inputStartingPositionConfiguration'
  InputStartingPositionConfiguration ->
  -- | 'id'
  Lude.Text ->
  InputConfiguration
mkInputConfiguration pInputStartingPositionConfiguration_ pId_ =
  InputConfiguration'
    { inputStartingPositionConfiguration =
        pInputStartingPositionConfiguration_,
      id = pId_
    }

-- | Point at which you want the application to start processing records from the streaming source.
--
-- /Note:/ Consider using 'inputStartingPositionConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
icInputStartingPositionConfiguration :: Lens.Lens' InputConfiguration InputStartingPositionConfiguration
icInputStartingPositionConfiguration = Lens.lens (inputStartingPositionConfiguration :: InputConfiguration -> InputStartingPositionConfiguration) (\s a -> s {inputStartingPositionConfiguration = a} :: InputConfiguration)
{-# DEPRECATED icInputStartingPositionConfiguration "Use generic-lens or generic-optics with 'inputStartingPositionConfiguration' instead." #-}

-- | Input source ID. You can get this ID by calling the <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html DescribeApplication> operation.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
icId :: Lens.Lens' InputConfiguration Lude.Text
icId = Lens.lens (id :: InputConfiguration -> Lude.Text) (\s a -> s {id = a} :: InputConfiguration)
{-# DEPRECATED icId "Use generic-lens or generic-optics with 'id' instead." #-}

instance Lude.ToJSON InputConfiguration where
  toJSON InputConfiguration' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just
              ( "InputStartingPositionConfiguration"
                  Lude..= inputStartingPositionConfiguration
              ),
            Lude.Just ("Id" Lude..= id)
          ]
      )