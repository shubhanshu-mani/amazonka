{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.DeleteJourney
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a journey from an application.
module Network.AWS.Pinpoint.DeleteJourney
  ( -- * Creating a request
    DeleteJourney (..),
    mkDeleteJourney,

    -- ** Request lenses
    djApplicationId,
    djJourneyId,

    -- * Destructuring the response
    DeleteJourneyResponse (..),
    mkDeleteJourneyResponse,

    -- ** Response lenses
    djrsJourneyResponse,
    djrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkDeleteJourney' smart constructor.
data DeleteJourney = DeleteJourney'
  { -- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
    applicationId :: Lude.Text,
    -- | The unique identifier for the journey.
    journeyId :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DeleteJourney' with the minimum fields required to make a request.
--
-- * 'applicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
-- * 'journeyId' - The unique identifier for the journey.
mkDeleteJourney ::
  -- | 'applicationId'
  Lude.Text ->
  -- | 'journeyId'
  Lude.Text ->
  DeleteJourney
mkDeleteJourney pApplicationId_ pJourneyId_ =
  DeleteJourney'
    { applicationId = pApplicationId_,
      journeyId = pJourneyId_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- /Note:/ Consider using 'applicationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
djApplicationId :: Lens.Lens' DeleteJourney Lude.Text
djApplicationId = Lens.lens (applicationId :: DeleteJourney -> Lude.Text) (\s a -> s {applicationId = a} :: DeleteJourney)
{-# DEPRECATED djApplicationId "Use generic-lens or generic-optics with 'applicationId' instead." #-}

-- | The unique identifier for the journey.
--
-- /Note:/ Consider using 'journeyId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
djJourneyId :: Lens.Lens' DeleteJourney Lude.Text
djJourneyId = Lens.lens (journeyId :: DeleteJourney -> Lude.Text) (\s a -> s {journeyId = a} :: DeleteJourney)
{-# DEPRECATED djJourneyId "Use generic-lens or generic-optics with 'journeyId' instead." #-}

instance Lude.AWSRequest DeleteJourney where
  type Rs DeleteJourney = DeleteJourneyResponse
  request = Req.delete pinpointService
  response =
    Res.receiveJSON
      ( \s h x ->
          DeleteJourneyResponse'
            Lude.<$> (Lude.eitherParseJSON x) Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders DeleteJourney where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToPath DeleteJourney where
  toPath DeleteJourney' {..} =
    Lude.mconcat
      [ "/v1/apps/",
        Lude.toBS applicationId,
        "/journeys/",
        Lude.toBS journeyId
      ]

instance Lude.ToQuery DeleteJourney where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkDeleteJourneyResponse' smart constructor.
data DeleteJourneyResponse = DeleteJourneyResponse'
  { journeyResponse :: JourneyResponse,
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DeleteJourneyResponse' with the minimum fields required to make a request.
--
-- * 'journeyResponse' -
-- * 'responseStatus' - The response status code.
mkDeleteJourneyResponse ::
  -- | 'journeyResponse'
  JourneyResponse ->
  -- | 'responseStatus'
  Lude.Int ->
  DeleteJourneyResponse
mkDeleteJourneyResponse pJourneyResponse_ pResponseStatus_ =
  DeleteJourneyResponse'
    { journeyResponse = pJourneyResponse_,
      responseStatus = pResponseStatus_
    }

-- | Undocumented field.
--
-- /Note:/ Consider using 'journeyResponse' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
djrsJourneyResponse :: Lens.Lens' DeleteJourneyResponse JourneyResponse
djrsJourneyResponse = Lens.lens (journeyResponse :: DeleteJourneyResponse -> JourneyResponse) (\s a -> s {journeyResponse = a} :: DeleteJourneyResponse)
{-# DEPRECATED djrsJourneyResponse "Use generic-lens or generic-optics with 'journeyResponse' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
djrsResponseStatus :: Lens.Lens' DeleteJourneyResponse Lude.Int
djrsResponseStatus = Lens.lens (responseStatus :: DeleteJourneyResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: DeleteJourneyResponse)
{-# DEPRECATED djrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}