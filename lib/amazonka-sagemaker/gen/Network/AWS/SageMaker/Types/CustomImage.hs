{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.CustomImage
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CustomImage
  ( CustomImage (..),

    -- * Smart constructor
    mkCustomImage,

    -- * Lenses
    ciAppImageConfigName,
    ciImageVersionNumber,
    ciImageName,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | A custom SageMaker image. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/studio-byoi.html Bring your own SageMaker image> .
--
-- /See:/ 'mkCustomImage' smart constructor.
data CustomImage = CustomImage'
  { -- | The name of the AppImageConfig.
    appImageConfigName :: Lude.Text,
    -- | The version number of the CustomImage.
    imageVersionNumber :: Lude.Maybe Lude.Natural,
    -- | The name of the CustomImage. Must be unique to your account.
    imageName :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CustomImage' with the minimum fields required to make a request.
--
-- * 'appImageConfigName' - The name of the AppImageConfig.
-- * 'imageVersionNumber' - The version number of the CustomImage.
-- * 'imageName' - The name of the CustomImage. Must be unique to your account.
mkCustomImage ::
  -- | 'appImageConfigName'
  Lude.Text ->
  -- | 'imageName'
  Lude.Text ->
  CustomImage
mkCustomImage pAppImageConfigName_ pImageName_ =
  CustomImage'
    { appImageConfigName = pAppImageConfigName_,
      imageVersionNumber = Lude.Nothing,
      imageName = pImageName_
    }

-- | The name of the AppImageConfig.
--
-- /Note:/ Consider using 'appImageConfigName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ciAppImageConfigName :: Lens.Lens' CustomImage Lude.Text
ciAppImageConfigName = Lens.lens (appImageConfigName :: CustomImage -> Lude.Text) (\s a -> s {appImageConfigName = a} :: CustomImage)
{-# DEPRECATED ciAppImageConfigName "Use generic-lens or generic-optics with 'appImageConfigName' instead." #-}

-- | The version number of the CustomImage.
--
-- /Note:/ Consider using 'imageVersionNumber' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ciImageVersionNumber :: Lens.Lens' CustomImage (Lude.Maybe Lude.Natural)
ciImageVersionNumber = Lens.lens (imageVersionNumber :: CustomImage -> Lude.Maybe Lude.Natural) (\s a -> s {imageVersionNumber = a} :: CustomImage)
{-# DEPRECATED ciImageVersionNumber "Use generic-lens or generic-optics with 'imageVersionNumber' instead." #-}

-- | The name of the CustomImage. Must be unique to your account.
--
-- /Note:/ Consider using 'imageName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ciImageName :: Lens.Lens' CustomImage Lude.Text
ciImageName = Lens.lens (imageName :: CustomImage -> Lude.Text) (\s a -> s {imageName = a} :: CustomImage)
{-# DEPRECATED ciImageName "Use generic-lens or generic-optics with 'imageName' instead." #-}

instance Lude.FromJSON CustomImage where
  parseJSON =
    Lude.withObject
      "CustomImage"
      ( \x ->
          CustomImage'
            Lude.<$> (x Lude..: "AppImageConfigName")
            Lude.<*> (x Lude..:? "ImageVersionNumber")
            Lude.<*> (x Lude..: "ImageName")
      )

instance Lude.ToJSON CustomImage where
  toJSON CustomImage' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("AppImageConfigName" Lude..= appImageConfigName),
            ("ImageVersionNumber" Lude..=) Lude.<$> imageVersionNumber,
            Lude.Just ("ImageName" Lude..= imageName)
          ]
      )