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
    cpId,
    cpLastModifiedTime,
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
  { id :: Lude.Text,
    lastModifiedTime :: Lude.ISO8601,
    cachePolicyConfig :: CachePolicyConfig
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CachePolicy' with the minimum fields required to make a request.
--
-- * 'cachePolicyConfig' - The cache policy configuration.
-- * 'id' - The unique identifier for the cache policy.
-- * 'lastModifiedTime' - The date and time when the cache policy was last modified.
mkCachePolicy ::
  -- | 'id'
  Lude.Text ->
  -- | 'lastModifiedTime'
  Lude.ISO8601 ->
  -- | 'cachePolicyConfig'
  CachePolicyConfig ->
  CachePolicy
mkCachePolicy pId_ pLastModifiedTime_ pCachePolicyConfig_ =
  CachePolicy'
    { id = pId_,
      lastModifiedTime = pLastModifiedTime_,
      cachePolicyConfig = pCachePolicyConfig_
    }

-- | The unique identifier for the cache policy.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpId :: Lens.Lens' CachePolicy Lude.Text
cpId = Lens.lens (id :: CachePolicy -> Lude.Text) (\s a -> s {id = a} :: CachePolicy)
{-# DEPRECATED cpId "Use generic-lens or generic-optics with 'id' instead." #-}

-- | The date and time when the cache policy was last modified.
--
-- /Note:/ Consider using 'lastModifiedTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpLastModifiedTime :: Lens.Lens' CachePolicy Lude.ISO8601
cpLastModifiedTime = Lens.lens (lastModifiedTime :: CachePolicy -> Lude.ISO8601) (\s a -> s {lastModifiedTime = a} :: CachePolicy)
{-# DEPRECATED cpLastModifiedTime "Use generic-lens or generic-optics with 'lastModifiedTime' instead." #-}

-- | The cache policy configuration.
--
-- /Note:/ Consider using 'cachePolicyConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpCachePolicyConfig :: Lens.Lens' CachePolicy CachePolicyConfig
cpCachePolicyConfig = Lens.lens (cachePolicyConfig :: CachePolicy -> CachePolicyConfig) (\s a -> s {cachePolicyConfig = a} :: CachePolicy)
{-# DEPRECATED cpCachePolicyConfig "Use generic-lens or generic-optics with 'cachePolicyConfig' instead." #-}

instance Lude.FromXML CachePolicy where
  parseXML x =
    CachePolicy'
      Lude.<$> (x Lude..@ "Id")
      Lude.<*> (x Lude..@ "LastModifiedTime")
      Lude.<*> (x Lude..@ "CachePolicyConfig")
