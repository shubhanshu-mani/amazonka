{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Segment
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.Segment
  ( Segment (..),

    -- * Smart constructor
    mkSegment,

    -- * Lenses
    sTotalSegments,
    sSegmentNumber,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Defines a non-overlapping region of a table's partitions, allowing multiple requests to be executed in parallel.
--
-- /See:/ 'mkSegment' smart constructor.
data Segment = Segment'
  { -- | The total number of segments.
    totalSegments :: Lude.Natural,
    -- | The zero-based index number of the segment. For example, if the total number of segments is 4, @SegmentNumber@ values range from 0 through 3.
    segmentNumber :: Lude.Natural
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'Segment' with the minimum fields required to make a request.
--
-- * 'totalSegments' - The total number of segments.
-- * 'segmentNumber' - The zero-based index number of the segment. For example, if the total number of segments is 4, @SegmentNumber@ values range from 0 through 3.
mkSegment ::
  -- | 'totalSegments'
  Lude.Natural ->
  -- | 'segmentNumber'
  Lude.Natural ->
  Segment
mkSegment pTotalSegments_ pSegmentNumber_ =
  Segment'
    { totalSegments = pTotalSegments_,
      segmentNumber = pSegmentNumber_
    }

-- | The total number of segments.
--
-- /Note:/ Consider using 'totalSegments' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sTotalSegments :: Lens.Lens' Segment Lude.Natural
sTotalSegments = Lens.lens (totalSegments :: Segment -> Lude.Natural) (\s a -> s {totalSegments = a} :: Segment)
{-# DEPRECATED sTotalSegments "Use generic-lens or generic-optics with 'totalSegments' instead." #-}

-- | The zero-based index number of the segment. For example, if the total number of segments is 4, @SegmentNumber@ values range from 0 through 3.
--
-- /Note:/ Consider using 'segmentNumber' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sSegmentNumber :: Lens.Lens' Segment Lude.Natural
sSegmentNumber = Lens.lens (segmentNumber :: Segment -> Lude.Natural) (\s a -> s {segmentNumber = a} :: Segment)
{-# DEPRECATED sSegmentNumber "Use generic-lens or generic-optics with 'segmentNumber' instead." #-}

instance Lude.ToJSON Segment where
  toJSON Segment' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("TotalSegments" Lude..= totalSegments),
            Lude.Just ("SegmentNumber" Lude..= segmentNumber)
          ]
      )