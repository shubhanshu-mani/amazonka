{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.ModifyEventSubscription
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies an existing AWS DMS event notification subscription.
module Network.AWS.DMS.ModifyEventSubscription
  ( -- * Creating a request
    ModifyEventSubscription (..),
    mkModifyEventSubscription,

    -- ** Request lenses
    mesSNSTopicARN,
    mesEnabled,
    mesSourceType,
    mesEventCategories,
    mesSubscriptionName,

    -- * Destructuring the response
    ModifyEventSubscriptionResponse (..),
    mkModifyEventSubscriptionResponse,

    -- ** Response lenses
    mesrsEventSubscription,
    mesrsResponseStatus,
  )
where

import Network.AWS.DMS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- |
--
-- /See:/ 'mkModifyEventSubscription' smart constructor.
data ModifyEventSubscription = ModifyEventSubscription'
  { snsTopicARN ::
      Lude.Maybe Lude.Text,
    enabled :: Lude.Maybe Lude.Bool,
    sourceType :: Lude.Maybe Lude.Text,
    eventCategories :: Lude.Maybe [Lude.Text],
    subscriptionName :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ModifyEventSubscription' with the minimum fields required to make a request.
--
-- * 'enabled' - A Boolean value; set to __true__ to activate the subscription.
-- * 'eventCategories' - A list of event categories for a source type that you want to subscribe to. Use the @DescribeEventCategories@ action to see a list of event categories.
-- * 'snsTopicARN' - The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.
-- * 'sourceType' - The type of AWS DMS resource that generates the events you want to subscribe to.
--
-- Valid values: replication-instance | replication-task
-- * 'subscriptionName' - The name of the AWS DMS event notification subscription to be modified.
mkModifyEventSubscription ::
  -- | 'subscriptionName'
  Lude.Text ->
  ModifyEventSubscription
mkModifyEventSubscription pSubscriptionName_ =
  ModifyEventSubscription'
    { snsTopicARN = Lude.Nothing,
      enabled = Lude.Nothing,
      sourceType = Lude.Nothing,
      eventCategories = Lude.Nothing,
      subscriptionName = pSubscriptionName_
    }

-- | The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.
--
-- /Note:/ Consider using 'snsTopicARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mesSNSTopicARN :: Lens.Lens' ModifyEventSubscription (Lude.Maybe Lude.Text)
mesSNSTopicARN = Lens.lens (snsTopicARN :: ModifyEventSubscription -> Lude.Maybe Lude.Text) (\s a -> s {snsTopicARN = a} :: ModifyEventSubscription)
{-# DEPRECATED mesSNSTopicARN "Use generic-lens or generic-optics with 'snsTopicARN' instead." #-}

-- | A Boolean value; set to __true__ to activate the subscription.
--
-- /Note:/ Consider using 'enabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mesEnabled :: Lens.Lens' ModifyEventSubscription (Lude.Maybe Lude.Bool)
mesEnabled = Lens.lens (enabled :: ModifyEventSubscription -> Lude.Maybe Lude.Bool) (\s a -> s {enabled = a} :: ModifyEventSubscription)
{-# DEPRECATED mesEnabled "Use generic-lens or generic-optics with 'enabled' instead." #-}

-- | The type of AWS DMS resource that generates the events you want to subscribe to.
--
-- Valid values: replication-instance | replication-task
--
-- /Note:/ Consider using 'sourceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mesSourceType :: Lens.Lens' ModifyEventSubscription (Lude.Maybe Lude.Text)
mesSourceType = Lens.lens (sourceType :: ModifyEventSubscription -> Lude.Maybe Lude.Text) (\s a -> s {sourceType = a} :: ModifyEventSubscription)
{-# DEPRECATED mesSourceType "Use generic-lens or generic-optics with 'sourceType' instead." #-}

-- | A list of event categories for a source type that you want to subscribe to. Use the @DescribeEventCategories@ action to see a list of event categories.
--
-- /Note:/ Consider using 'eventCategories' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mesEventCategories :: Lens.Lens' ModifyEventSubscription (Lude.Maybe [Lude.Text])
mesEventCategories = Lens.lens (eventCategories :: ModifyEventSubscription -> Lude.Maybe [Lude.Text]) (\s a -> s {eventCategories = a} :: ModifyEventSubscription)
{-# DEPRECATED mesEventCategories "Use generic-lens or generic-optics with 'eventCategories' instead." #-}

-- | The name of the AWS DMS event notification subscription to be modified.
--
-- /Note:/ Consider using 'subscriptionName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mesSubscriptionName :: Lens.Lens' ModifyEventSubscription Lude.Text
mesSubscriptionName = Lens.lens (subscriptionName :: ModifyEventSubscription -> Lude.Text) (\s a -> s {subscriptionName = a} :: ModifyEventSubscription)
{-# DEPRECATED mesSubscriptionName "Use generic-lens or generic-optics with 'subscriptionName' instead." #-}

instance Lude.AWSRequest ModifyEventSubscription where
  type Rs ModifyEventSubscription = ModifyEventSubscriptionResponse
  request = Req.postJSON dmsService
  response =
    Res.receiveJSON
      ( \s h x ->
          ModifyEventSubscriptionResponse'
            Lude.<$> (x Lude..?> "EventSubscription")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders ModifyEventSubscription where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("AmazonDMSv20160101.ModifyEventSubscription" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON ModifyEventSubscription where
  toJSON ModifyEventSubscription' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("SnsTopicArn" Lude..=) Lude.<$> snsTopicARN,
            ("Enabled" Lude..=) Lude.<$> enabled,
            ("SourceType" Lude..=) Lude.<$> sourceType,
            ("EventCategories" Lude..=) Lude.<$> eventCategories,
            Lude.Just ("SubscriptionName" Lude..= subscriptionName)
          ]
      )

instance Lude.ToPath ModifyEventSubscription where
  toPath = Lude.const "/"

instance Lude.ToQuery ModifyEventSubscription where
  toQuery = Lude.const Lude.mempty

-- |
--
-- /See:/ 'mkModifyEventSubscriptionResponse' smart constructor.
data ModifyEventSubscriptionResponse = ModifyEventSubscriptionResponse'
  { eventSubscription ::
      Lude.Maybe
        EventSubscription,
    responseStatus :: Lude.Int
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ModifyEventSubscriptionResponse' with the minimum fields required to make a request.
--
-- * 'eventSubscription' - The modified event subscription.
-- * 'responseStatus' - The response status code.
mkModifyEventSubscriptionResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  ModifyEventSubscriptionResponse
mkModifyEventSubscriptionResponse pResponseStatus_ =
  ModifyEventSubscriptionResponse'
    { eventSubscription =
        Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The modified event subscription.
--
-- /Note:/ Consider using 'eventSubscription' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mesrsEventSubscription :: Lens.Lens' ModifyEventSubscriptionResponse (Lude.Maybe EventSubscription)
mesrsEventSubscription = Lens.lens (eventSubscription :: ModifyEventSubscriptionResponse -> Lude.Maybe EventSubscription) (\s a -> s {eventSubscription = a} :: ModifyEventSubscriptionResponse)
{-# DEPRECATED mesrsEventSubscription "Use generic-lens or generic-optics with 'eventSubscription' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mesrsResponseStatus :: Lens.Lens' ModifyEventSubscriptionResponse Lude.Int
mesrsResponseStatus = Lens.lens (responseStatus :: ModifyEventSubscriptionResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: ModifyEventSubscriptionResponse)
{-# DEPRECATED mesrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
