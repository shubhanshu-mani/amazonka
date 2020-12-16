{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.ListDataCatalogs
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the data catalogs in the current AWS account.
--
-- This operation returns paginated results.
module Network.AWS.Athena.ListDataCatalogs
  ( -- * Creating a request
    ListDataCatalogs (..),
    mkListDataCatalogs,

    -- ** Request lenses
    ldcNextToken,
    ldcMaxResults,

    -- * Destructuring the response
    ListDataCatalogsResponse (..),
    mkListDataCatalogsResponse,

    -- ** Response lenses
    ldcrsDataCatalogsSummary,
    ldcrsNextToken,
    ldcrsResponseStatus,
  )
where

import Network.AWS.Athena.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Page
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkListDataCatalogs' smart constructor.
data ListDataCatalogs = ListDataCatalogs'
  { -- | A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.
    nextToken :: Lude.Maybe Lude.Text,
    -- | Specifies the maximum number of data catalogs to return.
    maxResults :: Lude.Maybe Lude.Natural
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ListDataCatalogs' with the minimum fields required to make a request.
--
-- * 'nextToken' - A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.
-- * 'maxResults' - Specifies the maximum number of data catalogs to return.
mkListDataCatalogs ::
  ListDataCatalogs
mkListDataCatalogs =
  ListDataCatalogs'
    { nextToken = Lude.Nothing,
      maxResults = Lude.Nothing
    }

-- | A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldcNextToken :: Lens.Lens' ListDataCatalogs (Lude.Maybe Lude.Text)
ldcNextToken = Lens.lens (nextToken :: ListDataCatalogs -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: ListDataCatalogs)
{-# DEPRECATED ldcNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | Specifies the maximum number of data catalogs to return.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldcMaxResults :: Lens.Lens' ListDataCatalogs (Lude.Maybe Lude.Natural)
ldcMaxResults = Lens.lens (maxResults :: ListDataCatalogs -> Lude.Maybe Lude.Natural) (\s a -> s {maxResults = a} :: ListDataCatalogs)
{-# DEPRECATED ldcMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

instance Page.AWSPager ListDataCatalogs where
  page rq rs
    | Page.stop (rs Lens.^. ldcrsNextToken) = Lude.Nothing
    | Page.stop (rs Lens.^. ldcrsDataCatalogsSummary) = Lude.Nothing
    | Lude.otherwise =
      Lude.Just Lude.$
        rq
          Lude.& ldcNextToken Lens..~ rs Lens.^. ldcrsNextToken

instance Lude.AWSRequest ListDataCatalogs where
  type Rs ListDataCatalogs = ListDataCatalogsResponse
  request = Req.postJSON athenaService
  response =
    Res.receiveJSON
      ( \s h x ->
          ListDataCatalogsResponse'
            Lude.<$> (x Lude..?> "DataCatalogsSummary" Lude..!@ Lude.mempty)
            Lude.<*> (x Lude..?> "NextToken")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders ListDataCatalogs where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("AmazonAthena.ListDataCatalogs" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON ListDataCatalogs where
  toJSON ListDataCatalogs' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("NextToken" Lude..=) Lude.<$> nextToken,
            ("MaxResults" Lude..=) Lude.<$> maxResults
          ]
      )

instance Lude.ToPath ListDataCatalogs where
  toPath = Lude.const "/"

instance Lude.ToQuery ListDataCatalogs where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkListDataCatalogsResponse' smart constructor.
data ListDataCatalogsResponse = ListDataCatalogsResponse'
  { -- | A summary list of data catalogs.
    dataCatalogsSummary :: Lude.Maybe [DataCatalogSummary],
    -- | A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.
    nextToken :: Lude.Maybe Lude.Text,
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ListDataCatalogsResponse' with the minimum fields required to make a request.
--
-- * 'dataCatalogsSummary' - A summary list of data catalogs.
-- * 'nextToken' - A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.
-- * 'responseStatus' - The response status code.
mkListDataCatalogsResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  ListDataCatalogsResponse
mkListDataCatalogsResponse pResponseStatus_ =
  ListDataCatalogsResponse'
    { dataCatalogsSummary = Lude.Nothing,
      nextToken = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | A summary list of data catalogs.
--
-- /Note:/ Consider using 'dataCatalogsSummary' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldcrsDataCatalogsSummary :: Lens.Lens' ListDataCatalogsResponse (Lude.Maybe [DataCatalogSummary])
ldcrsDataCatalogsSummary = Lens.lens (dataCatalogsSummary :: ListDataCatalogsResponse -> Lude.Maybe [DataCatalogSummary]) (\s a -> s {dataCatalogsSummary = a} :: ListDataCatalogsResponse)
{-# DEPRECATED ldcrsDataCatalogsSummary "Use generic-lens or generic-optics with 'dataCatalogsSummary' instead." #-}

-- | A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldcrsNextToken :: Lens.Lens' ListDataCatalogsResponse (Lude.Maybe Lude.Text)
ldcrsNextToken = Lens.lens (nextToken :: ListDataCatalogsResponse -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: ListDataCatalogsResponse)
{-# DEPRECATED ldcrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldcrsResponseStatus :: Lens.Lens' ListDataCatalogsResponse Lude.Int
ldcrsResponseStatus = Lens.lens (responseStatus :: ListDataCatalogsResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: ListDataCatalogsResponse)
{-# DEPRECATED ldcrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}