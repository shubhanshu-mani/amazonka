-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.CacheParameterGroup
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.CacheParameterGroup
  ( CacheParameterGroup (..),

    -- * Smart constructor
    mkCacheParameterGroup,

    -- * Lenses
    cpgCacheParameterGroupFamily,
    cpgARN,
    cpgCacheParameterGroupName,
    cpgIsGlobal,
    cpgDescription,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Represents the output of a @CreateCacheParameterGroup@ operation.
--
-- /See:/ 'mkCacheParameterGroup' smart constructor.
data CacheParameterGroup = CacheParameterGroup'
  { cacheParameterGroupFamily ::
      Lude.Maybe Lude.Text,
    arn :: Lude.Maybe Lude.Text,
    cacheParameterGroupName :: Lude.Maybe Lude.Text,
    isGlobal :: Lude.Maybe Lude.Bool,
    description :: Lude.Maybe Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CacheParameterGroup' with the minimum fields required to make a request.
--
-- * 'arn' - The ARN (Amazon Resource Name) of the cache parameter group.
-- * 'cacheParameterGroupFamily' - The name of the cache parameter group family that this cache parameter group is compatible with.
--
-- Valid values are: @memcached1.4@ | @memcached1.5@ | @memcached1.6@ | @redis2.6@ | @redis2.8@ | @redis3.2@ | @redis4.0@ | @redis5.0@ | @redis6.x@ |
-- * 'cacheParameterGroupName' - The name of the cache parameter group.
-- * 'description' - The description for this cache parameter group.
-- * 'isGlobal' - Indicates whether the parameter group is associated with a Global Datastore
mkCacheParameterGroup ::
  CacheParameterGroup
mkCacheParameterGroup =
  CacheParameterGroup'
    { cacheParameterGroupFamily = Lude.Nothing,
      arn = Lude.Nothing,
      cacheParameterGroupName = Lude.Nothing,
      isGlobal = Lude.Nothing,
      description = Lude.Nothing
    }

-- | The name of the cache parameter group family that this cache parameter group is compatible with.
--
-- Valid values are: @memcached1.4@ | @memcached1.5@ | @memcached1.6@ | @redis2.6@ | @redis2.8@ | @redis3.2@ | @redis4.0@ | @redis5.0@ | @redis6.x@ |
--
-- /Note:/ Consider using 'cacheParameterGroupFamily' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpgCacheParameterGroupFamily :: Lens.Lens' CacheParameterGroup (Lude.Maybe Lude.Text)
cpgCacheParameterGroupFamily = Lens.lens (cacheParameterGroupFamily :: CacheParameterGroup -> Lude.Maybe Lude.Text) (\s a -> s {cacheParameterGroupFamily = a} :: CacheParameterGroup)
{-# DEPRECATED cpgCacheParameterGroupFamily "Use generic-lens or generic-optics with 'cacheParameterGroupFamily' instead." #-}

-- | The ARN (Amazon Resource Name) of the cache parameter group.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpgARN :: Lens.Lens' CacheParameterGroup (Lude.Maybe Lude.Text)
cpgARN = Lens.lens (arn :: CacheParameterGroup -> Lude.Maybe Lude.Text) (\s a -> s {arn = a} :: CacheParameterGroup)
{-# DEPRECATED cpgARN "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | The name of the cache parameter group.
--
-- /Note:/ Consider using 'cacheParameterGroupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpgCacheParameterGroupName :: Lens.Lens' CacheParameterGroup (Lude.Maybe Lude.Text)
cpgCacheParameterGroupName = Lens.lens (cacheParameterGroupName :: CacheParameterGroup -> Lude.Maybe Lude.Text) (\s a -> s {cacheParameterGroupName = a} :: CacheParameterGroup)
{-# DEPRECATED cpgCacheParameterGroupName "Use generic-lens or generic-optics with 'cacheParameterGroupName' instead." #-}

-- | Indicates whether the parameter group is associated with a Global Datastore
--
-- /Note:/ Consider using 'isGlobal' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpgIsGlobal :: Lens.Lens' CacheParameterGroup (Lude.Maybe Lude.Bool)
cpgIsGlobal = Lens.lens (isGlobal :: CacheParameterGroup -> Lude.Maybe Lude.Bool) (\s a -> s {isGlobal = a} :: CacheParameterGroup)
{-# DEPRECATED cpgIsGlobal "Use generic-lens or generic-optics with 'isGlobal' instead." #-}

-- | The description for this cache parameter group.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpgDescription :: Lens.Lens' CacheParameterGroup (Lude.Maybe Lude.Text)
cpgDescription = Lens.lens (description :: CacheParameterGroup -> Lude.Maybe Lude.Text) (\s a -> s {description = a} :: CacheParameterGroup)
{-# DEPRECATED cpgDescription "Use generic-lens or generic-optics with 'description' instead." #-}

instance Lude.FromXML CacheParameterGroup where
  parseXML x =
    CacheParameterGroup'
      Lude.<$> (x Lude..@? "CacheParameterGroupFamily")
      Lude.<*> (x Lude..@? "ARN")
      Lude.<*> (x Lude..@? "CacheParameterGroupName")
      Lude.<*> (x Lude..@? "IsGlobal")
      Lude.<*> (x Lude..@? "Description")
