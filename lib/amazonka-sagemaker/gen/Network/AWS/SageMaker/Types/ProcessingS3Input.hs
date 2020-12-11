-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProcessingS3Input
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProcessingS3Input
  ( ProcessingS3Input (..),

    -- * Smart constructor
    mkProcessingS3Input,

    -- * Lenses
    psiS3DataDistributionType,
    psiS3CompressionType,
    psiS3URI,
    psiLocalPath,
    psiS3DataType,
    psiS3InputMode,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.SageMaker.Types.ProcessingS3CompressionType
import Network.AWS.SageMaker.Types.ProcessingS3DataDistributionType
import Network.AWS.SageMaker.Types.ProcessingS3DataType
import Network.AWS.SageMaker.Types.ProcessingS3InputMode

-- | Information about where and how you want to obtain the inputs for an processing job.
--
-- /See:/ 'mkProcessingS3Input' smart constructor.
data ProcessingS3Input = ProcessingS3Input'
  { s3DataDistributionType ::
      Lude.Maybe ProcessingS3DataDistributionType,
    s3CompressionType ::
      Lude.Maybe ProcessingS3CompressionType,
    s3URI :: Lude.Text,
    localPath :: Lude.Text,
    s3DataType :: ProcessingS3DataType,
    s3InputMode :: ProcessingS3InputMode
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ProcessingS3Input' with the minimum fields required to make a request.
--
-- * 'localPath' - The local path to the Amazon S3 bucket where you want Amazon SageMaker to download the inputs to run a processing job. @LocalPath@ is an absolute path to the input data.
-- * 's3CompressionType' - Whether to use @Gzip@ compression for Amazon S3 storage.
-- * 's3DataDistributionType' - Whether the data stored in Amazon S3 is @FullyReplicated@ or @ShardedByS3Key@ .
-- * 's3DataType' - Whether you use an @S3Prefix@ or a @ManifestFile@ for the data type. If you choose @S3Prefix@ , @S3Uri@ identifies a key name prefix. Amazon SageMaker uses all objects with the specified key name prefix for the processing job. If you choose @ManifestFile@ , @S3Uri@ identifies an object that is a manifest file containing a list of object keys that you want Amazon SageMaker to use for the processing job.
-- * 's3InputMode' - Whether to use @File@ or @Pipe@ input mode. In @File@ mode, Amazon SageMaker copies the data from the input source onto the local Amazon Elastic Block Store (Amazon EBS) volumes before starting your training algorithm. This is the most commonly used input mode. In @Pipe@ mode, Amazon SageMaker streams input data from the source directly to your algorithm without using the EBS volume.
-- * 's3URI' - The URI for the Amazon S3 storage where you want Amazon SageMaker to download the artifacts needed to run a processing job.
mkProcessingS3Input ::
  -- | 's3URI'
  Lude.Text ->
  -- | 'localPath'
  Lude.Text ->
  -- | 's3DataType'
  ProcessingS3DataType ->
  -- | 's3InputMode'
  ProcessingS3InputMode ->
  ProcessingS3Input
mkProcessingS3Input pS3URI_ pLocalPath_ pS3DataType_ pS3InputMode_ =
  ProcessingS3Input'
    { s3DataDistributionType = Lude.Nothing,
      s3CompressionType = Lude.Nothing,
      s3URI = pS3URI_,
      localPath = pLocalPath_,
      s3DataType = pS3DataType_,
      s3InputMode = pS3InputMode_
    }

-- | Whether the data stored in Amazon S3 is @FullyReplicated@ or @ShardedByS3Key@ .
--
-- /Note:/ Consider using 's3DataDistributionType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psiS3DataDistributionType :: Lens.Lens' ProcessingS3Input (Lude.Maybe ProcessingS3DataDistributionType)
psiS3DataDistributionType = Lens.lens (s3DataDistributionType :: ProcessingS3Input -> Lude.Maybe ProcessingS3DataDistributionType) (\s a -> s {s3DataDistributionType = a} :: ProcessingS3Input)
{-# DEPRECATED psiS3DataDistributionType "Use generic-lens or generic-optics with 's3DataDistributionType' instead." #-}

-- | Whether to use @Gzip@ compression for Amazon S3 storage.
--
-- /Note:/ Consider using 's3CompressionType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psiS3CompressionType :: Lens.Lens' ProcessingS3Input (Lude.Maybe ProcessingS3CompressionType)
psiS3CompressionType = Lens.lens (s3CompressionType :: ProcessingS3Input -> Lude.Maybe ProcessingS3CompressionType) (\s a -> s {s3CompressionType = a} :: ProcessingS3Input)
{-# DEPRECATED psiS3CompressionType "Use generic-lens or generic-optics with 's3CompressionType' instead." #-}

-- | The URI for the Amazon S3 storage where you want Amazon SageMaker to download the artifacts needed to run a processing job.
--
-- /Note:/ Consider using 's3URI' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psiS3URI :: Lens.Lens' ProcessingS3Input Lude.Text
psiS3URI = Lens.lens (s3URI :: ProcessingS3Input -> Lude.Text) (\s a -> s {s3URI = a} :: ProcessingS3Input)
{-# DEPRECATED psiS3URI "Use generic-lens or generic-optics with 's3URI' instead." #-}

-- | The local path to the Amazon S3 bucket where you want Amazon SageMaker to download the inputs to run a processing job. @LocalPath@ is an absolute path to the input data.
--
-- /Note:/ Consider using 'localPath' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psiLocalPath :: Lens.Lens' ProcessingS3Input Lude.Text
psiLocalPath = Lens.lens (localPath :: ProcessingS3Input -> Lude.Text) (\s a -> s {localPath = a} :: ProcessingS3Input)
{-# DEPRECATED psiLocalPath "Use generic-lens or generic-optics with 'localPath' instead." #-}

-- | Whether you use an @S3Prefix@ or a @ManifestFile@ for the data type. If you choose @S3Prefix@ , @S3Uri@ identifies a key name prefix. Amazon SageMaker uses all objects with the specified key name prefix for the processing job. If you choose @ManifestFile@ , @S3Uri@ identifies an object that is a manifest file containing a list of object keys that you want Amazon SageMaker to use for the processing job.
--
-- /Note:/ Consider using 's3DataType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psiS3DataType :: Lens.Lens' ProcessingS3Input ProcessingS3DataType
psiS3DataType = Lens.lens (s3DataType :: ProcessingS3Input -> ProcessingS3DataType) (\s a -> s {s3DataType = a} :: ProcessingS3Input)
{-# DEPRECATED psiS3DataType "Use generic-lens or generic-optics with 's3DataType' instead." #-}

-- | Whether to use @File@ or @Pipe@ input mode. In @File@ mode, Amazon SageMaker copies the data from the input source onto the local Amazon Elastic Block Store (Amazon EBS) volumes before starting your training algorithm. This is the most commonly used input mode. In @Pipe@ mode, Amazon SageMaker streams input data from the source directly to your algorithm without using the EBS volume.
--
-- /Note:/ Consider using 's3InputMode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psiS3InputMode :: Lens.Lens' ProcessingS3Input ProcessingS3InputMode
psiS3InputMode = Lens.lens (s3InputMode :: ProcessingS3Input -> ProcessingS3InputMode) (\s a -> s {s3InputMode = a} :: ProcessingS3Input)
{-# DEPRECATED psiS3InputMode "Use generic-lens or generic-optics with 's3InputMode' instead." #-}

instance Lude.FromJSON ProcessingS3Input where
  parseJSON =
    Lude.withObject
      "ProcessingS3Input"
      ( \x ->
          ProcessingS3Input'
            Lude.<$> (x Lude..:? "S3DataDistributionType")
            Lude.<*> (x Lude..:? "S3CompressionType")
            Lude.<*> (x Lude..: "S3Uri")
            Lude.<*> (x Lude..: "LocalPath")
            Lude.<*> (x Lude..: "S3DataType")
            Lude.<*> (x Lude..: "S3InputMode")
      )

instance Lude.ToJSON ProcessingS3Input where
  toJSON ProcessingS3Input' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("S3DataDistributionType" Lude..=)
              Lude.<$> s3DataDistributionType,
            ("S3CompressionType" Lude..=) Lude.<$> s3CompressionType,
            Lude.Just ("S3Uri" Lude..= s3URI),
            Lude.Just ("LocalPath" Lude..= localPath),
            Lude.Just ("S3DataType" Lude..= s3DataType),
            Lude.Just ("S3InputMode" Lude..= s3InputMode)
          ]
      )
