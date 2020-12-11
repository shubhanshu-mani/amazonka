-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ApplicationDateRangeKpiResponse
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.ApplicationDateRangeKpiResponse
  ( ApplicationDateRangeKpiResponse (..),

    -- * Smart constructor
    mkApplicationDateRangeKpiResponse,

    -- * Lenses
    adrkNextToken,
    adrkKpiResult,
    adrkKpiName,
    adrkEndTime,
    adrkStartTime,
    adrkApplicationId,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types.BaseKpiResult
import qualified Network.AWS.Prelude as Lude

-- | Provides the results of a query that retrieved the data for a standard metric that applies to an application, and provides information about that query.
--
-- /See:/ 'mkApplicationDateRangeKpiResponse' smart constructor.
data ApplicationDateRangeKpiResponse = ApplicationDateRangeKpiResponse'
  { nextToken ::
      Lude.Maybe Lude.Text,
    kpiResult :: BaseKpiResult,
    kpiName :: Lude.Text,
    endTime :: Lude.Timestamp,
    startTime :: Lude.Timestamp,
    applicationId :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ApplicationDateRangeKpiResponse' with the minimum fields required to make a request.
--
-- * 'applicationId' - The unique identifier for the application that the metric applies to.
-- * 'endTime' - The last date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.
-- * 'kpiName' - The name of the metric, also referred to as a /key performance indicator (KPI)/ , that the data was retrieved for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. For a list of possible values, see the <https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html Amazon Pinpoint Developer Guide> .
-- * 'kpiResult' - An array of objects that contains the results of the query. Each object contains the value for the metric and metadata about that value.
-- * 'nextToken' - The string to use in a subsequent request to get the next page of results in a paginated response. This value is null for the Application Metrics resource because the resource returns all results in a single page.
-- * 'startTime' - The first date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.
mkApplicationDateRangeKpiResponse ::
  -- | 'kpiResult'
  BaseKpiResult ->
  -- | 'kpiName'
  Lude.Text ->
  -- | 'endTime'
  Lude.Timestamp ->
  -- | 'startTime'
  Lude.Timestamp ->
  -- | 'applicationId'
  Lude.Text ->
  ApplicationDateRangeKpiResponse
mkApplicationDateRangeKpiResponse
  pKpiResult_
  pKpiName_
  pEndTime_
  pStartTime_
  pApplicationId_ =
    ApplicationDateRangeKpiResponse'
      { nextToken = Lude.Nothing,
        kpiResult = pKpiResult_,
        kpiName = pKpiName_,
        endTime = pEndTime_,
        startTime = pStartTime_,
        applicationId = pApplicationId_
      }

-- | The string to use in a subsequent request to get the next page of results in a paginated response. This value is null for the Application Metrics resource because the resource returns all results in a single page.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
adrkNextToken :: Lens.Lens' ApplicationDateRangeKpiResponse (Lude.Maybe Lude.Text)
adrkNextToken = Lens.lens (nextToken :: ApplicationDateRangeKpiResponse -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: ApplicationDateRangeKpiResponse)
{-# DEPRECATED adrkNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | An array of objects that contains the results of the query. Each object contains the value for the metric and metadata about that value.
--
-- /Note:/ Consider using 'kpiResult' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
adrkKpiResult :: Lens.Lens' ApplicationDateRangeKpiResponse BaseKpiResult
adrkKpiResult = Lens.lens (kpiResult :: ApplicationDateRangeKpiResponse -> BaseKpiResult) (\s a -> s {kpiResult = a} :: ApplicationDateRangeKpiResponse)
{-# DEPRECATED adrkKpiResult "Use generic-lens or generic-optics with 'kpiResult' instead." #-}

-- | The name of the metric, also referred to as a /key performance indicator (KPI)/ , that the data was retrieved for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. For a list of possible values, see the <https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html Amazon Pinpoint Developer Guide> .
--
-- /Note:/ Consider using 'kpiName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
adrkKpiName :: Lens.Lens' ApplicationDateRangeKpiResponse Lude.Text
adrkKpiName = Lens.lens (kpiName :: ApplicationDateRangeKpiResponse -> Lude.Text) (\s a -> s {kpiName = a} :: ApplicationDateRangeKpiResponse)
{-# DEPRECATED adrkKpiName "Use generic-lens or generic-optics with 'kpiName' instead." #-}

-- | The last date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.
--
-- /Note:/ Consider using 'endTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
adrkEndTime :: Lens.Lens' ApplicationDateRangeKpiResponse Lude.Timestamp
adrkEndTime = Lens.lens (endTime :: ApplicationDateRangeKpiResponse -> Lude.Timestamp) (\s a -> s {endTime = a} :: ApplicationDateRangeKpiResponse)
{-# DEPRECATED adrkEndTime "Use generic-lens or generic-optics with 'endTime' instead." #-}

-- | The first date and time of the date range that was used to filter the query results, in extended ISO 8601 format. The date range is inclusive.
--
-- /Note:/ Consider using 'startTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
adrkStartTime :: Lens.Lens' ApplicationDateRangeKpiResponse Lude.Timestamp
adrkStartTime = Lens.lens (startTime :: ApplicationDateRangeKpiResponse -> Lude.Timestamp) (\s a -> s {startTime = a} :: ApplicationDateRangeKpiResponse)
{-# DEPRECATED adrkStartTime "Use generic-lens or generic-optics with 'startTime' instead." #-}

-- | The unique identifier for the application that the metric applies to.
--
-- /Note:/ Consider using 'applicationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
adrkApplicationId :: Lens.Lens' ApplicationDateRangeKpiResponse Lude.Text
adrkApplicationId = Lens.lens (applicationId :: ApplicationDateRangeKpiResponse -> Lude.Text) (\s a -> s {applicationId = a} :: ApplicationDateRangeKpiResponse)
{-# DEPRECATED adrkApplicationId "Use generic-lens or generic-optics with 'applicationId' instead." #-}

instance Lude.FromJSON ApplicationDateRangeKpiResponse where
  parseJSON =
    Lude.withObject
      "ApplicationDateRangeKpiResponse"
      ( \x ->
          ApplicationDateRangeKpiResponse'
            Lude.<$> (x Lude..:? "NextToken")
            Lude.<*> (x Lude..: "KpiResult")
            Lude.<*> (x Lude..: "KpiName")
            Lude.<*> (x Lude..: "EndTime")
            Lude.<*> (x Lude..: "StartTime")
            Lude.<*> (x Lude..: "ApplicationId")
      )
