{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.DescribeServiceAction
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a self-service action.
module Network.AWS.ServiceCatalog.DescribeServiceAction
  ( -- * Creating a request
    DescribeServiceAction (..),
    mkDescribeServiceAction,

    -- ** Request lenses
    dsafAcceptLanguage,
    dsafId,

    -- * Destructuring the response
    DescribeServiceActionResponse (..),
    mkDescribeServiceActionResponse,

    -- ** Response lenses
    dsafrsServiceActionDetail,
    dsafrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'mkDescribeServiceAction' smart constructor.
data DescribeServiceAction = DescribeServiceAction'
  { -- | The language code.
    --
    --
    --     * @en@ - English (default)
    --
    --
    --     * @jp@ - Japanese
    --
    --
    --     * @zh@ - Chinese
    acceptLanguage :: Lude.Maybe Lude.Text,
    -- | The self-service action identifier.
    id :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DescribeServiceAction' with the minimum fields required to make a request.
--
-- * 'acceptLanguage' - The language code.
--
--
--     * @en@ - English (default)
--
--
--     * @jp@ - Japanese
--
--
--     * @zh@ - Chinese
--
--
-- * 'id' - The self-service action identifier.
mkDescribeServiceAction ::
  -- | 'id'
  Lude.Text ->
  DescribeServiceAction
mkDescribeServiceAction pId_ =
  DescribeServiceAction' {acceptLanguage = Lude.Nothing, id = pId_}

-- | The language code.
--
--
--     * @en@ - English (default)
--
--
--     * @jp@ - Japanese
--
--
--     * @zh@ - Chinese
--
--
--
-- /Note:/ Consider using 'acceptLanguage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsafAcceptLanguage :: Lens.Lens' DescribeServiceAction (Lude.Maybe Lude.Text)
dsafAcceptLanguage = Lens.lens (acceptLanguage :: DescribeServiceAction -> Lude.Maybe Lude.Text) (\s a -> s {acceptLanguage = a} :: DescribeServiceAction)
{-# DEPRECATED dsafAcceptLanguage "Use generic-lens or generic-optics with 'acceptLanguage' instead." #-}

-- | The self-service action identifier.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsafId :: Lens.Lens' DescribeServiceAction Lude.Text
dsafId = Lens.lens (id :: DescribeServiceAction -> Lude.Text) (\s a -> s {id = a} :: DescribeServiceAction)
{-# DEPRECATED dsafId "Use generic-lens or generic-optics with 'id' instead." #-}

instance Lude.AWSRequest DescribeServiceAction where
  type Rs DescribeServiceAction = DescribeServiceActionResponse
  request = Req.postJSON serviceCatalogService
  response =
    Res.receiveJSON
      ( \s h x ->
          DescribeServiceActionResponse'
            Lude.<$> (x Lude..?> "ServiceActionDetail")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders DescribeServiceAction where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ( "AWS242ServiceCatalogService.DescribeServiceAction" ::
                          Lude.ByteString
                      ),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON DescribeServiceAction where
  toJSON DescribeServiceAction' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("AcceptLanguage" Lude..=) Lude.<$> acceptLanguage,
            Lude.Just ("Id" Lude..= id)
          ]
      )

instance Lude.ToPath DescribeServiceAction where
  toPath = Lude.const "/"

instance Lude.ToQuery DescribeServiceAction where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkDescribeServiceActionResponse' smart constructor.
data DescribeServiceActionResponse = DescribeServiceActionResponse'
  { -- | Detailed information about the self-service action.
    serviceActionDetail :: Lude.Maybe ServiceActionDetail,
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DescribeServiceActionResponse' with the minimum fields required to make a request.
--
-- * 'serviceActionDetail' - Detailed information about the self-service action.
-- * 'responseStatus' - The response status code.
mkDescribeServiceActionResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  DescribeServiceActionResponse
mkDescribeServiceActionResponse pResponseStatus_ =
  DescribeServiceActionResponse'
    { serviceActionDetail =
        Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | Detailed information about the self-service action.
--
-- /Note:/ Consider using 'serviceActionDetail' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsafrsServiceActionDetail :: Lens.Lens' DescribeServiceActionResponse (Lude.Maybe ServiceActionDetail)
dsafrsServiceActionDetail = Lens.lens (serviceActionDetail :: DescribeServiceActionResponse -> Lude.Maybe ServiceActionDetail) (\s a -> s {serviceActionDetail = a} :: DescribeServiceActionResponse)
{-# DEPRECATED dsafrsServiceActionDetail "Use generic-lens or generic-optics with 'serviceActionDetail' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsafrsResponseStatus :: Lens.Lens' DescribeServiceActionResponse Lude.Int
dsafrsResponseStatus = Lens.lens (responseStatus :: DescribeServiceActionResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: DescribeServiceActionResponse)
{-# DEPRECATED dsafrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}