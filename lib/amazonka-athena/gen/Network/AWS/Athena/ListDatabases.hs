{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.ListDatabases
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the databases in the specified data catalog.
--
-- This operation returns paginated results.
module Network.AWS.Athena.ListDatabases
  ( -- * Creating a request
    ListDatabases (..),
    mkListDatabases,

    -- ** Request lenses
    ldNextToken,
    ldMaxResults,
    ldCatalogName,

    -- * Destructuring the response
    ListDatabasesResponse (..),
    mkListDatabasesResponse,

    -- ** Response lenses
    ldrsDatabaseList,
    ldrsNextToken,
    ldrsResponseStatus,
  )
where

import Network.AWS.Athena.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Page
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkListDatabases' smart constructor.
data ListDatabases = ListDatabases'
  { nextToken ::
      Lude.Maybe Lude.Text,
    maxResults :: Lude.Maybe Lude.Natural,
    catalogName :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ListDatabases' with the minimum fields required to make a request.
--
-- * 'catalogName' - The name of the data catalog that contains the databases to return.
-- * 'maxResults' - Specifies the maximum number of results to return.
-- * 'nextToken' - A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the @NextToken@ from the response object of the previous page call.
mkListDatabases ::
  -- | 'catalogName'
  Lude.Text ->
  ListDatabases
mkListDatabases pCatalogName_ =
  ListDatabases'
    { nextToken = Lude.Nothing,
      maxResults = Lude.Nothing,
      catalogName = pCatalogName_
    }

-- | A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the @NextToken@ from the response object of the previous page call.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldNextToken :: Lens.Lens' ListDatabases (Lude.Maybe Lude.Text)
ldNextToken = Lens.lens (nextToken :: ListDatabases -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: ListDatabases)
{-# DEPRECATED ldNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | Specifies the maximum number of results to return.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldMaxResults :: Lens.Lens' ListDatabases (Lude.Maybe Lude.Natural)
ldMaxResults = Lens.lens (maxResults :: ListDatabases -> Lude.Maybe Lude.Natural) (\s a -> s {maxResults = a} :: ListDatabases)
{-# DEPRECATED ldMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

-- | The name of the data catalog that contains the databases to return.
--
-- /Note:/ Consider using 'catalogName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldCatalogName :: Lens.Lens' ListDatabases Lude.Text
ldCatalogName = Lens.lens (catalogName :: ListDatabases -> Lude.Text) (\s a -> s {catalogName = a} :: ListDatabases)
{-# DEPRECATED ldCatalogName "Use generic-lens or generic-optics with 'catalogName' instead." #-}

instance Page.AWSPager ListDatabases where
  page rq rs
    | Page.stop (rs Lens.^. ldrsNextToken) = Lude.Nothing
    | Page.stop (rs Lens.^. ldrsDatabaseList) = Lude.Nothing
    | Lude.otherwise =
      Lude.Just Lude.$
        rq
          Lude.& ldNextToken Lens..~ rs Lens.^. ldrsNextToken

instance Lude.AWSRequest ListDatabases where
  type Rs ListDatabases = ListDatabasesResponse
  request = Req.postJSON athenaService
  response =
    Res.receiveJSON
      ( \s h x ->
          ListDatabasesResponse'
            Lude.<$> (x Lude..?> "DatabaseList" Lude..!@ Lude.mempty)
            Lude.<*> (x Lude..?> "NextToken")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders ListDatabases where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("AmazonAthena.ListDatabases" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON ListDatabases where
  toJSON ListDatabases' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("NextToken" Lude..=) Lude.<$> nextToken,
            ("MaxResults" Lude..=) Lude.<$> maxResults,
            Lude.Just ("CatalogName" Lude..= catalogName)
          ]
      )

instance Lude.ToPath ListDatabases where
  toPath = Lude.const "/"

instance Lude.ToQuery ListDatabases where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkListDatabasesResponse' smart constructor.
data ListDatabasesResponse = ListDatabasesResponse'
  { databaseList ::
      Lude.Maybe [Database],
    nextToken :: Lude.Maybe Lude.Text,
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

-- | Creates a value of 'ListDatabasesResponse' with the minimum fields required to make a request.
--
-- * 'databaseList' - A list of databases from a data catalog.
-- * 'nextToken' - A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.
-- * 'responseStatus' - The response status code.
mkListDatabasesResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  ListDatabasesResponse
mkListDatabasesResponse pResponseStatus_ =
  ListDatabasesResponse'
    { databaseList = Lude.Nothing,
      nextToken = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | A list of databases from a data catalog.
--
-- /Note:/ Consider using 'databaseList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldrsDatabaseList :: Lens.Lens' ListDatabasesResponse (Lude.Maybe [Database])
ldrsDatabaseList = Lens.lens (databaseList :: ListDatabasesResponse -> Lude.Maybe [Database]) (\s a -> s {databaseList = a} :: ListDatabasesResponse)
{-# DEPRECATED ldrsDatabaseList "Use generic-lens or generic-optics with 'databaseList' instead." #-}

-- | A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldrsNextToken :: Lens.Lens' ListDatabasesResponse (Lude.Maybe Lude.Text)
ldrsNextToken = Lens.lens (nextToken :: ListDatabasesResponse -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: ListDatabasesResponse)
{-# DEPRECATED ldrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ldrsResponseStatus :: Lens.Lens' ListDatabasesResponse Lude.Int
ldrsResponseStatus = Lens.lens (responseStatus :: ListDatabasesResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: ListDatabasesResponse)
{-# DEPRECATED ldrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
