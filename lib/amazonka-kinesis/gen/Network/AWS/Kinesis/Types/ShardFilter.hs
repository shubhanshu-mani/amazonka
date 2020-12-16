{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Kinesis.Types.ShardFilter
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kinesis.Types.ShardFilter
  ( ShardFilter (..),

    -- * Smart constructor
    mkShardFilter,

    -- * Lenses
    sfType,
    sfTimestamp,
    sfShardId,
  )
where

import Network.AWS.Kinesis.Types.ShardFilterType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | /See:/ 'mkShardFilter' smart constructor.
data ShardFilter = ShardFilter'
  { type' :: ShardFilterType,
    timestamp :: Lude.Maybe Lude.Timestamp,
    shardId :: Lude.Maybe Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ShardFilter' with the minimum fields required to make a request.
--
-- * 'type'' -
-- * 'timestamp' -
-- * 'shardId' -
mkShardFilter ::
  -- | 'type''
  ShardFilterType ->
  ShardFilter
mkShardFilter pType_ =
  ShardFilter'
    { type' = pType_,
      timestamp = Lude.Nothing,
      shardId = Lude.Nothing
    }

-- | Undocumented field.
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sfType :: Lens.Lens' ShardFilter ShardFilterType
sfType = Lens.lens (type' :: ShardFilter -> ShardFilterType) (\s a -> s {type' = a} :: ShardFilter)
{-# DEPRECATED sfType "Use generic-lens or generic-optics with 'type'' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'timestamp' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sfTimestamp :: Lens.Lens' ShardFilter (Lude.Maybe Lude.Timestamp)
sfTimestamp = Lens.lens (timestamp :: ShardFilter -> Lude.Maybe Lude.Timestamp) (\s a -> s {timestamp = a} :: ShardFilter)
{-# DEPRECATED sfTimestamp "Use generic-lens or generic-optics with 'timestamp' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'shardId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sfShardId :: Lens.Lens' ShardFilter (Lude.Maybe Lude.Text)
sfShardId = Lens.lens (shardId :: ShardFilter -> Lude.Maybe Lude.Text) (\s a -> s {shardId = a} :: ShardFilter)
{-# DEPRECATED sfShardId "Use generic-lens or generic-optics with 'shardId' instead." #-}

instance Lude.ToJSON ShardFilter where
  toJSON ShardFilter' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("Type" Lude..= type'),
            ("Timestamp" Lude..=) Lude.<$> timestamp,
            ("ShardId" Lude..=) Lude.<$> shardId
          ]
      )