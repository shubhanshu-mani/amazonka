{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.ListNamedQueries
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of available query IDs only for queries saved in the specified workgroup. Requires that you have access to the specified workgroup. If a workgroup is not specified, lists the saved queries for the primary workgroup.
--
-- For code samples using the AWS SDK for Java, see <http://docs.aws.amazon.com/athena/latest/ug/code-samples.html Examples and Code Samples> in the /Amazon Athena User Guide/ .
--
-- This operation returns paginated results.
module Network.AWS.Athena.ListNamedQueries
  ( -- * Creating a request
    ListNamedQueries (..),
    mkListNamedQueries,

    -- ** Request lenses
    lnqNextToken,
    lnqWorkGroup,
    lnqMaxResults,

    -- * Destructuring the response
    ListNamedQueriesResponse (..),
    mkListNamedQueriesResponse,

    -- ** Response lenses
    lnqrsNextToken,
    lnqrsNamedQueryIds,
    lnqrsResponseStatus,
  )
where

import Network.AWS.Athena.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Page
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkListNamedQueries' smart constructor.
data ListNamedQueries = ListNamedQueries'
  { nextToken ::
      Lude.Maybe Lude.Text,
    workGroup :: Lude.Maybe Lude.Text,
    maxResults :: Lude.Maybe Lude.Natural
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ListNamedQueries' with the minimum fields required to make a request.
--
-- * 'maxResults' - The maximum number of queries to return in this request.
-- * 'nextToken' - A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the @NextToken@ from the response object of the previous page call.
-- * 'workGroup' - The name of the workgroup from which the named queries are being returned. If a workgroup is not specified, the saved queries for the primary workgroup are returned.
mkListNamedQueries ::
  ListNamedQueries
mkListNamedQueries =
  ListNamedQueries'
    { nextToken = Lude.Nothing,
      workGroup = Lude.Nothing,
      maxResults = Lude.Nothing
    }

-- | A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the @NextToken@ from the response object of the previous page call.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lnqNextToken :: Lens.Lens' ListNamedQueries (Lude.Maybe Lude.Text)
lnqNextToken = Lens.lens (nextToken :: ListNamedQueries -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: ListNamedQueries)
{-# DEPRECATED lnqNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The name of the workgroup from which the named queries are being returned. If a workgroup is not specified, the saved queries for the primary workgroup are returned.
--
-- /Note:/ Consider using 'workGroup' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lnqWorkGroup :: Lens.Lens' ListNamedQueries (Lude.Maybe Lude.Text)
lnqWorkGroup = Lens.lens (workGroup :: ListNamedQueries -> Lude.Maybe Lude.Text) (\s a -> s {workGroup = a} :: ListNamedQueries)
{-# DEPRECATED lnqWorkGroup "Use generic-lens or generic-optics with 'workGroup' instead." #-}

-- | The maximum number of queries to return in this request.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lnqMaxResults :: Lens.Lens' ListNamedQueries (Lude.Maybe Lude.Natural)
lnqMaxResults = Lens.lens (maxResults :: ListNamedQueries -> Lude.Maybe Lude.Natural) (\s a -> s {maxResults = a} :: ListNamedQueries)
{-# DEPRECATED lnqMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

instance Page.AWSPager ListNamedQueries where
  page rq rs
    | Page.stop (rs Lens.^. lnqrsNextToken) = Lude.Nothing
    | Page.stop (rs Lens.^. lnqrsNamedQueryIds) = Lude.Nothing
    | Lude.otherwise =
      Lude.Just Lude.$
        rq
          Lude.& lnqNextToken Lens..~ rs Lens.^. lnqrsNextToken

instance Lude.AWSRequest ListNamedQueries where
  type Rs ListNamedQueries = ListNamedQueriesResponse
  request = Req.postJSON athenaService
  response =
    Res.receiveJSON
      ( \s h x ->
          ListNamedQueriesResponse'
            Lude.<$> (x Lude..?> "NextToken")
            Lude.<*> (x Lude..?> "NamedQueryIds")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders ListNamedQueries where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("AmazonAthena.ListNamedQueries" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON ListNamedQueries where
  toJSON ListNamedQueries' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("NextToken" Lude..=) Lude.<$> nextToken,
            ("WorkGroup" Lude..=) Lude.<$> workGroup,
            ("MaxResults" Lude..=) Lude.<$> maxResults
          ]
      )

instance Lude.ToPath ListNamedQueries where
  toPath = Lude.const "/"

instance Lude.ToQuery ListNamedQueries where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkListNamedQueriesResponse' smart constructor.
data ListNamedQueriesResponse = ListNamedQueriesResponse'
  { nextToken ::
      Lude.Maybe Lude.Text,
    namedQueryIds ::
      Lude.Maybe (Lude.NonEmpty Lude.Text),
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

-- | Creates a value of 'ListNamedQueriesResponse' with the minimum fields required to make a request.
--
-- * 'namedQueryIds' - The list of unique query IDs.
-- * 'nextToken' - A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the @NextToken@ from the response object of the previous page call.
-- * 'responseStatus' - The response status code.
mkListNamedQueriesResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  ListNamedQueriesResponse
mkListNamedQueriesResponse pResponseStatus_ =
  ListNamedQueriesResponse'
    { nextToken = Lude.Nothing,
      namedQueryIds = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the @NextToken@ from the response object of the previous page call.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lnqrsNextToken :: Lens.Lens' ListNamedQueriesResponse (Lude.Maybe Lude.Text)
lnqrsNextToken = Lens.lens (nextToken :: ListNamedQueriesResponse -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: ListNamedQueriesResponse)
{-# DEPRECATED lnqrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The list of unique query IDs.
--
-- /Note:/ Consider using 'namedQueryIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lnqrsNamedQueryIds :: Lens.Lens' ListNamedQueriesResponse (Lude.Maybe (Lude.NonEmpty Lude.Text))
lnqrsNamedQueryIds = Lens.lens (namedQueryIds :: ListNamedQueriesResponse -> Lude.Maybe (Lude.NonEmpty Lude.Text)) (\s a -> s {namedQueryIds = a} :: ListNamedQueriesResponse)
{-# DEPRECATED lnqrsNamedQueryIds "Use generic-lens or generic-optics with 'namedQueryIds' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lnqrsResponseStatus :: Lens.Lens' ListNamedQueriesResponse Lude.Int
lnqrsResponseStatus = Lens.lens (responseStatus :: ListNamedQueriesResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: ListNamedQueriesResponse)
{-# DEPRECATED lnqrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
