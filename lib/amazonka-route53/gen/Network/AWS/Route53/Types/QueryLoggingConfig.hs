{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.Types.QueryLoggingConfig
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.QueryLoggingConfig
  ( QueryLoggingConfig (..),

    -- * Smart constructor
    mkQueryLoggingConfig,

    -- * Lenses
    qlcHostedZoneId,
    qlcCloudWatchLogsLogGroupARN,
    qlcId,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.Route53.Internal

-- | A complex type that contains information about a configuration for DNS query logging.
--
-- /See:/ 'mkQueryLoggingConfig' smart constructor.
data QueryLoggingConfig = QueryLoggingConfig'
  { -- | The ID of the hosted zone that CloudWatch Logs is logging queries for.
    hostedZoneId :: ResourceId,
    -- | The Amazon Resource Name (ARN) of the CloudWatch Logs log group that Amazon Route 53 is publishing logs to.
    cloudWatchLogsLogGroupARN :: Lude.Text,
    -- | The ID for a configuration for DNS query logging.
    id :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'QueryLoggingConfig' with the minimum fields required to make a request.
--
-- * 'hostedZoneId' - The ID of the hosted zone that CloudWatch Logs is logging queries for.
-- * 'cloudWatchLogsLogGroupARN' - The Amazon Resource Name (ARN) of the CloudWatch Logs log group that Amazon Route 53 is publishing logs to.
-- * 'id' - The ID for a configuration for DNS query logging.
mkQueryLoggingConfig ::
  -- | 'hostedZoneId'
  ResourceId ->
  -- | 'cloudWatchLogsLogGroupARN'
  Lude.Text ->
  -- | 'id'
  Lude.Text ->
  QueryLoggingConfig
mkQueryLoggingConfig
  pHostedZoneId_
  pCloudWatchLogsLogGroupARN_
  pId_ =
    QueryLoggingConfig'
      { hostedZoneId = pHostedZoneId_,
        cloudWatchLogsLogGroupARN = pCloudWatchLogsLogGroupARN_,
        id = pId_
      }

-- | The ID of the hosted zone that CloudWatch Logs is logging queries for.
--
-- /Note:/ Consider using 'hostedZoneId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
qlcHostedZoneId :: Lens.Lens' QueryLoggingConfig ResourceId
qlcHostedZoneId = Lens.lens (hostedZoneId :: QueryLoggingConfig -> ResourceId) (\s a -> s {hostedZoneId = a} :: QueryLoggingConfig)
{-# DEPRECATED qlcHostedZoneId "Use generic-lens or generic-optics with 'hostedZoneId' instead." #-}

-- | The Amazon Resource Name (ARN) of the CloudWatch Logs log group that Amazon Route 53 is publishing logs to.
--
-- /Note:/ Consider using 'cloudWatchLogsLogGroupARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
qlcCloudWatchLogsLogGroupARN :: Lens.Lens' QueryLoggingConfig Lude.Text
qlcCloudWatchLogsLogGroupARN = Lens.lens (cloudWatchLogsLogGroupARN :: QueryLoggingConfig -> Lude.Text) (\s a -> s {cloudWatchLogsLogGroupARN = a} :: QueryLoggingConfig)
{-# DEPRECATED qlcCloudWatchLogsLogGroupARN "Use generic-lens or generic-optics with 'cloudWatchLogsLogGroupARN' instead." #-}

-- | The ID for a configuration for DNS query logging.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
qlcId :: Lens.Lens' QueryLoggingConfig Lude.Text
qlcId = Lens.lens (id :: QueryLoggingConfig -> Lude.Text) (\s a -> s {id = a} :: QueryLoggingConfig)
{-# DEPRECATED qlcId "Use generic-lens or generic-optics with 'id' instead." #-}

instance Lude.FromXML QueryLoggingConfig where
  parseXML x =
    QueryLoggingConfig'
      Lude.<$> (x Lude..@ "HostedZoneId")
      Lude.<*> (x Lude..@ "CloudWatchLogsLogGroupArn")
      Lude.<*> (x Lude..@ "Id")