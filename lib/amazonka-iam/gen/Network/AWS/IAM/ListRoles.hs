{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.ListRoles
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the IAM roles that have the specified path prefix. If there are none, the operation returns an empty list. For more information about roles, go to <https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html Working with Roles> .
--
-- You can paginate the results using the @MaxItems@ and @Marker@ parameters.
--
-- This operation returns paginated results.
module Network.AWS.IAM.ListRoles
  ( -- * Creating a request
    ListRoles (..),
    mkListRoles,

    -- ** Request lenses
    lrPathPrefix,
    lrMarker,
    lrMaxItems,

    -- * Destructuring the response
    ListRolesResponse (..),
    mkListRolesResponse,

    -- ** Response lenses
    lrrsMarker,
    lrrsIsTruncated,
    lrrsResponseStatus,
    lrrsRoles,
  )
where

import Network.AWS.IAM.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Page
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkListRoles' smart constructor.
data ListRoles = ListRoles'
  { pathPrefix :: Lude.Maybe Lude.Text,
    marker :: Lude.Maybe Lude.Text,
    maxItems :: Lude.Maybe Lude.Natural
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ListRoles' with the minimum fields required to make a request.
--
-- * 'marker' - Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
-- * 'maxItems' - Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ .
--
-- If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
-- * 'pathPrefix' - The path prefix for filtering the results. For example, the prefix @/application_abc/component_xyz/@ gets all roles whose path starts with @/application_abc/component_xyz/@ .
--
-- This parameter is optional. If it is not included, it defaults to a slash (/), listing all roles. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (@\u0021@ ) through the DEL character (@\u007F@ ), including most punctuation characters, digits, and upper and lowercased letters.
mkListRoles ::
  ListRoles
mkListRoles =
  ListRoles'
    { pathPrefix = Lude.Nothing,
      marker = Lude.Nothing,
      maxItems = Lude.Nothing
    }

-- | The path prefix for filtering the results. For example, the prefix @/application_abc/component_xyz/@ gets all roles whose path starts with @/application_abc/component_xyz/@ .
--
-- This parameter is optional. If it is not included, it defaults to a slash (/), listing all roles. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (@\u0021@ ) through the DEL character (@\u007F@ ), including most punctuation characters, digits, and upper and lowercased letters.
--
-- /Note:/ Consider using 'pathPrefix' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrPathPrefix :: Lens.Lens' ListRoles (Lude.Maybe Lude.Text)
lrPathPrefix = Lens.lens (pathPrefix :: ListRoles -> Lude.Maybe Lude.Text) (\s a -> s {pathPrefix = a} :: ListRoles)
{-# DEPRECATED lrPathPrefix "Use generic-lens or generic-optics with 'pathPrefix' instead." #-}

-- | Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the @Marker@ element in the response that you received to indicate where the next call should start.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrMarker :: Lens.Lens' ListRoles (Lude.Maybe Lude.Text)
lrMarker = Lens.lens (marker :: ListRoles -> Lude.Maybe Lude.Text) (\s a -> s {marker = a} :: ListRoles)
{-# DEPRECATED lrMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the @IsTruncated@ response element is @true@ .
--
-- If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the @IsTruncated@ response element returns @true@ , and @Marker@ contains a value to include in the subsequent call that tells the service where to continue from.
--
-- /Note:/ Consider using 'maxItems' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrMaxItems :: Lens.Lens' ListRoles (Lude.Maybe Lude.Natural)
lrMaxItems = Lens.lens (maxItems :: ListRoles -> Lude.Maybe Lude.Natural) (\s a -> s {maxItems = a} :: ListRoles)
{-# DEPRECATED lrMaxItems "Use generic-lens or generic-optics with 'maxItems' instead." #-}

instance Page.AWSPager ListRoles where
  page rq rs
    | Page.stop (rs Lens.^. lrrsIsTruncated) = Lude.Nothing
    | Lude.isNothing (rs Lens.^. lrrsMarker) = Lude.Nothing
    | Lude.otherwise =
      Lude.Just Lude.$ rq Lude.& lrMarker Lens..~ rs Lens.^. lrrsMarker

instance Lude.AWSRequest ListRoles where
  type Rs ListRoles = ListRolesResponse
  request = Req.postQuery iamService
  response =
    Res.receiveXMLWrapper
      "ListRolesResult"
      ( \s h x ->
          ListRolesResponse'
            Lude.<$> (x Lude..@? "Marker")
            Lude.<*> (x Lude..@? "IsTruncated")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
            Lude.<*> ( x Lude..@? "Roles" Lude..!@ Lude.mempty
                         Lude.>>= Lude.parseXMLList "member"
                     )
      )

instance Lude.ToHeaders ListRoles where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToPath ListRoles where
  toPath = Lude.const "/"

instance Lude.ToQuery ListRoles where
  toQuery ListRoles' {..} =
    Lude.mconcat
      [ "Action" Lude.=: ("ListRoles" :: Lude.ByteString),
        "Version" Lude.=: ("2010-05-08" :: Lude.ByteString),
        "PathPrefix" Lude.=: pathPrefix,
        "Marker" Lude.=: marker,
        "MaxItems" Lude.=: maxItems
      ]

-- | Contains the response to a successful 'ListRoles' request.
--
-- /See:/ 'mkListRolesResponse' smart constructor.
data ListRolesResponse = ListRolesResponse'
  { marker ::
      Lude.Maybe Lude.Text,
    isTruncated :: Lude.Maybe Lude.Bool,
    responseStatus :: Lude.Int,
    roles :: [Role]
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ListRolesResponse' with the minimum fields required to make a request.
--
-- * 'isTruncated' - A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
-- * 'marker' - When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
-- * 'responseStatus' - The response status code.
-- * 'roles' - A list of roles.
mkListRolesResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  ListRolesResponse
mkListRolesResponse pResponseStatus_ =
  ListRolesResponse'
    { marker = Lude.Nothing,
      isTruncated = Lude.Nothing,
      responseStatus = pResponseStatus_,
      roles = Lude.mempty
    }

-- | When @IsTruncated@ is @true@ , this element is present and contains the value to use for the @Marker@ parameter in a subsequent pagination request.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrrsMarker :: Lens.Lens' ListRolesResponse (Lude.Maybe Lude.Text)
lrrsMarker = Lens.lens (marker :: ListRolesResponse -> Lude.Maybe Lude.Text) (\s a -> s {marker = a} :: ListRolesResponse)
{-# DEPRECATED lrrsMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the @Marker@ request parameter to retrieve more items. Note that IAM might return fewer than the @MaxItems@ number of results even when there are more results available. We recommend that you check @IsTruncated@ after every call to ensure that you receive all your results.
--
-- /Note:/ Consider using 'isTruncated' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrrsIsTruncated :: Lens.Lens' ListRolesResponse (Lude.Maybe Lude.Bool)
lrrsIsTruncated = Lens.lens (isTruncated :: ListRolesResponse -> Lude.Maybe Lude.Bool) (\s a -> s {isTruncated = a} :: ListRolesResponse)
{-# DEPRECATED lrrsIsTruncated "Use generic-lens or generic-optics with 'isTruncated' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrrsResponseStatus :: Lens.Lens' ListRolesResponse Lude.Int
lrrsResponseStatus = Lens.lens (responseStatus :: ListRolesResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: ListRolesResponse)
{-# DEPRECATED lrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}

-- | A list of roles.
--
-- /Note:/ Consider using 'roles' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lrrsRoles :: Lens.Lens' ListRolesResponse [Role]
lrrsRoles = Lens.lens (roles :: ListRolesResponse -> [Role]) (\s a -> s {roles = a} :: ListRolesResponse)
{-# DEPRECATED lrrsRoles "Use generic-lens or generic-optics with 'roles' instead." #-}
