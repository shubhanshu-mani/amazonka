{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.GetIPSet
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the IPSet specified by the @ipSetId@ .
module Network.AWS.GuardDuty.GetIPSet
  ( -- * Creating a request
    GetIPSet (..),
    mkGetIPSet,

    -- ** Request lenses
    gisDetectorId,
    gisIPSetId,

    -- * Destructuring the response
    GetIPSetResponse (..),
    mkGetIPSetResponse,

    -- ** Response lenses
    gisrsTags,
    gisrsResponseStatus,
    gisrsName,
    gisrsFormat,
    gisrsLocation,
    gisrsStatus,
  )
where

import Network.AWS.GuardDuty.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkGetIPSet' smart constructor.
data GetIPSet = GetIPSet'
  { detectorId :: Lude.Text,
    ipSetId :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetIPSet' with the minimum fields required to make a request.
--
-- * 'detectorId' - The unique ID of the detector that the IPSet is associated with.
-- * 'ipSetId' - The unique ID of the IPSet to retrieve.
mkGetIPSet ::
  -- | 'detectorId'
  Lude.Text ->
  -- | 'ipSetId'
  Lude.Text ->
  GetIPSet
mkGetIPSet pDetectorId_ pIPSetId_ =
  GetIPSet' {detectorId = pDetectorId_, ipSetId = pIPSetId_}

-- | The unique ID of the detector that the IPSet is associated with.
--
-- /Note:/ Consider using 'detectorId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gisDetectorId :: Lens.Lens' GetIPSet Lude.Text
gisDetectorId = Lens.lens (detectorId :: GetIPSet -> Lude.Text) (\s a -> s {detectorId = a} :: GetIPSet)
{-# DEPRECATED gisDetectorId "Use generic-lens or generic-optics with 'detectorId' instead." #-}

-- | The unique ID of the IPSet to retrieve.
--
-- /Note:/ Consider using 'ipSetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gisIPSetId :: Lens.Lens' GetIPSet Lude.Text
gisIPSetId = Lens.lens (ipSetId :: GetIPSet -> Lude.Text) (\s a -> s {ipSetId = a} :: GetIPSet)
{-# DEPRECATED gisIPSetId "Use generic-lens or generic-optics with 'ipSetId' instead." #-}

instance Lude.AWSRequest GetIPSet where
  type Rs GetIPSet = GetIPSetResponse
  request = Req.get guardDutyService
  response =
    Res.receiveJSON
      ( \s h x ->
          GetIPSetResponse'
            Lude.<$> (x Lude..?> "tags" Lude..!@ Lude.mempty)
            Lude.<*> (Lude.pure (Lude.fromEnum s))
            Lude.<*> (x Lude..:> "name")
            Lude.<*> (x Lude..:> "format")
            Lude.<*> (x Lude..:> "location")
            Lude.<*> (x Lude..:> "status")
      )

instance Lude.ToHeaders GetIPSet where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToPath GetIPSet where
  toPath GetIPSet' {..} =
    Lude.mconcat
      ["/detector/", Lude.toBS detectorId, "/ipset/", Lude.toBS ipSetId]

instance Lude.ToQuery GetIPSet where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkGetIPSetResponse' smart constructor.
data GetIPSetResponse = GetIPSetResponse'
  { tags ::
      Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)),
    responseStatus :: Lude.Int,
    name :: Lude.Text,
    format :: IPSetFormat,
    location :: Lude.Text,
    status :: IPSetStatus
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetIPSetResponse' with the minimum fields required to make a request.
--
-- * 'format' - The format of the file that contains the IPSet.
-- * 'location' - The URI of the file that contains the IPSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
-- * 'name' - The user-friendly name for the IPSet.
-- * 'responseStatus' - The response status code.
-- * 'status' - The status of IPSet file that was uploaded.
-- * 'tags' - The tags of the IPSet resource.
mkGetIPSetResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  -- | 'name'
  Lude.Text ->
  -- | 'format'
  IPSetFormat ->
  -- | 'location'
  Lude.Text ->
  -- | 'status'
  IPSetStatus ->
  GetIPSetResponse
mkGetIPSetResponse
  pResponseStatus_
  pName_
  pFormat_
  pLocation_
  pStatus_ =
    GetIPSetResponse'
      { tags = Lude.Nothing,
        responseStatus = pResponseStatus_,
        name = pName_,
        format = pFormat_,
        location = pLocation_,
        status = pStatus_
      }

-- | The tags of the IPSet resource.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gisrsTags :: Lens.Lens' GetIPSetResponse (Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text)))
gisrsTags = Lens.lens (tags :: GetIPSetResponse -> Lude.Maybe (Lude.HashMap Lude.Text (Lude.Text))) (\s a -> s {tags = a} :: GetIPSetResponse)
{-# DEPRECATED gisrsTags "Use generic-lens or generic-optics with 'tags' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gisrsResponseStatus :: Lens.Lens' GetIPSetResponse Lude.Int
gisrsResponseStatus = Lens.lens (responseStatus :: GetIPSetResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: GetIPSetResponse)
{-# DEPRECATED gisrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}

-- | The user-friendly name for the IPSet.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gisrsName :: Lens.Lens' GetIPSetResponse Lude.Text
gisrsName = Lens.lens (name :: GetIPSetResponse -> Lude.Text) (\s a -> s {name = a} :: GetIPSetResponse)
{-# DEPRECATED gisrsName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The format of the file that contains the IPSet.
--
-- /Note:/ Consider using 'format' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gisrsFormat :: Lens.Lens' GetIPSetResponse IPSetFormat
gisrsFormat = Lens.lens (format :: GetIPSetResponse -> IPSetFormat) (\s a -> s {format = a} :: GetIPSetResponse)
{-# DEPRECATED gisrsFormat "Use generic-lens or generic-optics with 'format' instead." #-}

-- | The URI of the file that contains the IPSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.
--
-- /Note:/ Consider using 'location' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gisrsLocation :: Lens.Lens' GetIPSetResponse Lude.Text
gisrsLocation = Lens.lens (location :: GetIPSetResponse -> Lude.Text) (\s a -> s {location = a} :: GetIPSetResponse)
{-# DEPRECATED gisrsLocation "Use generic-lens or generic-optics with 'location' instead." #-}

-- | The status of IPSet file that was uploaded.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gisrsStatus :: Lens.Lens' GetIPSetResponse IPSetStatus
gisrsStatus = Lens.lens (status :: GetIPSetResponse -> IPSetStatus) (\s a -> s {status = a} :: GetIPSetResponse)
{-# DEPRECATED gisrsStatus "Use generic-lens or generic-optics with 'status' instead." #-}
