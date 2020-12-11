{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.GetRelationalDatabaseMetricData
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the data points of the specified metric for a database in Amazon Lightsail.
--
-- Metrics report the utilization of your resources, and the error counts generated by them. Monitor and collect metric data regularly to maintain the reliability, availability, and performance of your resources.
module Network.AWS.Lightsail.GetRelationalDatabaseMetricData
  ( -- * Creating a request
    GetRelationalDatabaseMetricData (..),
    mkGetRelationalDatabaseMetricData,

    -- ** Request lenses
    grdmdRelationalDatabaseName,
    grdmdMetricName,
    grdmdPeriod,
    grdmdStartTime,
    grdmdEndTime,
    grdmdUnit,
    grdmdStatistics,

    -- * Destructuring the response
    GetRelationalDatabaseMetricDataResponse (..),
    mkGetRelationalDatabaseMetricDataResponse,

    -- ** Response lenses
    grdmdrsMetricName,
    grdmdrsMetricData,
    grdmdrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Lightsail.Types
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkGetRelationalDatabaseMetricData' smart constructor.
data GetRelationalDatabaseMetricData = GetRelationalDatabaseMetricData'
  { relationalDatabaseName ::
      Lude.Text,
    metricName ::
      RelationalDatabaseMetricName,
    period :: Lude.Natural,
    startTime :: Lude.Timestamp,
    endTime :: Lude.Timestamp,
    unit :: MetricUnit,
    statistics ::
      [MetricStatistic]
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetRelationalDatabaseMetricData' with the minimum fields required to make a request.
--
-- * 'endTime' - The end of the time interval from which to get metric data.
--
-- Constraints:
--
--     * Specified in Coordinated Universal Time (UTC).
--
--
--     * Specified in the Unix time format.
-- For example, if you wish to use an end time of October 1, 2018, at 8 PM UTC, then you input @1538424000@ as the end time.
--
--
-- * 'metricName' - The metric for which you want to return information.
--
-- Valid relational database metric names are listed below, along with the most useful @statistics@ to include in your request, and the published @unit@ value. All relational database metric data is available in 1-minute (60 seconds) granularity.
--
--     * __@CPUUtilization@ __ - The percentage of CPU utilization currently in use on the database.
-- @Statistics@ : The most useful statistics are @Maximum@ and @Average@ .
-- @Unit@ : The published unit is @Percent@ .
--
--
--     * __@DatabaseConnections@ __ - The number of database connections in use.
-- @Statistics@ : The most useful statistics are @Maximum@ and @Sum@ .
-- @Unit@ : The published unit is @Count@ .
--
--
--     * __@DiskQueueDepth@ __ - The number of outstanding IOs (read/write requests) that are waiting to access the disk.
-- @Statistics@ : The most useful statistic is @Sum@ .
-- @Unit@ : The published unit is @Count@ .
--
--
--     * __@FreeStorageSpace@ __ - The amount of available storage space.
-- @Statistics@ : The most useful statistic is @Sum@ .
-- @Unit@ : The published unit is @Bytes@ .
--
--
--     * __@NetworkReceiveThroughput@ __ - The incoming (Receive) network traffic on the database, including both customer database traffic and AWS traffic used for monitoring and replication.
-- @Statistics@ : The most useful statistic is @Average@ .
-- @Unit@ : The published unit is @Bytes/Second@ .
--
--
--     * __@NetworkTransmitThroughput@ __ - The outgoing (Transmit) network traffic on the database, including both customer database traffic and AWS traffic used for monitoring and replication.
-- @Statistics@ : The most useful statistic is @Average@ .
-- @Unit@ : The published unit is @Bytes/Second@ .
--
--
-- * 'period' - The granularity, in seconds, of the returned data points.
--
-- All relational database metric data is available in 1-minute (60 seconds) granularity.
-- * 'relationalDatabaseName' - The name of your database from which to get metric data.
-- * 'startTime' - The start of the time interval from which to get metric data.
--
-- Constraints:
--
--     * Specified in Coordinated Universal Time (UTC).
--
--
--     * Specified in the Unix time format.
-- For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, then you input @1538424000@ as the start time.
--
--
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
-- * 'unit' - The unit for the metric data request. Valid units depend on the metric data being requested. For the valid units with each available metric, see the @metricName@ parameter.
mkGetRelationalDatabaseMetricData ::
  -- | 'relationalDatabaseName'
  Lude.Text ->
  -- | 'metricName'
  RelationalDatabaseMetricName ->
  -- | 'period'
  Lude.Natural ->
  -- | 'startTime'
  Lude.Timestamp ->
  -- | 'endTime'
  Lude.Timestamp ->
  -- | 'unit'
  MetricUnit ->
  GetRelationalDatabaseMetricData
mkGetRelationalDatabaseMetricData
  pRelationalDatabaseName_
  pMetricName_
  pPeriod_
  pStartTime_
  pEndTime_
  pUnit_ =
    GetRelationalDatabaseMetricData'
      { relationalDatabaseName =
          pRelationalDatabaseName_,
        metricName = pMetricName_,
        period = pPeriod_,
        startTime = pStartTime_,
        endTime = pEndTime_,
        unit = pUnit_,
        statistics = Lude.mempty
      }

-- | The name of your database from which to get metric data.
--
-- /Note:/ Consider using 'relationalDatabaseName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grdmdRelationalDatabaseName :: Lens.Lens' GetRelationalDatabaseMetricData Lude.Text
grdmdRelationalDatabaseName = Lens.lens (relationalDatabaseName :: GetRelationalDatabaseMetricData -> Lude.Text) (\s a -> s {relationalDatabaseName = a} :: GetRelationalDatabaseMetricData)
{-# DEPRECATED grdmdRelationalDatabaseName "Use generic-lens or generic-optics with 'relationalDatabaseName' instead." #-}

-- | The metric for which you want to return information.
--
-- Valid relational database metric names are listed below, along with the most useful @statistics@ to include in your request, and the published @unit@ value. All relational database metric data is available in 1-minute (60 seconds) granularity.
--
--     * __@CPUUtilization@ __ - The percentage of CPU utilization currently in use on the database.
-- @Statistics@ : The most useful statistics are @Maximum@ and @Average@ .
-- @Unit@ : The published unit is @Percent@ .
--
--
--     * __@DatabaseConnections@ __ - The number of database connections in use.
-- @Statistics@ : The most useful statistics are @Maximum@ and @Sum@ .
-- @Unit@ : The published unit is @Count@ .
--
--
--     * __@DiskQueueDepth@ __ - The number of outstanding IOs (read/write requests) that are waiting to access the disk.
-- @Statistics@ : The most useful statistic is @Sum@ .
-- @Unit@ : The published unit is @Count@ .
--
--
--     * __@FreeStorageSpace@ __ - The amount of available storage space.
-- @Statistics@ : The most useful statistic is @Sum@ .
-- @Unit@ : The published unit is @Bytes@ .
--
--
--     * __@NetworkReceiveThroughput@ __ - The incoming (Receive) network traffic on the database, including both customer database traffic and AWS traffic used for monitoring and replication.
-- @Statistics@ : The most useful statistic is @Average@ .
-- @Unit@ : The published unit is @Bytes/Second@ .
--
--
--     * __@NetworkTransmitThroughput@ __ - The outgoing (Transmit) network traffic on the database, including both customer database traffic and AWS traffic used for monitoring and replication.
-- @Statistics@ : The most useful statistic is @Average@ .
-- @Unit@ : The published unit is @Bytes/Second@ .
--
--
--
-- /Note:/ Consider using 'metricName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grdmdMetricName :: Lens.Lens' GetRelationalDatabaseMetricData RelationalDatabaseMetricName
grdmdMetricName = Lens.lens (metricName :: GetRelationalDatabaseMetricData -> RelationalDatabaseMetricName) (\s a -> s {metricName = a} :: GetRelationalDatabaseMetricData)
{-# DEPRECATED grdmdMetricName "Use generic-lens or generic-optics with 'metricName' instead." #-}

-- | The granularity, in seconds, of the returned data points.
--
-- All relational database metric data is available in 1-minute (60 seconds) granularity.
--
-- /Note:/ Consider using 'period' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grdmdPeriod :: Lens.Lens' GetRelationalDatabaseMetricData Lude.Natural
grdmdPeriod = Lens.lens (period :: GetRelationalDatabaseMetricData -> Lude.Natural) (\s a -> s {period = a} :: GetRelationalDatabaseMetricData)
{-# DEPRECATED grdmdPeriod "Use generic-lens or generic-optics with 'period' instead." #-}

-- | The start of the time interval from which to get metric data.
--
-- Constraints:
--
--     * Specified in Coordinated Universal Time (UTC).
--
--
--     * Specified in the Unix time format.
-- For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, then you input @1538424000@ as the start time.
--
--
--
-- /Note:/ Consider using 'startTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grdmdStartTime :: Lens.Lens' GetRelationalDatabaseMetricData Lude.Timestamp
grdmdStartTime = Lens.lens (startTime :: GetRelationalDatabaseMetricData -> Lude.Timestamp) (\s a -> s {startTime = a} :: GetRelationalDatabaseMetricData)
{-# DEPRECATED grdmdStartTime "Use generic-lens or generic-optics with 'startTime' instead." #-}

-- | The end of the time interval from which to get metric data.
--
-- Constraints:
--
--     * Specified in Coordinated Universal Time (UTC).
--
--
--     * Specified in the Unix time format.
-- For example, if you wish to use an end time of October 1, 2018, at 8 PM UTC, then you input @1538424000@ as the end time.
--
--
--
-- /Note:/ Consider using 'endTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grdmdEndTime :: Lens.Lens' GetRelationalDatabaseMetricData Lude.Timestamp
grdmdEndTime = Lens.lens (endTime :: GetRelationalDatabaseMetricData -> Lude.Timestamp) (\s a -> s {endTime = a} :: GetRelationalDatabaseMetricData)
{-# DEPRECATED grdmdEndTime "Use generic-lens or generic-optics with 'endTime' instead." #-}

-- | The unit for the metric data request. Valid units depend on the metric data being requested. For the valid units with each available metric, see the @metricName@ parameter.
--
-- /Note:/ Consider using 'unit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grdmdUnit :: Lens.Lens' GetRelationalDatabaseMetricData MetricUnit
grdmdUnit = Lens.lens (unit :: GetRelationalDatabaseMetricData -> MetricUnit) (\s a -> s {unit = a} :: GetRelationalDatabaseMetricData)
{-# DEPRECATED grdmdUnit "Use generic-lens or generic-optics with 'unit' instead." #-}

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
grdmdStatistics :: Lens.Lens' GetRelationalDatabaseMetricData [MetricStatistic]
grdmdStatistics = Lens.lens (statistics :: GetRelationalDatabaseMetricData -> [MetricStatistic]) (\s a -> s {statistics = a} :: GetRelationalDatabaseMetricData)
{-# DEPRECATED grdmdStatistics "Use generic-lens or generic-optics with 'statistics' instead." #-}

instance Lude.AWSRequest GetRelationalDatabaseMetricData where
  type
    Rs GetRelationalDatabaseMetricData =
      GetRelationalDatabaseMetricDataResponse
  request = Req.postJSON lightsailService
  response =
    Res.receiveJSON
      ( \s h x ->
          GetRelationalDatabaseMetricDataResponse'
            Lude.<$> (x Lude..?> "metricName")
            Lude.<*> (x Lude..?> "metricData" Lude..!@ Lude.mempty)
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders GetRelationalDatabaseMetricData where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ( "Lightsail_20161128.GetRelationalDatabaseMetricData" ::
                          Lude.ByteString
                      ),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON GetRelationalDatabaseMetricData where
  toJSON GetRelationalDatabaseMetricData' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just
              ("relationalDatabaseName" Lude..= relationalDatabaseName),
            Lude.Just ("metricName" Lude..= metricName),
            Lude.Just ("period" Lude..= period),
            Lude.Just ("startTime" Lude..= startTime),
            Lude.Just ("endTime" Lude..= endTime),
            Lude.Just ("unit" Lude..= unit),
            Lude.Just ("statistics" Lude..= statistics)
          ]
      )

instance Lude.ToPath GetRelationalDatabaseMetricData where
  toPath = Lude.const "/"

instance Lude.ToQuery GetRelationalDatabaseMetricData where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkGetRelationalDatabaseMetricDataResponse' smart constructor.
data GetRelationalDatabaseMetricDataResponse = GetRelationalDatabaseMetricDataResponse'
  { metricName ::
      Lude.Maybe
        RelationalDatabaseMetricName,
    metricData ::
      Lude.Maybe
        [MetricDatapoint],
    responseStatus ::
      Lude.Int
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetRelationalDatabaseMetricDataResponse' with the minimum fields required to make a request.
--
-- * 'metricData' - An array of objects that describe the metric data returned.
-- * 'metricName' - The name of the metric returned.
-- * 'responseStatus' - The response status code.
mkGetRelationalDatabaseMetricDataResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  GetRelationalDatabaseMetricDataResponse
mkGetRelationalDatabaseMetricDataResponse pResponseStatus_ =
  GetRelationalDatabaseMetricDataResponse'
    { metricName =
        Lude.Nothing,
      metricData = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The name of the metric returned.
--
-- /Note:/ Consider using 'metricName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grdmdrsMetricName :: Lens.Lens' GetRelationalDatabaseMetricDataResponse (Lude.Maybe RelationalDatabaseMetricName)
grdmdrsMetricName = Lens.lens (metricName :: GetRelationalDatabaseMetricDataResponse -> Lude.Maybe RelationalDatabaseMetricName) (\s a -> s {metricName = a} :: GetRelationalDatabaseMetricDataResponse)
{-# DEPRECATED grdmdrsMetricName "Use generic-lens or generic-optics with 'metricName' instead." #-}

-- | An array of objects that describe the metric data returned.
--
-- /Note:/ Consider using 'metricData' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grdmdrsMetricData :: Lens.Lens' GetRelationalDatabaseMetricDataResponse (Lude.Maybe [MetricDatapoint])
grdmdrsMetricData = Lens.lens (metricData :: GetRelationalDatabaseMetricDataResponse -> Lude.Maybe [MetricDatapoint]) (\s a -> s {metricData = a} :: GetRelationalDatabaseMetricDataResponse)
{-# DEPRECATED grdmdrsMetricData "Use generic-lens or generic-optics with 'metricData' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grdmdrsResponseStatus :: Lens.Lens' GetRelationalDatabaseMetricDataResponse Lude.Int
grdmdrsResponseStatus = Lens.lens (responseStatus :: GetRelationalDatabaseMetricDataResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: GetRelationalDatabaseMetricDataResponse)
{-# DEPRECATED grdmdrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
