{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.DescribeTapes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a description of the specified Amazon Resource Name (ARN) of virtual tapes. If a @TapeARN@ is not specified, returns a description of all virtual tapes associated with the specified gateway. This operation is only supported in the tape gateway type.
--
-- This operation returns paginated results.
module Network.AWS.StorageGateway.DescribeTapes
  ( -- * Creating a request
    DescribeTapes (..),
    mkDescribeTapes,

    -- ** Request lenses
    dtMarker,
    dtLimit,
    dtTapeARNs,
    dtGatewayARN,

    -- * Destructuring the response
    DescribeTapesResponse (..),
    mkDescribeTapesResponse,

    -- ** Response lenses
    dtsrsMarker,
    dtsrsTapes,
    dtsrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Page
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.StorageGateway.Types

-- | DescribeTapesInput
--
-- /See:/ 'mkDescribeTapes' smart constructor.
data DescribeTapes = DescribeTapes'
  { marker :: Lude.Maybe Lude.Text,
    limit :: Lude.Maybe Lude.Natural,
    tapeARNs :: Lude.Maybe [Lude.Text],
    gatewayARN :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DescribeTapes' with the minimum fields required to make a request.
--
-- * 'gatewayARN' - Undocumented field.
-- * 'limit' - Specifies that the number of virtual tapes described be limited to the specified number.
-- * 'marker' - A marker value, obtained in a previous call to @DescribeTapes@ . This marker indicates which page of results to retrieve.
--
-- If not specified, the first page of results is retrieved.
-- * 'tapeARNs' - Specifies one or more unique Amazon Resource Names (ARNs) that represent the virtual tapes you want to describe. If this parameter is not specified, Tape gateway returns a description of all virtual tapes associated with the specified gateway.
mkDescribeTapes ::
  -- | 'gatewayARN'
  Lude.Text ->
  DescribeTapes
mkDescribeTapes pGatewayARN_ =
  DescribeTapes'
    { marker = Lude.Nothing,
      limit = Lude.Nothing,
      tapeARNs = Lude.Nothing,
      gatewayARN = pGatewayARN_
    }

-- | A marker value, obtained in a previous call to @DescribeTapes@ . This marker indicates which page of results to retrieve.
--
-- If not specified, the first page of results is retrieved.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtMarker :: Lens.Lens' DescribeTapes (Lude.Maybe Lude.Text)
dtMarker = Lens.lens (marker :: DescribeTapes -> Lude.Maybe Lude.Text) (\s a -> s {marker = a} :: DescribeTapes)
{-# DEPRECATED dtMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | Specifies that the number of virtual tapes described be limited to the specified number.
--
-- /Note:/ Consider using 'limit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtLimit :: Lens.Lens' DescribeTapes (Lude.Maybe Lude.Natural)
dtLimit = Lens.lens (limit :: DescribeTapes -> Lude.Maybe Lude.Natural) (\s a -> s {limit = a} :: DescribeTapes)
{-# DEPRECATED dtLimit "Use generic-lens or generic-optics with 'limit' instead." #-}

-- | Specifies one or more unique Amazon Resource Names (ARNs) that represent the virtual tapes you want to describe. If this parameter is not specified, Tape gateway returns a description of all virtual tapes associated with the specified gateway.
--
-- /Note:/ Consider using 'tapeARNs' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtTapeARNs :: Lens.Lens' DescribeTapes (Lude.Maybe [Lude.Text])
dtTapeARNs = Lens.lens (tapeARNs :: DescribeTapes -> Lude.Maybe [Lude.Text]) (\s a -> s {tapeARNs = a} :: DescribeTapes)
{-# DEPRECATED dtTapeARNs "Use generic-lens or generic-optics with 'tapeARNs' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'gatewayARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtGatewayARN :: Lens.Lens' DescribeTapes Lude.Text
dtGatewayARN = Lens.lens (gatewayARN :: DescribeTapes -> Lude.Text) (\s a -> s {gatewayARN = a} :: DescribeTapes)
{-# DEPRECATED dtGatewayARN "Use generic-lens or generic-optics with 'gatewayARN' instead." #-}

instance Page.AWSPager DescribeTapes where
  page rq rs
    | Page.stop (rs Lens.^. dtsrsMarker) = Lude.Nothing
    | Page.stop (rs Lens.^. dtsrsTapes) = Lude.Nothing
    | Lude.otherwise =
      Lude.Just Lude.$ rq Lude.& dtMarker Lens..~ rs Lens.^. dtsrsMarker

instance Lude.AWSRequest DescribeTapes where
  type Rs DescribeTapes = DescribeTapesResponse
  request = Req.postJSON storageGatewayService
  response =
    Res.receiveJSON
      ( \s h x ->
          DescribeTapesResponse'
            Lude.<$> (x Lude..?> "Marker")
            Lude.<*> (x Lude..?> "Tapes" Lude..!@ Lude.mempty)
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders DescribeTapes where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("StorageGateway_20130630.DescribeTapes" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON DescribeTapes where
  toJSON DescribeTapes' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("Marker" Lude..=) Lude.<$> marker,
            ("Limit" Lude..=) Lude.<$> limit,
            ("TapeARNs" Lude..=) Lude.<$> tapeARNs,
            Lude.Just ("GatewayARN" Lude..= gatewayARN)
          ]
      )

instance Lude.ToPath DescribeTapes where
  toPath = Lude.const "/"

instance Lude.ToQuery DescribeTapes where
  toQuery = Lude.const Lude.mempty

-- | DescribeTapesOutput
--
-- /See:/ 'mkDescribeTapesResponse' smart constructor.
data DescribeTapesResponse = DescribeTapesResponse'
  { marker ::
      Lude.Maybe Lude.Text,
    tapes :: Lude.Maybe [Tape],
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

-- | Creates a value of 'DescribeTapesResponse' with the minimum fields required to make a request.
--
-- * 'marker' - An opaque string which can be used as part of a subsequent DescribeTapes call to retrieve the next page of results.
--
-- If a response does not contain a marker, then there are no more results to be retrieved.
-- * 'responseStatus' - The response status code.
-- * 'tapes' - An array of virtual tape descriptions.
mkDescribeTapesResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  DescribeTapesResponse
mkDescribeTapesResponse pResponseStatus_ =
  DescribeTapesResponse'
    { marker = Lude.Nothing,
      tapes = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | An opaque string which can be used as part of a subsequent DescribeTapes call to retrieve the next page of results.
--
-- If a response does not contain a marker, then there are no more results to be retrieved.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtsrsMarker :: Lens.Lens' DescribeTapesResponse (Lude.Maybe Lude.Text)
dtsrsMarker = Lens.lens (marker :: DescribeTapesResponse -> Lude.Maybe Lude.Text) (\s a -> s {marker = a} :: DescribeTapesResponse)
{-# DEPRECATED dtsrsMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | An array of virtual tape descriptions.
--
-- /Note:/ Consider using 'tapes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtsrsTapes :: Lens.Lens' DescribeTapesResponse (Lude.Maybe [Tape])
dtsrsTapes = Lens.lens (tapes :: DescribeTapesResponse -> Lude.Maybe [Tape]) (\s a -> s {tapes = a} :: DescribeTapesResponse)
{-# DEPRECATED dtsrsTapes "Use generic-lens or generic-optics with 'tapes' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dtsrsResponseStatus :: Lens.Lens' DescribeTapesResponse Lude.Int
dtsrsResponseStatus = Lens.lens (responseStatus :: DescribeTapesResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: DescribeTapesResponse)
{-# DEPRECATED dtsrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
