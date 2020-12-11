{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.UpdateSegment
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new segment for an application or updates the configuration, dimension, and other settings for an existing segment that's associated with an application.
module Network.AWS.Pinpoint.UpdateSegment
  ( -- * Creating a request
    UpdateSegment (..),
    mkUpdateSegment,

    -- ** Request lenses
    usSegmentId,
    usApplicationId,
    usWriteSegmentRequest,

    -- * Destructuring the response
    UpdateSegmentResponse (..),
    mkUpdateSegmentResponse,

    -- ** Response lenses
    usrsResponseStatus,
    usrsSegmentResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkUpdateSegment' smart constructor.
data UpdateSegment = UpdateSegment'
  { segmentId :: Lude.Text,
    applicationId :: Lude.Text,
    writeSegmentRequest :: WriteSegmentRequest
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'UpdateSegment' with the minimum fields required to make a request.
--
-- * 'applicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
-- * 'segmentId' - The unique identifier for the segment.
-- * 'writeSegmentRequest' - Undocumented field.
mkUpdateSegment ::
  -- | 'segmentId'
  Lude.Text ->
  -- | 'applicationId'
  Lude.Text ->
  -- | 'writeSegmentRequest'
  WriteSegmentRequest ->
  UpdateSegment
mkUpdateSegment pSegmentId_ pApplicationId_ pWriteSegmentRequest_ =
  UpdateSegment'
    { segmentId = pSegmentId_,
      applicationId = pApplicationId_,
      writeSegmentRequest = pWriteSegmentRequest_
    }

-- | The unique identifier for the segment.
--
-- /Note:/ Consider using 'segmentId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
usSegmentId :: Lens.Lens' UpdateSegment Lude.Text
usSegmentId = Lens.lens (segmentId :: UpdateSegment -> Lude.Text) (\s a -> s {segmentId = a} :: UpdateSegment)
{-# DEPRECATED usSegmentId "Use generic-lens or generic-optics with 'segmentId' instead." #-}

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- /Note:/ Consider using 'applicationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
usApplicationId :: Lens.Lens' UpdateSegment Lude.Text
usApplicationId = Lens.lens (applicationId :: UpdateSegment -> Lude.Text) (\s a -> s {applicationId = a} :: UpdateSegment)
{-# DEPRECATED usApplicationId "Use generic-lens or generic-optics with 'applicationId' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'writeSegmentRequest' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
usWriteSegmentRequest :: Lens.Lens' UpdateSegment WriteSegmentRequest
usWriteSegmentRequest = Lens.lens (writeSegmentRequest :: UpdateSegment -> WriteSegmentRequest) (\s a -> s {writeSegmentRequest = a} :: UpdateSegment)
{-# DEPRECATED usWriteSegmentRequest "Use generic-lens or generic-optics with 'writeSegmentRequest' instead." #-}

instance Lude.AWSRequest UpdateSegment where
  type Rs UpdateSegment = UpdateSegmentResponse
  request = Req.putJSON pinpointService
  response =
    Res.receiveJSON
      ( \s h x ->
          UpdateSegmentResponse'
            Lude.<$> (Lude.pure (Lude.fromEnum s)) Lude.<*> (Lude.eitherParseJSON x)
      )

instance Lude.ToHeaders UpdateSegment where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON UpdateSegment where
  toJSON UpdateSegment' {..} =
    Lude.object
      ( Lude.catMaybes
          [Lude.Just ("WriteSegmentRequest" Lude..= writeSegmentRequest)]
      )

instance Lude.ToPath UpdateSegment where
  toPath UpdateSegment' {..} =
    Lude.mconcat
      [ "/v1/apps/",
        Lude.toBS applicationId,
        "/segments/",
        Lude.toBS segmentId
      ]

instance Lude.ToQuery UpdateSegment where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkUpdateSegmentResponse' smart constructor.
data UpdateSegmentResponse = UpdateSegmentResponse'
  { responseStatus ::
      Lude.Int,
    segmentResponse :: SegmentResponse
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'UpdateSegmentResponse' with the minimum fields required to make a request.
--
-- * 'responseStatus' - The response status code.
-- * 'segmentResponse' - Undocumented field.
mkUpdateSegmentResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  -- | 'segmentResponse'
  SegmentResponse ->
  UpdateSegmentResponse
mkUpdateSegmentResponse pResponseStatus_ pSegmentResponse_ =
  UpdateSegmentResponse'
    { responseStatus = pResponseStatus_,
      segmentResponse = pSegmentResponse_
    }

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
usrsResponseStatus :: Lens.Lens' UpdateSegmentResponse Lude.Int
usrsResponseStatus = Lens.lens (responseStatus :: UpdateSegmentResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: UpdateSegmentResponse)
{-# DEPRECATED usrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'segmentResponse' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
usrsSegmentResponse :: Lens.Lens' UpdateSegmentResponse SegmentResponse
usrsSegmentResponse = Lens.lens (segmentResponse :: UpdateSegmentResponse -> SegmentResponse) (\s a -> s {segmentResponse = a} :: UpdateSegmentResponse)
{-# DEPRECATED usrsSegmentResponse "Use generic-lens or generic-optics with 'segmentResponse' instead." #-}
