{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAF.DeletePermissionPolicy
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes an IAM policy from the specified RuleGroup.
--
-- The user making the request must be the owner of the RuleGroup.
module Network.AWS.WAF.DeletePermissionPolicy
  ( -- * Creating a request
    DeletePermissionPolicy (..),
    mkDeletePermissionPolicy,

    -- ** Request lenses
    dppResourceARN,

    -- * Destructuring the response
    DeletePermissionPolicyResponse (..),
    mkDeletePermissionPolicyResponse,

    -- ** Response lenses
    dpprsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.WAF.Types

-- | /See:/ 'mkDeletePermissionPolicy' smart constructor.
newtype DeletePermissionPolicy = DeletePermissionPolicy'
  { resourceARN ::
      Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DeletePermissionPolicy' with the minimum fields required to make a request.
--
-- * 'resourceARN' - The Amazon Resource Name (ARN) of the RuleGroup from which you want to delete the policy.
--
-- The user making the request must be the owner of the RuleGroup.
mkDeletePermissionPolicy ::
  -- | 'resourceARN'
  Lude.Text ->
  DeletePermissionPolicy
mkDeletePermissionPolicy pResourceARN_ =
  DeletePermissionPolicy' {resourceARN = pResourceARN_}

-- | The Amazon Resource Name (ARN) of the RuleGroup from which you want to delete the policy.
--
-- The user making the request must be the owner of the RuleGroup.
--
-- /Note:/ Consider using 'resourceARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dppResourceARN :: Lens.Lens' DeletePermissionPolicy Lude.Text
dppResourceARN = Lens.lens (resourceARN :: DeletePermissionPolicy -> Lude.Text) (\s a -> s {resourceARN = a} :: DeletePermissionPolicy)
{-# DEPRECATED dppResourceARN "Use generic-lens or generic-optics with 'resourceARN' instead." #-}

instance Lude.AWSRequest DeletePermissionPolicy where
  type Rs DeletePermissionPolicy = DeletePermissionPolicyResponse
  request = Req.postJSON wafService
  response =
    Res.receiveEmpty
      ( \s h x ->
          DeletePermissionPolicyResponse'
            Lude.<$> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders DeletePermissionPolicy where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("AWSWAF_20150824.DeletePermissionPolicy" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON DeletePermissionPolicy where
  toJSON DeletePermissionPolicy' {..} =
    Lude.object
      (Lude.catMaybes [Lude.Just ("ResourceArn" Lude..= resourceARN)])

instance Lude.ToPath DeletePermissionPolicy where
  toPath = Lude.const "/"

instance Lude.ToQuery DeletePermissionPolicy where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkDeletePermissionPolicyResponse' smart constructor.
newtype DeletePermissionPolicyResponse = DeletePermissionPolicyResponse'
  { responseStatus ::
      Lude.Int
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DeletePermissionPolicyResponse' with the minimum fields required to make a request.
--
-- * 'responseStatus' - The response status code.
mkDeletePermissionPolicyResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  DeletePermissionPolicyResponse
mkDeletePermissionPolicyResponse pResponseStatus_ =
  DeletePermissionPolicyResponse'
    { responseStatus =
        pResponseStatus_
    }

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dpprsResponseStatus :: Lens.Lens' DeletePermissionPolicyResponse Lude.Int
dpprsResponseStatus = Lens.lens (responseStatus :: DeletePermissionPolicyResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: DeletePermissionPolicyResponse)
{-# DEPRECATED dpprsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
