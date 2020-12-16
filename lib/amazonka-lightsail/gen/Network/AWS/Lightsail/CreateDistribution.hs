{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.CreateDistribution
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Amazon Lightsail content delivery network (CDN) distribution.
--
-- A distribution is a globally distributed network of caching servers that improve the performance of your website or web application hosted on a Lightsail instance. For more information, see <https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-content-delivery-network-distributions Content delivery networks in Amazon Lightsail> .
module Network.AWS.Lightsail.CreateDistribution
  ( -- * Creating a request
    CreateDistribution (..),
    mkCreateDistribution,

    -- ** Request lenses
    cdOrigin,
    cdCacheBehaviorSettings,
    cdBundleId,
    cdDistributionName,
    cdDefaultCacheBehavior,
    cdCacheBehaviors,
    cdTags,

    -- * Destructuring the response
    CreateDistributionResponse (..),
    mkCreateDistributionResponse,

    -- ** Response lenses
    cdrsDistribution,
    cdrsOperation,
    cdrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Lightsail.Types
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkCreateDistribution' smart constructor.
data CreateDistribution = CreateDistribution'
  { -- | An object that describes the origin resource for the distribution, such as a Lightsail instance or load balancer.
    --
    -- The distribution pulls, caches, and serves content from the origin.
    origin :: InputOrigin,
    -- | An object that describes the cache behavior settings for the distribution.
    cacheBehaviorSettings :: Lude.Maybe CacheSettings,
    -- | The bundle ID to use for the distribution.
    --
    -- A distribution bundle describes the specifications of your distribution, such as the monthly cost and monthly network transfer quota.
    -- Use the @GetDistributionBundles@ action to get a list of distribution bundle IDs that you can specify.
    bundleId :: Lude.Text,
    -- | The name for the distribution.
    distributionName :: Lude.Text,
    -- | An object that describes the default cache behavior for the distribution.
    defaultCacheBehavior :: CacheBehavior,
    -- | An array of objects that describe the per-path cache behavior for the distribution.
    cacheBehaviors :: Lude.Maybe [CacheBehaviorPerPath],
    -- | The tag keys and optional values to add to the distribution during create.
    --
    -- Use the @TagResource@ action to tag a resource after it's created.
    tags :: Lude.Maybe [Tag]
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateDistribution' with the minimum fields required to make a request.
--
-- * 'origin' - An object that describes the origin resource for the distribution, such as a Lightsail instance or load balancer.
--
-- The distribution pulls, caches, and serves content from the origin.
-- * 'cacheBehaviorSettings' - An object that describes the cache behavior settings for the distribution.
-- * 'bundleId' - The bundle ID to use for the distribution.
--
-- A distribution bundle describes the specifications of your distribution, such as the monthly cost and monthly network transfer quota.
-- Use the @GetDistributionBundles@ action to get a list of distribution bundle IDs that you can specify.
-- * 'distributionName' - The name for the distribution.
-- * 'defaultCacheBehavior' - An object that describes the default cache behavior for the distribution.
-- * 'cacheBehaviors' - An array of objects that describe the per-path cache behavior for the distribution.
-- * 'tags' - The tag keys and optional values to add to the distribution during create.
--
-- Use the @TagResource@ action to tag a resource after it's created.
mkCreateDistribution ::
  -- | 'origin'
  InputOrigin ->
  -- | 'bundleId'
  Lude.Text ->
  -- | 'distributionName'
  Lude.Text ->
  -- | 'defaultCacheBehavior'
  CacheBehavior ->
  CreateDistribution
mkCreateDistribution
  pOrigin_
  pBundleId_
  pDistributionName_
  pDefaultCacheBehavior_ =
    CreateDistribution'
      { origin = pOrigin_,
        cacheBehaviorSettings = Lude.Nothing,
        bundleId = pBundleId_,
        distributionName = pDistributionName_,
        defaultCacheBehavior = pDefaultCacheBehavior_,
        cacheBehaviors = Lude.Nothing,
        tags = Lude.Nothing
      }

-- | An object that describes the origin resource for the distribution, such as a Lightsail instance or load balancer.
--
-- The distribution pulls, caches, and serves content from the origin.
--
-- /Note:/ Consider using 'origin' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdOrigin :: Lens.Lens' CreateDistribution InputOrigin
cdOrigin = Lens.lens (origin :: CreateDistribution -> InputOrigin) (\s a -> s {origin = a} :: CreateDistribution)
{-# DEPRECATED cdOrigin "Use generic-lens or generic-optics with 'origin' instead." #-}

-- | An object that describes the cache behavior settings for the distribution.
--
-- /Note:/ Consider using 'cacheBehaviorSettings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdCacheBehaviorSettings :: Lens.Lens' CreateDistribution (Lude.Maybe CacheSettings)
cdCacheBehaviorSettings = Lens.lens (cacheBehaviorSettings :: CreateDistribution -> Lude.Maybe CacheSettings) (\s a -> s {cacheBehaviorSettings = a} :: CreateDistribution)
{-# DEPRECATED cdCacheBehaviorSettings "Use generic-lens or generic-optics with 'cacheBehaviorSettings' instead." #-}

-- | The bundle ID to use for the distribution.
--
-- A distribution bundle describes the specifications of your distribution, such as the monthly cost and monthly network transfer quota.
-- Use the @GetDistributionBundles@ action to get a list of distribution bundle IDs that you can specify.
--
-- /Note:/ Consider using 'bundleId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdBundleId :: Lens.Lens' CreateDistribution Lude.Text
cdBundleId = Lens.lens (bundleId :: CreateDistribution -> Lude.Text) (\s a -> s {bundleId = a} :: CreateDistribution)
{-# DEPRECATED cdBundleId "Use generic-lens or generic-optics with 'bundleId' instead." #-}

-- | The name for the distribution.
--
-- /Note:/ Consider using 'distributionName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdDistributionName :: Lens.Lens' CreateDistribution Lude.Text
cdDistributionName = Lens.lens (distributionName :: CreateDistribution -> Lude.Text) (\s a -> s {distributionName = a} :: CreateDistribution)
{-# DEPRECATED cdDistributionName "Use generic-lens or generic-optics with 'distributionName' instead." #-}

-- | An object that describes the default cache behavior for the distribution.
--
-- /Note:/ Consider using 'defaultCacheBehavior' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdDefaultCacheBehavior :: Lens.Lens' CreateDistribution CacheBehavior
cdDefaultCacheBehavior = Lens.lens (defaultCacheBehavior :: CreateDistribution -> CacheBehavior) (\s a -> s {defaultCacheBehavior = a} :: CreateDistribution)
{-# DEPRECATED cdDefaultCacheBehavior "Use generic-lens or generic-optics with 'defaultCacheBehavior' instead." #-}

-- | An array of objects that describe the per-path cache behavior for the distribution.
--
-- /Note:/ Consider using 'cacheBehaviors' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdCacheBehaviors :: Lens.Lens' CreateDistribution (Lude.Maybe [CacheBehaviorPerPath])
cdCacheBehaviors = Lens.lens (cacheBehaviors :: CreateDistribution -> Lude.Maybe [CacheBehaviorPerPath]) (\s a -> s {cacheBehaviors = a} :: CreateDistribution)
{-# DEPRECATED cdCacheBehaviors "Use generic-lens or generic-optics with 'cacheBehaviors' instead." #-}

-- | The tag keys and optional values to add to the distribution during create.
--
-- Use the @TagResource@ action to tag a resource after it's created.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdTags :: Lens.Lens' CreateDistribution (Lude.Maybe [Tag])
cdTags = Lens.lens (tags :: CreateDistribution -> Lude.Maybe [Tag]) (\s a -> s {tags = a} :: CreateDistribution)
{-# DEPRECATED cdTags "Use generic-lens or generic-optics with 'tags' instead." #-}

instance Lude.AWSRequest CreateDistribution where
  type Rs CreateDistribution = CreateDistributionResponse
  request = Req.postJSON lightsailService
  response =
    Res.receiveJSON
      ( \s h x ->
          CreateDistributionResponse'
            Lude.<$> (x Lude..?> "distribution")
            Lude.<*> (x Lude..?> "operation")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders CreateDistribution where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("Lightsail_20161128.CreateDistribution" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON CreateDistribution where
  toJSON CreateDistribution' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("origin" Lude..= origin),
            ("cacheBehaviorSettings" Lude..=) Lude.<$> cacheBehaviorSettings,
            Lude.Just ("bundleId" Lude..= bundleId),
            Lude.Just ("distributionName" Lude..= distributionName),
            Lude.Just ("defaultCacheBehavior" Lude..= defaultCacheBehavior),
            ("cacheBehaviors" Lude..=) Lude.<$> cacheBehaviors,
            ("tags" Lude..=) Lude.<$> tags
          ]
      )

instance Lude.ToPath CreateDistribution where
  toPath = Lude.const "/"

instance Lude.ToQuery CreateDistribution where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkCreateDistributionResponse' smart constructor.
data CreateDistributionResponse = CreateDistributionResponse'
  { -- | An object that describes the distribution created.
    distribution :: Lude.Maybe LightsailDistribution,
    -- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
    operation :: Lude.Maybe Operation,
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateDistributionResponse' with the minimum fields required to make a request.
--
-- * 'distribution' - An object that describes the distribution created.
-- * 'operation' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
-- * 'responseStatus' - The response status code.
mkCreateDistributionResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  CreateDistributionResponse
mkCreateDistributionResponse pResponseStatus_ =
  CreateDistributionResponse'
    { distribution = Lude.Nothing,
      operation = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | An object that describes the distribution created.
--
-- /Note:/ Consider using 'distribution' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdrsDistribution :: Lens.Lens' CreateDistributionResponse (Lude.Maybe LightsailDistribution)
cdrsDistribution = Lens.lens (distribution :: CreateDistributionResponse -> Lude.Maybe LightsailDistribution) (\s a -> s {distribution = a} :: CreateDistributionResponse)
{-# DEPRECATED cdrsDistribution "Use generic-lens or generic-optics with 'distribution' instead." #-}

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- /Note:/ Consider using 'operation' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdrsOperation :: Lens.Lens' CreateDistributionResponse (Lude.Maybe Operation)
cdrsOperation = Lens.lens (operation :: CreateDistributionResponse -> Lude.Maybe Operation) (\s a -> s {operation = a} :: CreateDistributionResponse)
{-# DEPRECATED cdrsOperation "Use generic-lens or generic-optics with 'operation' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cdrsResponseStatus :: Lens.Lens' CreateDistributionResponse Lude.Int
cdrsResponseStatus = Lens.lens (responseStatus :: CreateDistributionResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: CreateDistributionResponse)
{-# DEPRECATED cdrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}