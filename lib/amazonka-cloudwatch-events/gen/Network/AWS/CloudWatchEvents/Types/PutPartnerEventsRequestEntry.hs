-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.PutPartnerEventsRequestEntry
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.PutPartnerEventsRequestEntry
  ( PutPartnerEventsRequestEntry (..),

    -- * Smart constructor
    mkPutPartnerEventsRequestEntry,

    -- * Lenses
    ppereTime,
    ppereDetailType,
    ppereResources,
    ppereSource,
    ppereDetail,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | The details about an event generated by an SaaS partner.
--
-- /See:/ 'mkPutPartnerEventsRequestEntry' smart constructor.
data PutPartnerEventsRequestEntry = PutPartnerEventsRequestEntry'
  { time ::
      Lude.Maybe Lude.Timestamp,
    detailType ::
      Lude.Maybe Lude.Text,
    resources ::
      Lude.Maybe [Lude.Text],
    source :: Lude.Maybe Lude.Text,
    detail :: Lude.Maybe Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'PutPartnerEventsRequestEntry' with the minimum fields required to make a request.
--
-- * 'detail' - A valid JSON string. There is no other schema imposed. The JSON string may contain fields and nested subobjects.
-- * 'detailType' - A free-form string used to decide what fields to expect in the event detail.
-- * 'resources' - AWS resources, identified by Amazon Resource Name (ARN), which the event primarily concerns. Any number, including zero, may be present.
-- * 'source' - The event source that is generating the evntry.
-- * 'time' - The date and time of the event.
mkPutPartnerEventsRequestEntry ::
  PutPartnerEventsRequestEntry
mkPutPartnerEventsRequestEntry =
  PutPartnerEventsRequestEntry'
    { time = Lude.Nothing,
      detailType = Lude.Nothing,
      resources = Lude.Nothing,
      source = Lude.Nothing,
      detail = Lude.Nothing
    }

-- | The date and time of the event.
--
-- /Note:/ Consider using 'time' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppereTime :: Lens.Lens' PutPartnerEventsRequestEntry (Lude.Maybe Lude.Timestamp)
ppereTime = Lens.lens (time :: PutPartnerEventsRequestEntry -> Lude.Maybe Lude.Timestamp) (\s a -> s {time = a} :: PutPartnerEventsRequestEntry)
{-# DEPRECATED ppereTime "Use generic-lens or generic-optics with 'time' instead." #-}

-- | A free-form string used to decide what fields to expect in the event detail.
--
-- /Note:/ Consider using 'detailType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppereDetailType :: Lens.Lens' PutPartnerEventsRequestEntry (Lude.Maybe Lude.Text)
ppereDetailType = Lens.lens (detailType :: PutPartnerEventsRequestEntry -> Lude.Maybe Lude.Text) (\s a -> s {detailType = a} :: PutPartnerEventsRequestEntry)
{-# DEPRECATED ppereDetailType "Use generic-lens or generic-optics with 'detailType' instead." #-}

-- | AWS resources, identified by Amazon Resource Name (ARN), which the event primarily concerns. Any number, including zero, may be present.
--
-- /Note:/ Consider using 'resources' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppereResources :: Lens.Lens' PutPartnerEventsRequestEntry (Lude.Maybe [Lude.Text])
ppereResources = Lens.lens (resources :: PutPartnerEventsRequestEntry -> Lude.Maybe [Lude.Text]) (\s a -> s {resources = a} :: PutPartnerEventsRequestEntry)
{-# DEPRECATED ppereResources "Use generic-lens or generic-optics with 'resources' instead." #-}

-- | The event source that is generating the evntry.
--
-- /Note:/ Consider using 'source' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppereSource :: Lens.Lens' PutPartnerEventsRequestEntry (Lude.Maybe Lude.Text)
ppereSource = Lens.lens (source :: PutPartnerEventsRequestEntry -> Lude.Maybe Lude.Text) (\s a -> s {source = a} :: PutPartnerEventsRequestEntry)
{-# DEPRECATED ppereSource "Use generic-lens or generic-optics with 'source' instead." #-}

-- | A valid JSON string. There is no other schema imposed. The JSON string may contain fields and nested subobjects.
--
-- /Note:/ Consider using 'detail' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ppereDetail :: Lens.Lens' PutPartnerEventsRequestEntry (Lude.Maybe Lude.Text)
ppereDetail = Lens.lens (detail :: PutPartnerEventsRequestEntry -> Lude.Maybe Lude.Text) (\s a -> s {detail = a} :: PutPartnerEventsRequestEntry)
{-# DEPRECATED ppereDetail "Use generic-lens or generic-optics with 'detail' instead." #-}

instance Lude.ToJSON PutPartnerEventsRequestEntry where
  toJSON PutPartnerEventsRequestEntry' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("Time" Lude..=) Lude.<$> time,
            ("DetailType" Lude..=) Lude.<$> detailType,
            ("Resources" Lude..=) Lude.<$> resources,
            ("Source" Lude..=) Lude.<$> source,
            ("Detail" Lude..=) Lude.<$> detail
          ]
      )
