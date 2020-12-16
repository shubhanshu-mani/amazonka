{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.ListWorkGroups
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists available workgroups for the account.
module Network.AWS.Athena.ListWorkGroups
  ( -- * Creating a request
    ListWorkGroups (..),
    mkListWorkGroups,

    -- ** Request lenses
    lwgNextToken,
    lwgMaxResults,

    -- * Destructuring the response
    ListWorkGroupsResponse (..),
    mkListWorkGroupsResponse,

    -- ** Response lenses
    lwgrsNextToken,
    lwgrsWorkGroups,
    lwgrsResponseStatus,
  )
where

import Network.AWS.Athena.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkListWorkGroups' smart constructor.
data ListWorkGroups = ListWorkGroups'
  { -- | A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the @NextToken@ from the response object of the previous page call.
    nextToken :: Lude.Maybe Lude.Text,
    -- | The maximum number of workgroups to return in this request.
    maxResults :: Lude.Maybe Lude.Natural
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ListWorkGroups' with the minimum fields required to make a request.
--
-- * 'nextToken' - A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the @NextToken@ from the response object of the previous page call.
-- * 'maxResults' - The maximum number of workgroups to return in this request.
mkListWorkGroups ::
  ListWorkGroups
mkListWorkGroups =
  ListWorkGroups'
    { nextToken = Lude.Nothing,
      maxResults = Lude.Nothing
    }

-- | A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the @NextToken@ from the response object of the previous page call.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lwgNextToken :: Lens.Lens' ListWorkGroups (Lude.Maybe Lude.Text)
lwgNextToken = Lens.lens (nextToken :: ListWorkGroups -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: ListWorkGroups)
{-# DEPRECATED lwgNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The maximum number of workgroups to return in this request.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lwgMaxResults :: Lens.Lens' ListWorkGroups (Lude.Maybe Lude.Natural)
lwgMaxResults = Lens.lens (maxResults :: ListWorkGroups -> Lude.Maybe Lude.Natural) (\s a -> s {maxResults = a} :: ListWorkGroups)
{-# DEPRECATED lwgMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

instance Lude.AWSRequest ListWorkGroups where
  type Rs ListWorkGroups = ListWorkGroupsResponse
  request = Req.postJSON athenaService
  response =
    Res.receiveJSON
      ( \s h x ->
          ListWorkGroupsResponse'
            Lude.<$> (x Lude..?> "NextToken")
            Lude.<*> (x Lude..?> "WorkGroups" Lude..!@ Lude.mempty)
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders ListWorkGroups where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("AmazonAthena.ListWorkGroups" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON ListWorkGroups where
  toJSON ListWorkGroups' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("NextToken" Lude..=) Lude.<$> nextToken,
            ("MaxResults" Lude..=) Lude.<$> maxResults
          ]
      )

instance Lude.ToPath ListWorkGroups where
  toPath = Lude.const "/"

instance Lude.ToQuery ListWorkGroups where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkListWorkGroupsResponse' smart constructor.
data ListWorkGroupsResponse = ListWorkGroupsResponse'
  { -- | A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the @NextToken@ from the response object of the previous page call.
    nextToken :: Lude.Maybe Lude.Text,
    -- | The list of workgroups, including their names, descriptions, creation times, and states.
    workGroups :: Lude.Maybe [WorkGroupSummary],
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ListWorkGroupsResponse' with the minimum fields required to make a request.
--
-- * 'nextToken' - A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the @NextToken@ from the response object of the previous page call.
-- * 'workGroups' - The list of workgroups, including their names, descriptions, creation times, and states.
-- * 'responseStatus' - The response status code.
mkListWorkGroupsResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  ListWorkGroupsResponse
mkListWorkGroupsResponse pResponseStatus_ =
  ListWorkGroupsResponse'
    { nextToken = Lude.Nothing,
      workGroups = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the @NextToken@ from the response object of the previous page call.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lwgrsNextToken :: Lens.Lens' ListWorkGroupsResponse (Lude.Maybe Lude.Text)
lwgrsNextToken = Lens.lens (nextToken :: ListWorkGroupsResponse -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: ListWorkGroupsResponse)
{-# DEPRECATED lwgrsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The list of workgroups, including their names, descriptions, creation times, and states.
--
-- /Note:/ Consider using 'workGroups' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lwgrsWorkGroups :: Lens.Lens' ListWorkGroupsResponse (Lude.Maybe [WorkGroupSummary])
lwgrsWorkGroups = Lens.lens (workGroups :: ListWorkGroupsResponse -> Lude.Maybe [WorkGroupSummary]) (\s a -> s {workGroups = a} :: ListWorkGroupsResponse)
{-# DEPRECATED lwgrsWorkGroups "Use generic-lens or generic-optics with 'workGroups' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lwgrsResponseStatus :: Lens.Lens' ListWorkGroupsResponse Lude.Int
lwgrsResponseStatus = Lens.lens (responseStatus :: ListWorkGroupsResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: ListWorkGroupsResponse)
{-# DEPRECATED lwgrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}