{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.CachePolicy
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.CachePolicy
  ( CachePolicy (..),

    -- * Smart constructor
    mkCachePolicy,

    -- * Lenses
    cpLastModifiedTime,
    cpId,
    cpCachePolicyConfig,
  )
where

import Network.AWS.CloudFront.Types.CachePolicyConfig
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | A cache policy.
--
-- When it’s attached to a cache behavior, the cache policy determines the following:
--
--     * The values that CloudFront includes in the cache key. These values can include HTTP headers, cookies, and URL query strings. CloudFront uses the cache key to find an object in its cache that it can return to the viewer.
--
--
--     * The default, minimum, and maximum time to live (TTL) values that you want objects to stay in the CloudFront cache.
--
--
-- The headers, cookies, and query strings that are included in the cache key are automatically included in requests that CloudFront sends to the origin. CloudFront sends a request when it can’t find a valid object in its cache that matches the request’s cache key. If you want to send values to the origin but /not/ include them in the cache key, use @OriginRequestPolicy@ .
--
-- /See:/ 'mkCachePolicy' smart constructor.
data CachePolicy = CachePolicy'
  { -- | The date and time when the cache policy was last modified.
    lastModifiedTime :: Lude.DateTime,
    -- | The unique identifier for the cache policy.
    id :: Lude.Text,
    -- | The cache policy configuration.
    cachePolicyConfig :: CachePolicyConfig
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CachePolicy' with the minimum fields required to make a request.
--
-- * 'lastModifiedTime' - The date and time when the cache policy was last modified.
-- * 'id' - The unique identifier for the cache policy.
-- * 'cachePolicyConfig' - The cache policy configuration.
mkCachePolicy ::
  -- | 'lastModifiedTime'
  Lude.DateTime ->
  -- | 'id'
  Lude.Text ->
  -- | 'cachePolicyConfig'
  CachePolicyConfig ->
  CachePolicy
mkCachePolicy pLastModifiedTime_ pId_ pCachePolicyConfig_ =
  CachePolicy'
    { lastModifiedTime = pLastModifiedTime_,
      id = pId_,
      cachePolicyConfig = pCachePolicyConfig_
    }

-- | The date and time when the cache policy was last modified.
--
-- /Note:/ Consider using 'lastModifiedTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpLastModifiedTime :: Lens.Lens' CachePolicy Lude.DateTime
cpLastModifiedTime = Lens.lens (lastModifiedTime :: CachePolicy -> Lude.DateTime) (\s a -> s {lastModifiedTime = a} :: CachePolicy)
{-# DEPRECATED cpLastModifiedTime "Use generic-lens or generic-optics with 'lastModifiedTime' instead." #-}

-- | The unique identifier for the cache policy.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpId :: Lens.Lens' CachePolicy Lude.Text
cpId = Lens.lens (id :: CachePolicy -> Lude.Text) (\s a -> s {id = a} :: CachePolicy)
{-# DEPRECATED cpId "Use generic-lens or generic-optics with 'id' instead." #-}

-- | The cache policy configuration.
--
-- /Note:/ Consider using 'cachePolicyConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpCachePolicyConfig :: Lens.Lens' CachePolicy CachePolicyConfig
cpCachePolicyConfig = Lens.lens (cachePolicyConfig :: CachePolicy -> CachePolicyConfig) (\s a -> s {cachePolicyConfig = a} :: CachePolicy)
{-# DEPRECATED cpCachePolicyConfig "Use generic-lens or generic-optics with 'cachePolicyConfig' instead." #-}

instance Lude.FromXML CachePolicy where
  parseXML x =
    CachePolicy'
      Lude.<$> (x Lude..@ "LastModifiedTime")
      Lude.<*> (x Lude..@ "Id")
      Lude.<*> (x Lude..@ "CachePolicyConfig")