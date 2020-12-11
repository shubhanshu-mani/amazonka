{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.CreateClusterSubnetGroup
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Amazon Redshift subnet group. You must provide a list of one or more subnets in your existing Amazon Virtual Private Cloud (Amazon VPC) when creating Amazon Redshift subnet group.
--
-- For information about subnet groups, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-cluster-subnet-groups.html Amazon Redshift Cluster Subnet Groups> in the /Amazon Redshift Cluster Management Guide/ .
module Network.AWS.Redshift.CreateClusterSubnetGroup
  ( -- * Creating a request
    CreateClusterSubnetGroup (..),
    mkCreateClusterSubnetGroup,

    -- ** Request lenses
    ccsgTags,
    ccsgClusterSubnetGroupName,
    ccsgDescription,
    ccsgSubnetIds,

    -- * Destructuring the response
    CreateClusterSubnetGroupResponse (..),
    mkCreateClusterSubnetGroupResponse,

    -- ** Response lenses
    ccsgrsClusterSubnetGroup,
    ccsgrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.Redshift.Types
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- |
--
-- /See:/ 'mkCreateClusterSubnetGroup' smart constructor.
data CreateClusterSubnetGroup = CreateClusterSubnetGroup'
  { tags ::
      Lude.Maybe [Tag],
    clusterSubnetGroupName :: Lude.Text,
    description :: Lude.Text,
    subnetIds :: [Lude.Text]
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateClusterSubnetGroup' with the minimum fields required to make a request.
--
-- * 'clusterSubnetGroupName' - The name for the subnet group. Amazon Redshift stores the value as a lowercase string.
--
-- Constraints:
--
--     * Must contain no more than 255 alphanumeric characters or hyphens.
--
--
--     * Must not be "Default".
--
--
--     * Must be unique for all subnet groups that are created by your AWS account.
--
--
-- Example: @examplesubnetgroup@
-- * 'description' - A description for the subnet group.
-- * 'subnetIds' - An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single request.
-- * 'tags' - A list of tag instances.
mkCreateClusterSubnetGroup ::
  -- | 'clusterSubnetGroupName'
  Lude.Text ->
  -- | 'description'
  Lude.Text ->
  CreateClusterSubnetGroup
mkCreateClusterSubnetGroup pClusterSubnetGroupName_ pDescription_ =
  CreateClusterSubnetGroup'
    { tags = Lude.Nothing,
      clusterSubnetGroupName = pClusterSubnetGroupName_,
      description = pDescription_,
      subnetIds = Lude.mempty
    }

-- | A list of tag instances.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccsgTags :: Lens.Lens' CreateClusterSubnetGroup (Lude.Maybe [Tag])
ccsgTags = Lens.lens (tags :: CreateClusterSubnetGroup -> Lude.Maybe [Tag]) (\s a -> s {tags = a} :: CreateClusterSubnetGroup)
{-# DEPRECATED ccsgTags "Use generic-lens or generic-optics with 'tags' instead." #-}

-- | The name for the subnet group. Amazon Redshift stores the value as a lowercase string.
--
-- Constraints:
--
--     * Must contain no more than 255 alphanumeric characters or hyphens.
--
--
--     * Must not be "Default".
--
--
--     * Must be unique for all subnet groups that are created by your AWS account.
--
--
-- Example: @examplesubnetgroup@
--
-- /Note:/ Consider using 'clusterSubnetGroupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccsgClusterSubnetGroupName :: Lens.Lens' CreateClusterSubnetGroup Lude.Text
ccsgClusterSubnetGroupName = Lens.lens (clusterSubnetGroupName :: CreateClusterSubnetGroup -> Lude.Text) (\s a -> s {clusterSubnetGroupName = a} :: CreateClusterSubnetGroup)
{-# DEPRECATED ccsgClusterSubnetGroupName "Use generic-lens or generic-optics with 'clusterSubnetGroupName' instead." #-}

-- | A description for the subnet group.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccsgDescription :: Lens.Lens' CreateClusterSubnetGroup Lude.Text
ccsgDescription = Lens.lens (description :: CreateClusterSubnetGroup -> Lude.Text) (\s a -> s {description = a} :: CreateClusterSubnetGroup)
{-# DEPRECATED ccsgDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single request.
--
-- /Note:/ Consider using 'subnetIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccsgSubnetIds :: Lens.Lens' CreateClusterSubnetGroup [Lude.Text]
ccsgSubnetIds = Lens.lens (subnetIds :: CreateClusterSubnetGroup -> [Lude.Text]) (\s a -> s {subnetIds = a} :: CreateClusterSubnetGroup)
{-# DEPRECATED ccsgSubnetIds "Use generic-lens or generic-optics with 'subnetIds' instead." #-}

instance Lude.AWSRequest CreateClusterSubnetGroup where
  type Rs CreateClusterSubnetGroup = CreateClusterSubnetGroupResponse
  request = Req.postQuery redshiftService
  response =
    Res.receiveXMLWrapper
      "CreateClusterSubnetGroupResult"
      ( \s h x ->
          CreateClusterSubnetGroupResponse'
            Lude.<$> (x Lude..@? "ClusterSubnetGroup")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders CreateClusterSubnetGroup where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToPath CreateClusterSubnetGroup where
  toPath = Lude.const "/"

instance Lude.ToQuery CreateClusterSubnetGroup where
  toQuery CreateClusterSubnetGroup' {..} =
    Lude.mconcat
      [ "Action" Lude.=: ("CreateClusterSubnetGroup" :: Lude.ByteString),
        "Version" Lude.=: ("2012-12-01" :: Lude.ByteString),
        "Tags" Lude.=: Lude.toQuery (Lude.toQueryList "Tag" Lude.<$> tags),
        "ClusterSubnetGroupName" Lude.=: clusterSubnetGroupName,
        "Description" Lude.=: description,
        "SubnetIds" Lude.=: Lude.toQueryList "SubnetIdentifier" subnetIds
      ]

-- | /See:/ 'mkCreateClusterSubnetGroupResponse' smart constructor.
data CreateClusterSubnetGroupResponse = CreateClusterSubnetGroupResponse'
  { clusterSubnetGroup ::
      Lude.Maybe
        ClusterSubnetGroup,
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

-- | Creates a value of 'CreateClusterSubnetGroupResponse' with the minimum fields required to make a request.
--
-- * 'clusterSubnetGroup' - Undocumented field.
-- * 'responseStatus' - The response status code.
mkCreateClusterSubnetGroupResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  CreateClusterSubnetGroupResponse
mkCreateClusterSubnetGroupResponse pResponseStatus_ =
  CreateClusterSubnetGroupResponse'
    { clusterSubnetGroup =
        Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | Undocumented field.
--
-- /Note:/ Consider using 'clusterSubnetGroup' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccsgrsClusterSubnetGroup :: Lens.Lens' CreateClusterSubnetGroupResponse (Lude.Maybe ClusterSubnetGroup)
ccsgrsClusterSubnetGroup = Lens.lens (clusterSubnetGroup :: CreateClusterSubnetGroupResponse -> Lude.Maybe ClusterSubnetGroup) (\s a -> s {clusterSubnetGroup = a} :: CreateClusterSubnetGroupResponse)
{-# DEPRECATED ccsgrsClusterSubnetGroup "Use generic-lens or generic-optics with 'clusterSubnetGroup' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccsgrsResponseStatus :: Lens.Lens' CreateClusterSubnetGroupResponse Lude.Int
ccsgrsResponseStatus = Lens.lens (responseStatus :: CreateClusterSubnetGroupResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: CreateClusterSubnetGroupResponse)
{-# DEPRECATED ccsgrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
