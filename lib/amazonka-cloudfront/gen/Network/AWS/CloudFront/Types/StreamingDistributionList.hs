{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.StreamingDistributionList
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.StreamingDistributionList
  ( StreamingDistributionList (..),

    -- * Smart constructor
    mkStreamingDistributionList,

    -- * Lenses
    sdlQuantity,
    sdlItems,
    sdlMarker,
    sdlMaxItems,
    sdlNextMarker,
    sdlIsTruncated,
  )
where

import Network.AWS.CloudFront.Types.StreamingDistributionSummary
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | A streaming distribution list.
--
-- /See:/ 'mkStreamingDistributionList' smart constructor.
data StreamingDistributionList = StreamingDistributionList'
  { -- | The number of streaming distributions that were created by the current AWS account.
    quantity :: Lude.Int,
    -- | A complex type that contains one @StreamingDistributionSummary@ element for each distribution that was created by the current AWS account.
    items :: Lude.Maybe [StreamingDistributionSummary],
    -- | The value you provided for the @Marker@ request parameter.
    marker :: Lude.Text,
    -- | The value you provided for the @MaxItems@ request parameter.
    maxItems :: Lude.Int,
    -- | If @IsTruncated@ is @true@ , this element is present and contains the value you can use for the @Marker@ request parameter to continue listing your RTMP distributions where they left off.
    nextMarker :: Lude.Maybe Lude.Text,
    -- | A flag that indicates whether more streaming distributions remain to be listed. If your results were truncated, you can make a follow-up pagination request using the @Marker@ request parameter to retrieve more distributions in the list.
    isTruncated :: Lude.Bool
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'StreamingDistributionList' with the minimum fields required to make a request.
--
-- * 'quantity' - The number of streaming distributions that were created by the current AWS account.
-- * 'items' - A complex type that contains one @StreamingDistributionSummary@ element for each distribution that was created by the current AWS account.
-- * 'marker' - The value you provided for the @Marker@ request parameter.
-- * 'maxItems' - The value you provided for the @MaxItems@ request parameter.
-- * 'nextMarker' - If @IsTruncated@ is @true@ , this element is present and contains the value you can use for the @Marker@ request parameter to continue listing your RTMP distributions where they left off.
-- * 'isTruncated' - A flag that indicates whether more streaming distributions remain to be listed. If your results were truncated, you can make a follow-up pagination request using the @Marker@ request parameter to retrieve more distributions in the list.
mkStreamingDistributionList ::
  -- | 'quantity'
  Lude.Int ->
  -- | 'marker'
  Lude.Text ->
  -- | 'maxItems'
  Lude.Int ->
  -- | 'isTruncated'
  Lude.Bool ->
  StreamingDistributionList
mkStreamingDistributionList
  pQuantity_
  pMarker_
  pMaxItems_
  pIsTruncated_ =
    StreamingDistributionList'
      { quantity = pQuantity_,
        items = Lude.Nothing,
        marker = pMarker_,
        maxItems = pMaxItems_,
        nextMarker = Lude.Nothing,
        isTruncated = pIsTruncated_
      }

-- | The number of streaming distributions that were created by the current AWS account.
--
-- /Note:/ Consider using 'quantity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdlQuantity :: Lens.Lens' StreamingDistributionList Lude.Int
sdlQuantity = Lens.lens (quantity :: StreamingDistributionList -> Lude.Int) (\s a -> s {quantity = a} :: StreamingDistributionList)
{-# DEPRECATED sdlQuantity "Use generic-lens or generic-optics with 'quantity' instead." #-}

-- | A complex type that contains one @StreamingDistributionSummary@ element for each distribution that was created by the current AWS account.
--
-- /Note:/ Consider using 'items' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdlItems :: Lens.Lens' StreamingDistributionList (Lude.Maybe [StreamingDistributionSummary])
sdlItems = Lens.lens (items :: StreamingDistributionList -> Lude.Maybe [StreamingDistributionSummary]) (\s a -> s {items = a} :: StreamingDistributionList)
{-# DEPRECATED sdlItems "Use generic-lens or generic-optics with 'items' instead." #-}

-- | The value you provided for the @Marker@ request parameter.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdlMarker :: Lens.Lens' StreamingDistributionList Lude.Text
sdlMarker = Lens.lens (marker :: StreamingDistributionList -> Lude.Text) (\s a -> s {marker = a} :: StreamingDistributionList)
{-# DEPRECATED sdlMarker "Use generic-lens or generic-optics with 'marker' instead." #-}

-- | The value you provided for the @MaxItems@ request parameter.
--
-- /Note:/ Consider using 'maxItems' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdlMaxItems :: Lens.Lens' StreamingDistributionList Lude.Int
sdlMaxItems = Lens.lens (maxItems :: StreamingDistributionList -> Lude.Int) (\s a -> s {maxItems = a} :: StreamingDistributionList)
{-# DEPRECATED sdlMaxItems "Use generic-lens or generic-optics with 'maxItems' instead." #-}

-- | If @IsTruncated@ is @true@ , this element is present and contains the value you can use for the @Marker@ request parameter to continue listing your RTMP distributions where they left off.
--
-- /Note:/ Consider using 'nextMarker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdlNextMarker :: Lens.Lens' StreamingDistributionList (Lude.Maybe Lude.Text)
sdlNextMarker = Lens.lens (nextMarker :: StreamingDistributionList -> Lude.Maybe Lude.Text) (\s a -> s {nextMarker = a} :: StreamingDistributionList)
{-# DEPRECATED sdlNextMarker "Use generic-lens or generic-optics with 'nextMarker' instead." #-}

-- | A flag that indicates whether more streaming distributions remain to be listed. If your results were truncated, you can make a follow-up pagination request using the @Marker@ request parameter to retrieve more distributions in the list.
--
-- /Note:/ Consider using 'isTruncated' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sdlIsTruncated :: Lens.Lens' StreamingDistributionList Lude.Bool
sdlIsTruncated = Lens.lens (isTruncated :: StreamingDistributionList -> Lude.Bool) (\s a -> s {isTruncated = a} :: StreamingDistributionList)
{-# DEPRECATED sdlIsTruncated "Use generic-lens or generic-optics with 'isTruncated' instead." #-}

instance Lude.FromXML StreamingDistributionList where
  parseXML x =
    StreamingDistributionList'
      Lude.<$> (x Lude..@ "Quantity")
      Lude.<*> ( x Lude..@? "Items" Lude..!@ Lude.mempty
                   Lude.>>= Lude.may (Lude.parseXMLList "StreamingDistributionSummary")
               )
      Lude.<*> (x Lude..@ "Marker")
      Lude.<*> (x Lude..@ "MaxItems")
      Lude.<*> (x Lude..@? "NextMarker")
      Lude.<*> (x Lude..@ "IsTruncated")