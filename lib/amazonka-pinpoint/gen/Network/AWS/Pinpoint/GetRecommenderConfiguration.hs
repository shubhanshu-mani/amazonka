{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.GetRecommenderConfiguration
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about an Amazon Pinpoint configuration for a recommender model.
module Network.AWS.Pinpoint.GetRecommenderConfiguration
  ( -- * Creating a request
    GetRecommenderConfiguration (..),
    mkGetRecommenderConfiguration,

    -- ** Request lenses
    grcRecommenderId,

    -- * Destructuring the response
    GetRecommenderConfigurationResponse (..),
    mkGetRecommenderConfigurationResponse,

    -- ** Response lenses
    grcfrsRecommenderConfigurationResponse,
    grcfrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkGetRecommenderConfiguration' smart constructor.
newtype GetRecommenderConfiguration = GetRecommenderConfiguration'
  { -- | The unique identifier for the recommender model configuration. This identifier is displayed as the __Recommender ID__ on the Amazon Pinpoint console.
    recommenderId :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetRecommenderConfiguration' with the minimum fields required to make a request.
--
-- * 'recommenderId' - The unique identifier for the recommender model configuration. This identifier is displayed as the __Recommender ID__ on the Amazon Pinpoint console.
mkGetRecommenderConfiguration ::
  -- | 'recommenderId'
  Lude.Text ->
  GetRecommenderConfiguration
mkGetRecommenderConfiguration pRecommenderId_ =
  GetRecommenderConfiguration' {recommenderId = pRecommenderId_}

-- | The unique identifier for the recommender model configuration. This identifier is displayed as the __Recommender ID__ on the Amazon Pinpoint console.
--
-- /Note:/ Consider using 'recommenderId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grcRecommenderId :: Lens.Lens' GetRecommenderConfiguration Lude.Text
grcRecommenderId = Lens.lens (recommenderId :: GetRecommenderConfiguration -> Lude.Text) (\s a -> s {recommenderId = a} :: GetRecommenderConfiguration)
{-# DEPRECATED grcRecommenderId "Use generic-lens or generic-optics with 'recommenderId' instead." #-}

instance Lude.AWSRequest GetRecommenderConfiguration where
  type
    Rs GetRecommenderConfiguration =
      GetRecommenderConfigurationResponse
  request = Req.get pinpointService
  response =
    Res.receiveJSON
      ( \s h x ->
          GetRecommenderConfigurationResponse'
            Lude.<$> (Lude.eitherParseJSON x) Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders GetRecommenderConfiguration where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToPath GetRecommenderConfiguration where
  toPath GetRecommenderConfiguration' {..} =
    Lude.mconcat ["/v1/recommenders/", Lude.toBS recommenderId]

instance Lude.ToQuery GetRecommenderConfiguration where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkGetRecommenderConfigurationResponse' smart constructor.
data GetRecommenderConfigurationResponse = GetRecommenderConfigurationResponse'
  { recommenderConfigurationResponse :: RecommenderConfigurationResponse,
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetRecommenderConfigurationResponse' with the minimum fields required to make a request.
--
-- * 'recommenderConfigurationResponse' -
-- * 'responseStatus' - The response status code.
mkGetRecommenderConfigurationResponse ::
  -- | 'recommenderConfigurationResponse'
  RecommenderConfigurationResponse ->
  -- | 'responseStatus'
  Lude.Int ->
  GetRecommenderConfigurationResponse
mkGetRecommenderConfigurationResponse
  pRecommenderConfigurationResponse_
  pResponseStatus_ =
    GetRecommenderConfigurationResponse'
      { recommenderConfigurationResponse =
          pRecommenderConfigurationResponse_,
        responseStatus = pResponseStatus_
      }

-- | Undocumented field.
--
-- /Note:/ Consider using 'recommenderConfigurationResponse' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grcfrsRecommenderConfigurationResponse :: Lens.Lens' GetRecommenderConfigurationResponse RecommenderConfigurationResponse
grcfrsRecommenderConfigurationResponse = Lens.lens (recommenderConfigurationResponse :: GetRecommenderConfigurationResponse -> RecommenderConfigurationResponse) (\s a -> s {recommenderConfigurationResponse = a} :: GetRecommenderConfigurationResponse)
{-# DEPRECATED grcfrsRecommenderConfigurationResponse "Use generic-lens or generic-optics with 'recommenderConfigurationResponse' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grcfrsResponseStatus :: Lens.Lens' GetRecommenderConfigurationResponse Lude.Int
grcfrsResponseStatus = Lens.lens (responseStatus :: GetRecommenderConfigurationResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: GetRecommenderConfigurationResponse)
{-# DEPRECATED grcfrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}