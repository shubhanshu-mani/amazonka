{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.GetCampaignDateRangeKpi
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves (queries) pre-aggregated data for a standard metric that applies to a campaign.
module Network.AWS.Pinpoint.GetCampaignDateRangeKpi
  ( -- * Creating a request
    GetCampaignDateRangeKpi (..),
    mkGetCampaignDateRangeKpi,

    -- ** Request lenses
    gcdrkStartTime,
    gcdrkNextToken,
    gcdrkEndTime,
    gcdrkPageSize,
    gcdrkApplicationId,
    gcdrkKpiName,
    gcdrkCampaignId,

    -- * Destructuring the response
    GetCampaignDateRangeKpiResponse (..),
    mkGetCampaignDateRangeKpiResponse,

    -- ** Response lenses
    gcdrkrsResponseStatus,
    gcdrkrsCampaignDateRangeKpiResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkGetCampaignDateRangeKpi' smart constructor.
data GetCampaignDateRangeKpi = GetCampaignDateRangeKpi'
  { startTime ::
      Lude.Maybe Lude.Timestamp,
    nextToken :: Lude.Maybe Lude.Text,
    endTime :: Lude.Maybe Lude.Timestamp,
    pageSize :: Lude.Maybe Lude.Text,
    applicationId :: Lude.Text,
    kpiName :: Lude.Text,
    campaignId :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetCampaignDateRangeKpi' with the minimum fields required to make a request.
--
-- * 'applicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
-- * 'campaignId' - The unique identifier for the campaign.
-- * 'endTime' - The last date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-26T20:00:00Z for 8:00 PM UTC July 26, 2019.
-- * 'kpiName' - The name of the metric, also referred to as a /key performance indicator (KPI)/ , to retrieve data for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. Examples are email-open-rate and successful-delivery-rate. For a list of valid values, see the <https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html Amazon Pinpoint Developer Guide> .
-- * 'nextToken' - The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.
-- * 'pageSize' - The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
-- * 'startTime' - The first date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-19T20:00:00Z for 8:00 PM UTC July 19, 2019. This value should also be fewer than 90 days from the current day.
mkGetCampaignDateRangeKpi ::
  -- | 'applicationId'
  Lude.Text ->
  -- | 'kpiName'
  Lude.Text ->
  -- | 'campaignId'
  Lude.Text ->
  GetCampaignDateRangeKpi
mkGetCampaignDateRangeKpi pApplicationId_ pKpiName_ pCampaignId_ =
  GetCampaignDateRangeKpi'
    { startTime = Lude.Nothing,
      nextToken = Lude.Nothing,
      endTime = Lude.Nothing,
      pageSize = Lude.Nothing,
      applicationId = pApplicationId_,
      kpiName = pKpiName_,
      campaignId = pCampaignId_
    }

-- | The first date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-19T20:00:00Z for 8:00 PM UTC July 19, 2019. This value should also be fewer than 90 days from the current day.
--
-- /Note:/ Consider using 'startTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcdrkStartTime :: Lens.Lens' GetCampaignDateRangeKpi (Lude.Maybe Lude.Timestamp)
gcdrkStartTime = Lens.lens (startTime :: GetCampaignDateRangeKpi -> Lude.Maybe Lude.Timestamp) (\s a -> s {startTime = a} :: GetCampaignDateRangeKpi)
{-# DEPRECATED gcdrkStartTime "Use generic-lens or generic-optics with 'startTime' instead." #-}

-- | The  string that specifies which page of results to return in a paginated response. This parameter is not supported for application, campaign, and journey metrics.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcdrkNextToken :: Lens.Lens' GetCampaignDateRangeKpi (Lude.Maybe Lude.Text)
gcdrkNextToken = Lens.lens (nextToken :: GetCampaignDateRangeKpi -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: GetCampaignDateRangeKpi)
{-# DEPRECATED gcdrkNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The last date and time to retrieve data for, as part of an inclusive date range that filters the query results. This value should be in extended ISO 8601 format and use Coordinated Universal Time (UTC), for example: 2019-07-26T20:00:00Z for 8:00 PM UTC July 26, 2019.
--
-- /Note:/ Consider using 'endTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcdrkEndTime :: Lens.Lens' GetCampaignDateRangeKpi (Lude.Maybe Lude.Timestamp)
gcdrkEndTime = Lens.lens (endTime :: GetCampaignDateRangeKpi -> Lude.Maybe Lude.Timestamp) (\s a -> s {endTime = a} :: GetCampaignDateRangeKpi)
{-# DEPRECATED gcdrkEndTime "Use generic-lens or generic-optics with 'endTime' instead." #-}

-- | The maximum number of items to include in each page of a paginated response. This parameter is not supported for application, campaign, and journey metrics.
--
-- /Note:/ Consider using 'pageSize' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcdrkPageSize :: Lens.Lens' GetCampaignDateRangeKpi (Lude.Maybe Lude.Text)
gcdrkPageSize = Lens.lens (pageSize :: GetCampaignDateRangeKpi -> Lude.Maybe Lude.Text) (\s a -> s {pageSize = a} :: GetCampaignDateRangeKpi)
{-# DEPRECATED gcdrkPageSize "Use generic-lens or generic-optics with 'pageSize' instead." #-}

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- /Note:/ Consider using 'applicationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcdrkApplicationId :: Lens.Lens' GetCampaignDateRangeKpi Lude.Text
gcdrkApplicationId = Lens.lens (applicationId :: GetCampaignDateRangeKpi -> Lude.Text) (\s a -> s {applicationId = a} :: GetCampaignDateRangeKpi)
{-# DEPRECATED gcdrkApplicationId "Use generic-lens or generic-optics with 'applicationId' instead." #-}

-- | The name of the metric, also referred to as a /key performance indicator (KPI)/ , to retrieve data for. This value describes the associated metric and consists of two or more terms, which are comprised of lowercase alphanumeric characters, separated by a hyphen. Examples are email-open-rate and successful-delivery-rate. For a list of valid values, see the <https://docs.aws.amazon.com/pinpoint/latest/developerguide/analytics-standard-metrics.html Amazon Pinpoint Developer Guide> .
--
-- /Note:/ Consider using 'kpiName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcdrkKpiName :: Lens.Lens' GetCampaignDateRangeKpi Lude.Text
gcdrkKpiName = Lens.lens (kpiName :: GetCampaignDateRangeKpi -> Lude.Text) (\s a -> s {kpiName = a} :: GetCampaignDateRangeKpi)
{-# DEPRECATED gcdrkKpiName "Use generic-lens or generic-optics with 'kpiName' instead." #-}

-- | The unique identifier for the campaign.
--
-- /Note:/ Consider using 'campaignId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcdrkCampaignId :: Lens.Lens' GetCampaignDateRangeKpi Lude.Text
gcdrkCampaignId = Lens.lens (campaignId :: GetCampaignDateRangeKpi -> Lude.Text) (\s a -> s {campaignId = a} :: GetCampaignDateRangeKpi)
{-# DEPRECATED gcdrkCampaignId "Use generic-lens or generic-optics with 'campaignId' instead." #-}

instance Lude.AWSRequest GetCampaignDateRangeKpi where
  type Rs GetCampaignDateRangeKpi = GetCampaignDateRangeKpiResponse
  request = Req.get pinpointService
  response =
    Res.receiveJSON
      ( \s h x ->
          GetCampaignDateRangeKpiResponse'
            Lude.<$> (Lude.pure (Lude.fromEnum s)) Lude.<*> (Lude.eitherParseJSON x)
      )

instance Lude.ToHeaders GetCampaignDateRangeKpi where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToPath GetCampaignDateRangeKpi where
  toPath GetCampaignDateRangeKpi' {..} =
    Lude.mconcat
      [ "/v1/apps/",
        Lude.toBS applicationId,
        "/campaigns/",
        Lude.toBS campaignId,
        "/kpis/daterange/",
        Lude.toBS kpiName
      ]

instance Lude.ToQuery GetCampaignDateRangeKpi where
  toQuery GetCampaignDateRangeKpi' {..} =
    Lude.mconcat
      [ "start-time" Lude.=: startTime,
        "next-token" Lude.=: nextToken,
        "end-time" Lude.=: endTime,
        "page-size" Lude.=: pageSize
      ]

-- | /See:/ 'mkGetCampaignDateRangeKpiResponse' smart constructor.
data GetCampaignDateRangeKpiResponse = GetCampaignDateRangeKpiResponse'
  { responseStatus ::
      Lude.Int,
    campaignDateRangeKpiResponse ::
      CampaignDateRangeKpiResponse
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetCampaignDateRangeKpiResponse' with the minimum fields required to make a request.
--
-- * 'campaignDateRangeKpiResponse' - Undocumented field.
-- * 'responseStatus' - The response status code.
mkGetCampaignDateRangeKpiResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  -- | 'campaignDateRangeKpiResponse'
  CampaignDateRangeKpiResponse ->
  GetCampaignDateRangeKpiResponse
mkGetCampaignDateRangeKpiResponse
  pResponseStatus_
  pCampaignDateRangeKpiResponse_ =
    GetCampaignDateRangeKpiResponse'
      { responseStatus =
          pResponseStatus_,
        campaignDateRangeKpiResponse = pCampaignDateRangeKpiResponse_
      }

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcdrkrsResponseStatus :: Lens.Lens' GetCampaignDateRangeKpiResponse Lude.Int
gcdrkrsResponseStatus = Lens.lens (responseStatus :: GetCampaignDateRangeKpiResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: GetCampaignDateRangeKpiResponse)
{-# DEPRECATED gcdrkrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'campaignDateRangeKpiResponse' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gcdrkrsCampaignDateRangeKpiResponse :: Lens.Lens' GetCampaignDateRangeKpiResponse CampaignDateRangeKpiResponse
gcdrkrsCampaignDateRangeKpiResponse = Lens.lens (campaignDateRangeKpiResponse :: GetCampaignDateRangeKpiResponse -> CampaignDateRangeKpiResponse) (\s a -> s {campaignDateRangeKpiResponse = a} :: GetCampaignDateRangeKpiResponse)
{-# DEPRECATED gcdrkrsCampaignDateRangeKpiResponse "Use generic-lens or generic-optics with 'campaignDateRangeKpiResponse' instead." #-}
