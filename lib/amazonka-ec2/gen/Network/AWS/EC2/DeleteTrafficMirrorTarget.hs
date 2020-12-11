{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DeleteTrafficMirrorTarget
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Traffic Mirror target.
--
-- You cannot delete a Traffic Mirror target that is in use by a Traffic Mirror session.
module Network.AWS.EC2.DeleteTrafficMirrorTarget
  ( -- * Creating a request
    DeleteTrafficMirrorTarget (..),
    mkDeleteTrafficMirrorTarget,

    -- ** Request lenses
    dtmttDryRun,
    dtmttTrafficMirrorTargetId,

    -- * Destructuring the response
    DeleteTrafficMirrorTargetResponse (..),
    mkDeleteTrafficMirrorTargetResponse,

    -- ** Response lenses
    dtmttrsTrafficMirrorTargetId,
    dtmttrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkDeleteTrafficMirrorTarget' smart constructor.
data DeleteTrafficMirrorTarget = DeleteTrafficMirrorTarget'
  { dryRun ::
      Lude.Maybe Lude.Bool,
    trafficMirrorTargetId :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DeleteTrafficMirrorTarget' with the minimum fields required to make a request.
--
-- * 'dryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
-- * 'trafficMirrorTargetId' - The ID of the Traffic Mirror target.
mkDeleteTrafficMirrorTarget ::
  -- | 'trafficMirrorTargetId'
  Lude.Text ->
  DeleteTrafficMirrorTarget
mkDeleteTrafficMirrorTarget pTrafficMirrorTargetId_ =
  DeleteTrafficMirrorTarget'
    { dryRun = Lude.Nothing,
      trafficMirrorTargetId = pTrafficMirrorTargetId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtmttDryRun :: Lens.Lens' DeleteTrafficMirrorTarget (Lude.Maybe Lude.Bool)
dtmttDryRun = Lens.lens (dryRun :: DeleteTrafficMirrorTarget -> Lude.Maybe Lude.Bool) (\s a -> s {dryRun = a} :: DeleteTrafficMirrorTarget)
{-# DEPRECATED dtmttDryRun "Use generic-lens or generic-optics with 'dryRun' instead." #-}

-- | The ID of the Traffic Mirror target.
--
-- /Note:/ Consider using 'trafficMirrorTargetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtmttTrafficMirrorTargetId :: Lens.Lens' DeleteTrafficMirrorTarget Lude.Text
dtmttTrafficMirrorTargetId = Lens.lens (trafficMirrorTargetId :: DeleteTrafficMirrorTarget -> Lude.Text) (\s a -> s {trafficMirrorTargetId = a} :: DeleteTrafficMirrorTarget)
{-# DEPRECATED dtmttTrafficMirrorTargetId "Use generic-lens or generic-optics with 'trafficMirrorTargetId' instead." #-}

instance Lude.AWSRequest DeleteTrafficMirrorTarget where
  type
    Rs DeleteTrafficMirrorTarget =
      DeleteTrafficMirrorTargetResponse
  request = Req.postQuery ec2Service
  response =
    Res.receiveXML
      ( \s h x ->
          DeleteTrafficMirrorTargetResponse'
            Lude.<$> (x Lude..@? "trafficMirrorTargetId")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders DeleteTrafficMirrorTarget where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToPath DeleteTrafficMirrorTarget where
  toPath = Lude.const "/"

instance Lude.ToQuery DeleteTrafficMirrorTarget where
  toQuery DeleteTrafficMirrorTarget' {..} =
    Lude.mconcat
      [ "Action" Lude.=: ("DeleteTrafficMirrorTarget" :: Lude.ByteString),
        "Version" Lude.=: ("2016-11-15" :: Lude.ByteString),
        "DryRun" Lude.=: dryRun,
        "TrafficMirrorTargetId" Lude.=: trafficMirrorTargetId
      ]

-- | /See:/ 'mkDeleteTrafficMirrorTargetResponse' smart constructor.
data DeleteTrafficMirrorTargetResponse = DeleteTrafficMirrorTargetResponse'
  { trafficMirrorTargetId ::
      Lude.Maybe Lude.Text,
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

-- | Creates a value of 'DeleteTrafficMirrorTargetResponse' with the minimum fields required to make a request.
--
-- * 'responseStatus' - The response status code.
-- * 'trafficMirrorTargetId' - The ID of the deleted Traffic Mirror target.
mkDeleteTrafficMirrorTargetResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  DeleteTrafficMirrorTargetResponse
mkDeleteTrafficMirrorTargetResponse pResponseStatus_ =
  DeleteTrafficMirrorTargetResponse'
    { trafficMirrorTargetId =
        Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The ID of the deleted Traffic Mirror target.
--
-- /Note:/ Consider using 'trafficMirrorTargetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtmttrsTrafficMirrorTargetId :: Lens.Lens' DeleteTrafficMirrorTargetResponse (Lude.Maybe Lude.Text)
dtmttrsTrafficMirrorTargetId = Lens.lens (trafficMirrorTargetId :: DeleteTrafficMirrorTargetResponse -> Lude.Maybe Lude.Text) (\s a -> s {trafficMirrorTargetId = a} :: DeleteTrafficMirrorTargetResponse)
{-# DEPRECATED dtmttrsTrafficMirrorTargetId "Use generic-lens or generic-optics with 'trafficMirrorTargetId' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtmttrsResponseStatus :: Lens.Lens' DeleteTrafficMirrorTargetResponse Lude.Int
dtmttrsResponseStatus = Lens.lens (responseStatus :: DeleteTrafficMirrorTargetResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: DeleteTrafficMirrorTargetResponse)
{-# DEPRECATED dtmttrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
