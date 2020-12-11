{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.PutRule
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates the specified rule. Rules are enabled by default, or based on value of the state. You can disable a rule using 'DisableRule' .
--
-- A single rule watches for events from a single event bus. Events generated by AWS services go to your account's default event bus. Events generated by SaaS partner services or applications go to the matching partner event bus. If you have custom applications or services, you can specify whether their events go to your default event bus or a custom event bus that you have created. For more information, see 'CreateEventBus' .
-- If you are updating an existing rule, the rule is replaced with what you specify in this @PutRule@ command. If you omit arguments in @PutRule@ , the old values for those arguments are not kept. Instead, they are replaced with null values.
-- When you create or update a rule, incoming events might not immediately start matching to new or updated rules. Allow a short period of time for changes to take effect.
-- A rule must contain at least an EventPattern or ScheduleExpression. Rules with EventPatterns are triggered when a matching event is observed. Rules with ScheduleExpressions self-trigger based on the given schedule. A rule can have both an EventPattern and a ScheduleExpression, in which case the rule triggers on matching events as well as on a schedule.
-- When you initially create a rule, you can optionally assign one or more tags to the rule. Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only rules with certain tag values. To use the @PutRule@ operation and assign tags, you must have both the @events:PutRule@ and @events:TagResource@ permissions.
-- If you are updating an existing rule, any tags you specify in the @PutRule@ operation are ignored. To update the tags of an existing rule, use 'TagResource' and 'UntagResource' .
-- Most services in AWS treat : or / as the same character in Amazon Resource Names (ARNs). However, EventBridge uses an exact match in event patterns and rules. Be sure to use the correct ARN characters when creating event patterns so that they match the ARN syntax in the event you want to match.
-- In EventBridge, it is possible to create rules that lead to infinite loops, where a rule is fired repeatedly. For example, a rule might detect that ACLs have changed on an S3 bucket, and trigger software to change them to the desired state. If the rule is not written carefully, the subsequent change to the ACLs fires the rule again, creating an infinite loop.
-- To prevent this, write the rules so that the triggered actions do not re-fire the same rule. For example, your rule could fire only if ACLs are found to be in a bad state, instead of after any change.
-- An infinite loop can quickly cause higher than expected charges. We recommend that you use budgeting, which alerts you when charges exceed your specified limit. For more information, see <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/budgets-managing-costs.html Managing Your Costs with Budgets> .
module Network.AWS.CloudWatchEvents.PutRule
  ( -- * Creating a request
    PutRule (..),
    mkPutRule,

    -- ** Request lenses
    prEventPattern,
    prState,
    prEventBusName,
    prScheduleExpression,
    prDescription,
    prTags,
    prRoleARN,
    prName,

    -- * Destructuring the response
    PutRuleResponse (..),
    mkPutRuleResponse,

    -- ** Response lenses
    prrsRuleARN,
    prrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkPutRule' smart constructor.
data PutRule = PutRule'
  { eventPattern :: Lude.Maybe Lude.Text,
    state :: Lude.Maybe RuleState,
    eventBusName :: Lude.Maybe Lude.Text,
    scheduleExpression :: Lude.Maybe Lude.Text,
    description :: Lude.Maybe Lude.Text,
    tags :: Lude.Maybe [Tag],
    roleARN :: Lude.Maybe Lude.Text,
    name :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'PutRule' with the minimum fields required to make a request.
--
-- * 'description' - A description of the rule.
-- * 'eventBusName' - The name or ARN of the event bus to associate with this rule. If you omit this, the default event bus is used.
-- * 'eventPattern' - The event pattern. For more information, see <https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html Events and Event Patterns> in the /Amazon EventBridge User Guide/ .
-- * 'name' - The name of the rule that you are creating or updating.
-- * 'roleARN' - The Amazon Resource Name (ARN) of the IAM role associated with the rule.
-- * 'scheduleExpression' - The scheduling expression. For example, "cron(0 20 * * ? *)" or "rate(5 minutes)".
-- * 'state' - Indicates whether the rule is enabled or disabled.
-- * 'tags' - The list of key-value pairs to associate with the rule.
mkPutRule ::
  -- | 'name'
  Lude.Text ->
  PutRule
mkPutRule pName_ =
  PutRule'
    { eventPattern = Lude.Nothing,
      state = Lude.Nothing,
      eventBusName = Lude.Nothing,
      scheduleExpression = Lude.Nothing,
      description = Lude.Nothing,
      tags = Lude.Nothing,
      roleARN = Lude.Nothing,
      name = pName_
    }

-- | The event pattern. For more information, see <https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html Events and Event Patterns> in the /Amazon EventBridge User Guide/ .
--
-- /Note:/ Consider using 'eventPattern' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prEventPattern :: Lens.Lens' PutRule (Lude.Maybe Lude.Text)
prEventPattern = Lens.lens (eventPattern :: PutRule -> Lude.Maybe Lude.Text) (\s a -> s {eventPattern = a} :: PutRule)
{-# DEPRECATED prEventPattern "Use generic-lens or generic-optics with 'eventPattern' instead." #-}

-- | Indicates whether the rule is enabled or disabled.
--
-- /Note:/ Consider using 'state' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prState :: Lens.Lens' PutRule (Lude.Maybe RuleState)
prState = Lens.lens (state :: PutRule -> Lude.Maybe RuleState) (\s a -> s {state = a} :: PutRule)
{-# DEPRECATED prState "Use generic-lens or generic-optics with 'state' instead." #-}

-- | The name or ARN of the event bus to associate with this rule. If you omit this, the default event bus is used.
--
-- /Note:/ Consider using 'eventBusName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prEventBusName :: Lens.Lens' PutRule (Lude.Maybe Lude.Text)
prEventBusName = Lens.lens (eventBusName :: PutRule -> Lude.Maybe Lude.Text) (\s a -> s {eventBusName = a} :: PutRule)
{-# DEPRECATED prEventBusName "Use generic-lens or generic-optics with 'eventBusName' instead." #-}

-- | The scheduling expression. For example, "cron(0 20 * * ? *)" or "rate(5 minutes)".
--
-- /Note:/ Consider using 'scheduleExpression' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prScheduleExpression :: Lens.Lens' PutRule (Lude.Maybe Lude.Text)
prScheduleExpression = Lens.lens (scheduleExpression :: PutRule -> Lude.Maybe Lude.Text) (\s a -> s {scheduleExpression = a} :: PutRule)
{-# DEPRECATED prScheduleExpression "Use generic-lens or generic-optics with 'scheduleExpression' instead." #-}

-- | A description of the rule.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prDescription :: Lens.Lens' PutRule (Lude.Maybe Lude.Text)
prDescription = Lens.lens (description :: PutRule -> Lude.Maybe Lude.Text) (\s a -> s {description = a} :: PutRule)
{-# DEPRECATED prDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | The list of key-value pairs to associate with the rule.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prTags :: Lens.Lens' PutRule (Lude.Maybe [Tag])
prTags = Lens.lens (tags :: PutRule -> Lude.Maybe [Tag]) (\s a -> s {tags = a} :: PutRule)
{-# DEPRECATED prTags "Use generic-lens or generic-optics with 'tags' instead." #-}

-- | The Amazon Resource Name (ARN) of the IAM role associated with the rule.
--
-- /Note:/ Consider using 'roleARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prRoleARN :: Lens.Lens' PutRule (Lude.Maybe Lude.Text)
prRoleARN = Lens.lens (roleARN :: PutRule -> Lude.Maybe Lude.Text) (\s a -> s {roleARN = a} :: PutRule)
{-# DEPRECATED prRoleARN "Use generic-lens or generic-optics with 'roleARN' instead." #-}

-- | The name of the rule that you are creating or updating.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prName :: Lens.Lens' PutRule Lude.Text
prName = Lens.lens (name :: PutRule -> Lude.Text) (\s a -> s {name = a} :: PutRule)
{-# DEPRECATED prName "Use generic-lens or generic-optics with 'name' instead." #-}

instance Lude.AWSRequest PutRule where
  type Rs PutRule = PutRuleResponse
  request = Req.postJSON cloudWatchEventsService
  response =
    Res.receiveJSON
      ( \s h x ->
          PutRuleResponse'
            Lude.<$> (x Lude..?> "RuleArn") Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders PutRule where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target" Lude.=# ("AWSEvents.PutRule" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON PutRule where
  toJSON PutRule' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("EventPattern" Lude..=) Lude.<$> eventPattern,
            ("State" Lude..=) Lude.<$> state,
            ("EventBusName" Lude..=) Lude.<$> eventBusName,
            ("ScheduleExpression" Lude..=) Lude.<$> scheduleExpression,
            ("Description" Lude..=) Lude.<$> description,
            ("Tags" Lude..=) Lude.<$> tags,
            ("RoleArn" Lude..=) Lude.<$> roleARN,
            Lude.Just ("Name" Lude..= name)
          ]
      )

instance Lude.ToPath PutRule where
  toPath = Lude.const "/"

instance Lude.ToQuery PutRule where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkPutRuleResponse' smart constructor.
data PutRuleResponse = PutRuleResponse'
  { ruleARN ::
      Lude.Maybe Lude.Text,
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

-- | Creates a value of 'PutRuleResponse' with the minimum fields required to make a request.
--
-- * 'responseStatus' - The response status code.
-- * 'ruleARN' - The Amazon Resource Name (ARN) of the rule.
mkPutRuleResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  PutRuleResponse
mkPutRuleResponse pResponseStatus_ =
  PutRuleResponse'
    { ruleARN = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the rule.
--
-- /Note:/ Consider using 'ruleARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prrsRuleARN :: Lens.Lens' PutRuleResponse (Lude.Maybe Lude.Text)
prrsRuleARN = Lens.lens (ruleARN :: PutRuleResponse -> Lude.Maybe Lude.Text) (\s a -> s {ruleARN = a} :: PutRuleResponse)
{-# DEPRECATED prrsRuleARN "Use generic-lens or generic-optics with 'ruleARN' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
prrsResponseStatus :: Lens.Lens' PutRuleResponse Lude.Int
prrsResponseStatus = Lens.lens (responseStatus :: PutRuleResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: PutRuleResponse)
{-# DEPRECATED prrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
