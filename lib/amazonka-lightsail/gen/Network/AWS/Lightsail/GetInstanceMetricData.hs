{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.GetInstanceMetricData
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the data points for the specified Amazon Lightsail instance metric, given an instance name.
--
-- Metrics report the utilization of your resources, and the error counts generated by them. Monitor and collect metric data regularly to maintain the reliability, availability, and performance of your resources.
module Network.AWS.Lightsail.GetInstanceMetricData
  ( -- * Creating a request
    GetInstanceMetricData (..),
    mkGetInstanceMetricData,

    -- ** Request lenses
    gimdInstanceName,
    gimdMetricName,
    gimdPeriod,
    gimdStartTime,
    gimdEndTime,
    gimdUnit,
    gimdStatistics,

    -- * Destructuring the response
    GetInstanceMetricDataResponse (..),
    mkGetInstanceMetricDataResponse,

    -- ** Response lenses
    gimdrsMetricName,
    gimdrsMetricData,
    gimdrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Lightsail.Types
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkGetInstanceMetricData' smart constructor.
data GetInstanceMetricData = GetInstanceMetricData'
  { instanceName ::
      Lude.Text,
    metricName :: InstanceMetricName,
    period :: Lude.Natural,
    startTime :: Lude.Timestamp,
    endTime :: Lude.Timestamp,
    unit :: MetricUnit,
    statistics :: [MetricStatistic]
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetInstanceMetricData' with the minimum fields required to make a request.
--
-- * 'endTime' - The end time of the time period.
-- * 'instanceName' - The name of the instance for which you want to get metrics data.
-- * 'metricName' - The metric for which you want to return information.
--
-- Valid instance metric names are listed below, along with the most useful @statistics@ to include in your request, and the published @unit@ value.
--
--     * __@BurstCapacityPercentage@ __ - The percentage of CPU performance available for your instance to burst above its baseline. Your instance continuously accrues and consumes burst capacity. Burst capacity stops accruing when your instance's @BurstCapacityPercentage@ reaches 100%. For more information, see <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-viewing-instance-burst-capacity Viewing instance burst capacity in Amazon Lightsail> .
-- @Statistics@ : The most useful statistics are @Maximum@ and @Average@ .
-- @Unit@ : The published unit is @Percent@ .
--
--
--     * __@BurstCapacityTime@ __ - The available amount of time for your instance to burst at 100% CPU utilization. Your instance continuously accrues and consumes burst capacity. Burst capacity time stops accruing when your instance's @BurstCapacityPercentage@ metric reaches 100%.
-- Burst capacity time is consumed at the full rate only when your instance operates at 100% CPU utilization. For example, if your instance operates at 50% CPU utilization in the burstable zone for a 5-minute period, then it consumes CPU burst capacity minutes at a 50% rate in that period. Your instance consumed 2 minutes and 30 seconds of CPU burst capacity minutes in the 5-minute period. For more information, see <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-viewing-instance-burst-capacity Viewing instance burst capacity in Amazon Lightsail> .
-- @Statistics@ : The most useful statistics are @Maximum@ and @Average@ .
-- @Unit@ : The published unit is @Seconds@ .
--
--
--     * __@CPUUtilization@ __ - The percentage of allocated compute units that are currently in use on the instance. This metric identifies the processing power to run the applications on the instance. Tools in your operating system can show a lower percentage than Lightsail when the instance is not allocated a full processor core.
-- @Statistics@ : The most useful statistics are @Maximum@ and @Average@ .
-- @Unit@ : The published unit is @Percent@ .
--
--
--     * __@NetworkIn@ __ - The number of bytes received on all network interfaces by the instance. This metric identifies the volume of incoming network traffic to the instance. The number reported is the number of bytes received during the period. Because this metric is reported in 5-minute intervals, divide the reported number by 300 to find Bytes/second.
-- @Statistics@ : The most useful statistic is @Sum@ .
-- @Unit@ : The published unit is @Bytes@ .
--
--
--     * __@NetworkOut@ __ - The number of bytes sent out on all network interfaces by the instance. This metric identifies the volume of outgoing network traffic from the instance. The number reported is the number of bytes sent during the period. Because this metric is reported in 5-minute intervals, divide the reported number by 300 to find Bytes/second.
-- @Statistics@ : The most useful statistic is @Sum@ .
-- @Unit@ : The published unit is @Bytes@ .
--
--
--     * __@StatusCheckFailed@ __ - Reports whether the instance passed or failed both the instance status check and the system status check. This metric can be either 0 (passed) or 1 (failed). This metric data is available in 1-minute (60 seconds) granularity.
-- @Statistics@ : The most useful statistic is @Sum@ .
-- @Unit@ : The published unit is @Count@ .
--
--
--     * __@StatusCheckFailed_Instance@ __ - Reports whether the instance passed or failed the instance status check. This metric can be either 0 (passed) or 1 (failed). This metric data is available in 1-minute (60 seconds) granularity.
-- @Statistics@ : The most useful statistic is @Sum@ .
-- @Unit@ : The published unit is @Count@ .
--
--
--     * __@StatusCheckFailed_System@ __ - Reports whether the instance passed or failed the system status check. This metric can be either 0 (passed) or 1 (failed). This metric data is available in 1-minute (60 seconds) granularity.
-- @Statistics@ : The most useful statistic is @Sum@ .
-- @Unit@ : The published unit is @Count@ .
--
--
-- * 'period' - The granularity, in seconds, of the returned data points.
--
-- The @StatusCheckFailed@ , @StatusCheckFailed_Instance@ , and @StatusCheckFailed_System@ instance metric data is available in 1-minute (60 seconds) granularity. All other instance metric data is available in 5-minute (300 seconds) granularity.
-- * 'startTime' - The start time of the time period.
-- * 'statistics' - The statistic for the metric.
--
-- The following statistics are available:
--
--     * @Minimum@ - The lowest value observed during the specified period. Use this value to determine low volumes of activity for your application.
--
--
--     * @Maximum@ - The highest value observed during the specified period. Use this value to determine high volumes of activity for your application.
--
--
--     * @Sum@ - All values submitted for the matching metric added together. You can use this statistic to determine the total volume of a metric.
--
--
--     * @Average@ - The value of Sum / SampleCount during the specified period. By comparing this statistic with the Minimum and Maximum values, you can determine the full scope of a metric and how close the average use is to the Minimum and Maximum values. This comparison helps you to know when to increase or decrease your resources.
--
--
--     * @SampleCount@ - The count, or number, of data points used for the statistical calculation.
--
--
-- * 'unit' - The unit for the metric data request. Valid units depend on the metric data being requested. For the valid units to specify with each available metric, see the @metricName@ parameter.
mkGetInstanceMetricData ::
  -- | 'instanceName'
  Lude.Text ->
  -- | 'metricName'
  InstanceMetricName ->
  -- | 'period'
  Lude.Natural ->
  -- | 'startTime'
  Lude.Timestamp ->
  -- | 'endTime'
  Lude.Timestamp ->
  -- | 'unit'
  MetricUnit ->
  GetInstanceMetricData
mkGetInstanceMetricData
  pInstanceName_
  pMetricName_
  pPeriod_
  pStartTime_
  pEndTime_
  pUnit_ =
    GetInstanceMetricData'
      { instanceName = pInstanceName_,
        metricName = pMetricName_,
        period = pPeriod_,
        startTime = pStartTime_,
        endTime = pEndTime_,
        unit = pUnit_,
        statistics = Lude.mempty
      }

-- | The name of the instance for which you want to get metrics data.
--
-- /Note:/ Consider using 'instanceName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gimdInstanceName :: Lens.Lens' GetInstanceMetricData Lude.Text
gimdInstanceName = Lens.lens (instanceName :: GetInstanceMetricData -> Lude.Text) (\s a -> s {instanceName = a} :: GetInstanceMetricData)
{-# DEPRECATED gimdInstanceName "Use generic-lens or generic-optics with 'instanceName' instead." #-}

-- | The metric for which you want to return information.
--
-- Valid instance metric names are listed below, along with the most useful @statistics@ to include in your request, and the published @unit@ value.
--
--     * __@BurstCapacityPercentage@ __ - The percentage of CPU performance available for your instance to burst above its baseline. Your instance continuously accrues and consumes burst capacity. Burst capacity stops accruing when your instance's @BurstCapacityPercentage@ reaches 100%. For more information, see <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-viewing-instance-burst-capacity Viewing instance burst capacity in Amazon Lightsail> .
-- @Statistics@ : The most useful statistics are @Maximum@ and @Average@ .
-- @Unit@ : The published unit is @Percent@ .
--
--
--     * __@BurstCapacityTime@ __ - The available amount of time for your instance to burst at 100% CPU utilization. Your instance continuously accrues and consumes burst capacity. Burst capacity time stops accruing when your instance's @BurstCapacityPercentage@ metric reaches 100%.
-- Burst capacity time is consumed at the full rate only when your instance operates at 100% CPU utilization. For example, if your instance operates at 50% CPU utilization in the burstable zone for a 5-minute period, then it consumes CPU burst capacity minutes at a 50% rate in that period. Your instance consumed 2 minutes and 30 seconds of CPU burst capacity minutes in the 5-minute period. For more information, see <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-viewing-instance-burst-capacity Viewing instance burst capacity in Amazon Lightsail> .
-- @Statistics@ : The most useful statistics are @Maximum@ and @Average@ .
-- @Unit@ : The published unit is @Seconds@ .
--
--
--     * __@CPUUtilization@ __ - The percentage of allocated compute units that are currently in use on the instance. This metric identifies the processing power to run the applications on the instance. Tools in your operating system can show a lower percentage than Lightsail when the instance is not allocated a full processor core.
-- @Statistics@ : The most useful statistics are @Maximum@ and @Average@ .
-- @Unit@ : The published unit is @Percent@ .
--
--
--     * __@NetworkIn@ __ - The number of bytes received on all network interfaces by the instance. This metric identifies the volume of incoming network traffic to the instance. The number reported is the number of bytes received during the period. Because this metric is reported in 5-minute intervals, divide the reported number by 300 to find Bytes/second.
-- @Statistics@ : The most useful statistic is @Sum@ .
-- @Unit@ : The published unit is @Bytes@ .
--
--
--     * __@NetworkOut@ __ - The number of bytes sent out on all network interfaces by the instance. This metric identifies the volume of outgoing network traffic from the instance. The number reported is the number of bytes sent during the period. Because this metric is reported in 5-minute intervals, divide the reported number by 300 to find Bytes/second.
-- @Statistics@ : The most useful statistic is @Sum@ .
-- @Unit@ : The published unit is @Bytes@ .
--
--
--     * __@StatusCheckFailed@ __ - Reports whether the instance passed or failed both the instance status check and the system status check. This metric can be either 0 (passed) or 1 (failed). This metric data is available in 1-minute (60 seconds) granularity.
-- @Statistics@ : The most useful statistic is @Sum@ .
-- @Unit@ : The published unit is @Count@ .
--
--
--     * __@StatusCheckFailed_Instance@ __ - Reports whether the instance passed or failed the instance status check. This metric can be either 0 (passed) or 1 (failed). This metric data is available in 1-minute (60 seconds) granularity.
-- @Statistics@ : The most useful statistic is @Sum@ .
-- @Unit@ : The published unit is @Count@ .
--
--
--     * __@StatusCheckFailed_System@ __ - Reports whether the instance passed or failed the system status check. This metric can be either 0 (passed) or 1 (failed). This metric data is available in 1-minute (60 seconds) granularity.
-- @Statistics@ : The most useful statistic is @Sum@ .
-- @Unit@ : The published unit is @Count@ .
--
--
--
-- /Note:/ Consider using 'metricName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gimdMetricName :: Lens.Lens' GetInstanceMetricData InstanceMetricName
gimdMetricName = Lens.lens (metricName :: GetInstanceMetricData -> InstanceMetricName) (\s a -> s {metricName = a} :: GetInstanceMetricData)
{-# DEPRECATED gimdMetricName "Use generic-lens or generic-optics with 'metricName' instead." #-}

-- | The granularity, in seconds, of the returned data points.
--
-- The @StatusCheckFailed@ , @StatusCheckFailed_Instance@ , and @StatusCheckFailed_System@ instance metric data is available in 1-minute (60 seconds) granularity. All other instance metric data is available in 5-minute (300 seconds) granularity.
--
-- /Note:/ Consider using 'period' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gimdPeriod :: Lens.Lens' GetInstanceMetricData Lude.Natural
gimdPeriod = Lens.lens (period :: GetInstanceMetricData -> Lude.Natural) (\s a -> s {period = a} :: GetInstanceMetricData)
{-# DEPRECATED gimdPeriod "Use generic-lens or generic-optics with 'period' instead." #-}

-- | The start time of the time period.
--
-- /Note:/ Consider using 'startTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gimdStartTime :: Lens.Lens' GetInstanceMetricData Lude.Timestamp
gimdStartTime = Lens.lens (startTime :: GetInstanceMetricData -> Lude.Timestamp) (\s a -> s {startTime = a} :: GetInstanceMetricData)
{-# DEPRECATED gimdStartTime "Use generic-lens or generic-optics with 'startTime' instead." #-}

-- | The end time of the time period.
--
-- /Note:/ Consider using 'endTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gimdEndTime :: Lens.Lens' GetInstanceMetricData Lude.Timestamp
gimdEndTime = Lens.lens (endTime :: GetInstanceMetricData -> Lude.Timestamp) (\s a -> s {endTime = a} :: GetInstanceMetricData)
{-# DEPRECATED gimdEndTime "Use generic-lens or generic-optics with 'endTime' instead." #-}

-- | The unit for the metric data request. Valid units depend on the metric data being requested. For the valid units to specify with each available metric, see the @metricName@ parameter.
--
-- /Note:/ Consider using 'unit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gimdUnit :: Lens.Lens' GetInstanceMetricData MetricUnit
gimdUnit = Lens.lens (unit :: GetInstanceMetricData -> MetricUnit) (\s a -> s {unit = a} :: GetInstanceMetricData)
{-# DEPRECATED gimdUnit "Use generic-lens or generic-optics with 'unit' instead." #-}

-- | The statistic for the metric.
--
-- The following statistics are available:
--
--     * @Minimum@ - The lowest value observed during the specified period. Use this value to determine low volumes of activity for your application.
--
--
--     * @Maximum@ - The highest value observed during the specified period. Use this value to determine high volumes of activity for your application.
--
--
--     * @Sum@ - All values submitted for the matching metric added together. You can use this statistic to determine the total volume of a metric.
--
--
--     * @Average@ - The value of Sum / SampleCount during the specified period. By comparing this statistic with the Minimum and Maximum values, you can determine the full scope of a metric and how close the average use is to the Minimum and Maximum values. This comparison helps you to know when to increase or decrease your resources.
--
--
--     * @SampleCount@ - The count, or number, of data points used for the statistical calculation.
--
--
--
-- /Note:/ Consider using 'statistics' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gimdStatistics :: Lens.Lens' GetInstanceMetricData [MetricStatistic]
gimdStatistics = Lens.lens (statistics :: GetInstanceMetricData -> [MetricStatistic]) (\s a -> s {statistics = a} :: GetInstanceMetricData)
{-# DEPRECATED gimdStatistics "Use generic-lens or generic-optics with 'statistics' instead." #-}

instance Lude.AWSRequest GetInstanceMetricData where
  type Rs GetInstanceMetricData = GetInstanceMetricDataResponse
  request = Req.postJSON lightsailService
  response =
    Res.receiveJSON
      ( \s h x ->
          GetInstanceMetricDataResponse'
            Lude.<$> (x Lude..?> "metricName")
            Lude.<*> (x Lude..?> "metricData" Lude..!@ Lude.mempty)
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders GetInstanceMetricData where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("Lightsail_20161128.GetInstanceMetricData" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON GetInstanceMetricData where
  toJSON GetInstanceMetricData' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("instanceName" Lude..= instanceName),
            Lude.Just ("metricName" Lude..= metricName),
            Lude.Just ("period" Lude..= period),
            Lude.Just ("startTime" Lude..= startTime),
            Lude.Just ("endTime" Lude..= endTime),
            Lude.Just ("unit" Lude..= unit),
            Lude.Just ("statistics" Lude..= statistics)
          ]
      )

instance Lude.ToPath GetInstanceMetricData where
  toPath = Lude.const "/"

instance Lude.ToQuery GetInstanceMetricData where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkGetInstanceMetricDataResponse' smart constructor.
data GetInstanceMetricDataResponse = GetInstanceMetricDataResponse'
  { metricName ::
      Lude.Maybe InstanceMetricName,
    metricData ::
      Lude.Maybe [MetricDatapoint],
    responseStatus :: Lude.Int
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetInstanceMetricDataResponse' with the minimum fields required to make a request.
--
-- * 'metricData' - An array of objects that describe the metric data returned.
-- * 'metricName' - The name of the metric returned.
-- * 'responseStatus' - The response status code.
mkGetInstanceMetricDataResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  GetInstanceMetricDataResponse
mkGetInstanceMetricDataResponse pResponseStatus_ =
  GetInstanceMetricDataResponse'
    { metricName = Lude.Nothing,
      metricData = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The name of the metric returned.
--
-- /Note:/ Consider using 'metricName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gimdrsMetricName :: Lens.Lens' GetInstanceMetricDataResponse (Lude.Maybe InstanceMetricName)
gimdrsMetricName = Lens.lens (metricName :: GetInstanceMetricDataResponse -> Lude.Maybe InstanceMetricName) (\s a -> s {metricName = a} :: GetInstanceMetricDataResponse)
{-# DEPRECATED gimdrsMetricName "Use generic-lens or generic-optics with 'metricName' instead." #-}

-- | An array of objects that describe the metric data returned.
--
-- /Note:/ Consider using 'metricData' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gimdrsMetricData :: Lens.Lens' GetInstanceMetricDataResponse (Lude.Maybe [MetricDatapoint])
gimdrsMetricData = Lens.lens (metricData :: GetInstanceMetricDataResponse -> Lude.Maybe [MetricDatapoint]) (\s a -> s {metricData = a} :: GetInstanceMetricDataResponse)
{-# DEPRECATED gimdrsMetricData "Use generic-lens or generic-optics with 'metricData' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gimdrsResponseStatus :: Lens.Lens' GetInstanceMetricDataResponse Lude.Int
gimdrsResponseStatus = Lens.lens (responseStatus :: GetInstanceMetricDataResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: GetInstanceMetricDataResponse)
{-# DEPRECATED gimdrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
