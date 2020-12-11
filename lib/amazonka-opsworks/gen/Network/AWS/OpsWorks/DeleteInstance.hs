{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.DeleteInstance
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specified instance, which terminates the associated Amazon EC2 instance. You must stop an instance before you can delete it.
--
-- For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-delete.html Deleting Instances> .
-- __Required Permissions__ : To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions> .
module Network.AWS.OpsWorks.DeleteInstance
  ( -- * Creating a request
    DeleteInstance (..),
    mkDeleteInstance,

    -- ** Request lenses
    diDeleteVolumes,
    diDeleteElasticIP,
    diInstanceId,

    -- * Destructuring the response
    DeleteInstanceResponse (..),
    mkDeleteInstanceResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.OpsWorks.Types
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkDeleteInstance' smart constructor.
data DeleteInstance = DeleteInstance'
  { deleteVolumes ::
      Lude.Maybe Lude.Bool,
    deleteElasticIP :: Lude.Maybe Lude.Bool,
    instanceId :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DeleteInstance' with the minimum fields required to make a request.
--
-- * 'deleteElasticIP' - Whether to delete the instance Elastic IP address.
-- * 'deleteVolumes' - Whether to delete the instance's Amazon EBS volumes.
-- * 'instanceId' - The instance ID.
mkDeleteInstance ::
  -- | 'instanceId'
  Lude.Text ->
  DeleteInstance
mkDeleteInstance pInstanceId_ =
  DeleteInstance'
    { deleteVolumes = Lude.Nothing,
      deleteElasticIP = Lude.Nothing,
      instanceId = pInstanceId_
    }

-- | Whether to delete the instance's Amazon EBS volumes.
--
-- /Note:/ Consider using 'deleteVolumes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
diDeleteVolumes :: Lens.Lens' DeleteInstance (Lude.Maybe Lude.Bool)
diDeleteVolumes = Lens.lens (deleteVolumes :: DeleteInstance -> Lude.Maybe Lude.Bool) (\s a -> s {deleteVolumes = a} :: DeleteInstance)
{-# DEPRECATED diDeleteVolumes "Use generic-lens or generic-optics with 'deleteVolumes' instead." #-}

-- | Whether to delete the instance Elastic IP address.
--
-- /Note:/ Consider using 'deleteElasticIP' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
diDeleteElasticIP :: Lens.Lens' DeleteInstance (Lude.Maybe Lude.Bool)
diDeleteElasticIP = Lens.lens (deleteElasticIP :: DeleteInstance -> Lude.Maybe Lude.Bool) (\s a -> s {deleteElasticIP = a} :: DeleteInstance)
{-# DEPRECATED diDeleteElasticIP "Use generic-lens or generic-optics with 'deleteElasticIP' instead." #-}

-- | The instance ID.
--
-- /Note:/ Consider using 'instanceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
diInstanceId :: Lens.Lens' DeleteInstance Lude.Text
diInstanceId = Lens.lens (instanceId :: DeleteInstance -> Lude.Text) (\s a -> s {instanceId = a} :: DeleteInstance)
{-# DEPRECATED diInstanceId "Use generic-lens or generic-optics with 'instanceId' instead." #-}

instance Lude.AWSRequest DeleteInstance where
  type Rs DeleteInstance = DeleteInstanceResponse
  request = Req.postJSON opsWorksService
  response = Res.receiveNull DeleteInstanceResponse'

instance Lude.ToHeaders DeleteInstance where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("OpsWorks_20130218.DeleteInstance" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON DeleteInstance where
  toJSON DeleteInstance' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("DeleteVolumes" Lude..=) Lude.<$> deleteVolumes,
            ("DeleteElasticIp" Lude..=) Lude.<$> deleteElasticIP,
            Lude.Just ("InstanceId" Lude..= instanceId)
          ]
      )

instance Lude.ToPath DeleteInstance where
  toPath = Lude.const "/"

instance Lude.ToQuery DeleteInstance where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkDeleteInstanceResponse' smart constructor.
data DeleteInstanceResponse = DeleteInstanceResponse'
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DeleteInstanceResponse' with the minimum fields required to make a request.
mkDeleteInstanceResponse ::
  DeleteInstanceResponse
mkDeleteInstanceResponse = DeleteInstanceResponse'
