{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.UpdateIntegrationResponse
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Represents an update integration response.
module Network.AWS.APIGateway.UpdateIntegrationResponse
  ( -- * Creating a request
    UpdateIntegrationResponse (..),
    mkUpdateIntegrationResponse,

    -- ** Request lenses
    uiPatchOperations,
    uiRestAPIId,
    uiResourceId,
    uiHttpMethod,
    uiStatusCode,

    -- * Destructuring the response
    IntegrationResponse (..),
    mkIntegrationResponse,

    -- ** Response lenses
    intContentHandling,
    intResponseTemplates,
    intSelectionPattern,
    intStatusCode,
    intResponseParameters,
  )
where

import Network.AWS.APIGateway.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | Represents an update integration response request.
--
-- /See:/ 'mkUpdateIntegrationResponse' smart constructor.
data UpdateIntegrationResponse = UpdateIntegrationResponse'
  { patchOperations ::
      Lude.Maybe [PatchOperation],
    restAPIId :: Lude.Text,
    resourceId :: Lude.Text,
    httpMethod :: Lude.Text,
    statusCode :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'UpdateIntegrationResponse' with the minimum fields required to make a request.
--
-- * 'httpMethod' - [Required] Specifies an update integration response request's HTTP method.
-- * 'patchOperations' - A list of update operations to be applied to the specified resource and in the order specified in this list.
-- * 'resourceId' - [Required] Specifies an update integration response request's resource identifier.
-- * 'restAPIId' - [Required] The string identifier of the associated 'RestApi' .
-- * 'statusCode' - [Required] Specifies an update integration response request's status code.
mkUpdateIntegrationResponse ::
  -- | 'restAPIId'
  Lude.Text ->
  -- | 'resourceId'
  Lude.Text ->
  -- | 'httpMethod'
  Lude.Text ->
  -- | 'statusCode'
  Lude.Text ->
  UpdateIntegrationResponse
mkUpdateIntegrationResponse
  pRestAPIId_
  pResourceId_
  pHttpMethod_
  pStatusCode_ =
    UpdateIntegrationResponse'
      { patchOperations = Lude.Nothing,
        restAPIId = pRestAPIId_,
        resourceId = pResourceId_,
        httpMethod = pHttpMethod_,
        statusCode = pStatusCode_
      }

-- | A list of update operations to be applied to the specified resource and in the order specified in this list.
--
-- /Note:/ Consider using 'patchOperations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uiPatchOperations :: Lens.Lens' UpdateIntegrationResponse (Lude.Maybe [PatchOperation])
uiPatchOperations = Lens.lens (patchOperations :: UpdateIntegrationResponse -> Lude.Maybe [PatchOperation]) (\s a -> s {patchOperations = a} :: UpdateIntegrationResponse)
{-# DEPRECATED uiPatchOperations "Use generic-lens or generic-optics with 'patchOperations' instead." #-}

-- | [Required] The string identifier of the associated 'RestApi' .
--
-- /Note:/ Consider using 'restAPIId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uiRestAPIId :: Lens.Lens' UpdateIntegrationResponse Lude.Text
uiRestAPIId = Lens.lens (restAPIId :: UpdateIntegrationResponse -> Lude.Text) (\s a -> s {restAPIId = a} :: UpdateIntegrationResponse)
{-# DEPRECATED uiRestAPIId "Use generic-lens or generic-optics with 'restAPIId' instead." #-}

-- | [Required] Specifies an update integration response request's resource identifier.
--
-- /Note:/ Consider using 'resourceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uiResourceId :: Lens.Lens' UpdateIntegrationResponse Lude.Text
uiResourceId = Lens.lens (resourceId :: UpdateIntegrationResponse -> Lude.Text) (\s a -> s {resourceId = a} :: UpdateIntegrationResponse)
{-# DEPRECATED uiResourceId "Use generic-lens or generic-optics with 'resourceId' instead." #-}

-- | [Required] Specifies an update integration response request's HTTP method.
--
-- /Note:/ Consider using 'httpMethod' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uiHttpMethod :: Lens.Lens' UpdateIntegrationResponse Lude.Text
uiHttpMethod = Lens.lens (httpMethod :: UpdateIntegrationResponse -> Lude.Text) (\s a -> s {httpMethod = a} :: UpdateIntegrationResponse)
{-# DEPRECATED uiHttpMethod "Use generic-lens or generic-optics with 'httpMethod' instead." #-}

-- | [Required] Specifies an update integration response request's status code.
--
-- /Note:/ Consider using 'statusCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uiStatusCode :: Lens.Lens' UpdateIntegrationResponse Lude.Text
uiStatusCode = Lens.lens (statusCode :: UpdateIntegrationResponse -> Lude.Text) (\s a -> s {statusCode = a} :: UpdateIntegrationResponse)
{-# DEPRECATED uiStatusCode "Use generic-lens or generic-optics with 'statusCode' instead." #-}

instance Lude.AWSRequest UpdateIntegrationResponse where
  type Rs UpdateIntegrationResponse = IntegrationResponse
  request = Req.patchJSON apiGatewayService
  response = Res.receiveJSON (\s h x -> Lude.eitherParseJSON x)

instance Lude.ToHeaders UpdateIntegrationResponse where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          ["Accept" Lude.=# ("application/json" :: Lude.ByteString)]
      )

instance Lude.ToJSON UpdateIntegrationResponse where
  toJSON UpdateIntegrationResponse' {..} =
    Lude.object
      ( Lude.catMaybes
          [("patchOperations" Lude..=) Lude.<$> patchOperations]
      )

instance Lude.ToPath UpdateIntegrationResponse where
  toPath UpdateIntegrationResponse' {..} =
    Lude.mconcat
      [ "/restapis/",
        Lude.toBS restAPIId,
        "/resources/",
        Lude.toBS resourceId,
        "/methods/",
        Lude.toBS httpMethod,
        "/integration/responses/",
        Lude.toBS statusCode
      ]

instance Lude.ToQuery UpdateIntegrationResponse where
  toQuery = Lude.const Lude.mempty
