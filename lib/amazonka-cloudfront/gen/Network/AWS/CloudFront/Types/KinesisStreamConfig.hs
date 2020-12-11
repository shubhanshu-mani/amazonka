-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.KinesisStreamConfig
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.KinesisStreamConfig
  ( KinesisStreamConfig (..),

    -- * Smart constructor
    mkKinesisStreamConfig,

    -- * Lenses
    kscRoleARN,
    kscStreamARN,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Contains information about the Amazon Kinesis data stream where you are sending real-time log data.
--
-- /See:/ 'mkKinesisStreamConfig' smart constructor.
data KinesisStreamConfig = KinesisStreamConfig'
  { roleARN ::
      Lude.Text,
    streamARN :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'KinesisStreamConfig' with the minimum fields required to make a request.
--
-- * 'roleARN' - The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that CloudFront can use to send real-time log data to your Kinesis data stream.
--
-- For more information the IAM role, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-iam-role Real-time log configuration IAM role> in the /Amazon CloudFront Developer Guide/ .
-- * 'streamARN' - The Amazon Resource Name (ARN) of the Kinesis data stream where you are sending real-time log data.
mkKinesisStreamConfig ::
  -- | 'roleARN'
  Lude.Text ->
  -- | 'streamARN'
  Lude.Text ->
  KinesisStreamConfig
mkKinesisStreamConfig pRoleARN_ pStreamARN_ =
  KinesisStreamConfig'
    { roleARN = pRoleARN_,
      streamARN = pStreamARN_
    }

-- | The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that CloudFront can use to send real-time log data to your Kinesis data stream.
--
-- For more information the IAM role, see <https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-iam-role Real-time log configuration IAM role> in the /Amazon CloudFront Developer Guide/ .
--
-- /Note:/ Consider using 'roleARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
kscRoleARN :: Lens.Lens' KinesisStreamConfig Lude.Text
kscRoleARN = Lens.lens (roleARN :: KinesisStreamConfig -> Lude.Text) (\s a -> s {roleARN = a} :: KinesisStreamConfig)
{-# DEPRECATED kscRoleARN "Use generic-lens or generic-optics with 'roleARN' instead." #-}

-- | The Amazon Resource Name (ARN) of the Kinesis data stream where you are sending real-time log data.
--
-- /Note:/ Consider using 'streamARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
kscStreamARN :: Lens.Lens' KinesisStreamConfig Lude.Text
kscStreamARN = Lens.lens (streamARN :: KinesisStreamConfig -> Lude.Text) (\s a -> s {streamARN = a} :: KinesisStreamConfig)
{-# DEPRECATED kscStreamARN "Use generic-lens or generic-optics with 'streamARN' instead." #-}

instance Lude.FromXML KinesisStreamConfig where
  parseXML x =
    KinesisStreamConfig'
      Lude.<$> (x Lude..@ "RoleARN") Lude.<*> (x Lude..@ "StreamARN")

instance Lude.ToXML KinesisStreamConfig where
  toXML KinesisStreamConfig' {..} =
    Lude.mconcat
      ["RoleARN" Lude.@= roleARN, "StreamARN" Lude.@= streamARN]
