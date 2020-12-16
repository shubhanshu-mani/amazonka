{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionFailedEventAttributes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionFailedEventAttributes
  ( RequestCancelExternalWorkflowExecutionFailedEventAttributes (..),

    -- * Smart constructor
    mkRequestCancelExternalWorkflowExecutionFailedEventAttributes,

    -- * Lenses
    rcewefeaControl,
    rcewefeaCause,
    rcewefeaRunId,
    rcewefeaInitiatedEventId,
    rcewefeaWorkflowId,
    rcewefeaDecisionTaskCompletedEventId,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionFailedCause

-- | Provides the details of the @RequestCancelExternalWorkflowExecutionFailed@ event.
--
-- /See:/ 'mkRequestCancelExternalWorkflowExecutionFailedEventAttributes' smart constructor.
data RequestCancelExternalWorkflowExecutionFailedEventAttributes = RequestCancelExternalWorkflowExecutionFailedEventAttributes'
  { -- | The data attached to the event that the decider can use in subsequent workflow tasks. This data isn't sent to the workflow execution.
    control :: Lude.Maybe Lude.Text,
    -- | The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.
    cause :: RequestCancelExternalWorkflowExecutionFailedCause,
    -- | The @runId@ of the external workflow execution.
    runId :: Lude.Maybe Lude.Text,
    -- | The ID of the @RequestCancelExternalWorkflowExecutionInitiated@ event corresponding to the @RequestCancelExternalWorkflowExecution@ decision to cancel this external workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
    initiatedEventId :: Lude.Integer,
    -- | The @workflowId@ of the external workflow to which the cancel request was to be delivered.
    workflowId :: Lude.Text,
    -- | The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @RequestCancelExternalWorkflowExecution@ decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
    decisionTaskCompletedEventId :: Lude.Integer
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'RequestCancelExternalWorkflowExecutionFailedEventAttributes' with the minimum fields required to make a request.
--
-- * 'control' - The data attached to the event that the decider can use in subsequent workflow tasks. This data isn't sent to the workflow execution.
-- * 'cause' - The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.
-- * 'runId' - The @runId@ of the external workflow execution.
-- * 'initiatedEventId' - The ID of the @RequestCancelExternalWorkflowExecutionInitiated@ event corresponding to the @RequestCancelExternalWorkflowExecution@ decision to cancel this external workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
-- * 'workflowId' - The @workflowId@ of the external workflow to which the cancel request was to be delivered.
-- * 'decisionTaskCompletedEventId' - The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @RequestCancelExternalWorkflowExecution@ decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
mkRequestCancelExternalWorkflowExecutionFailedEventAttributes ::
  -- | 'cause'
  RequestCancelExternalWorkflowExecutionFailedCause ->
  -- | 'initiatedEventId'
  Lude.Integer ->
  -- | 'workflowId'
  Lude.Text ->
  -- | 'decisionTaskCompletedEventId'
  Lude.Integer ->
  RequestCancelExternalWorkflowExecutionFailedEventAttributes
mkRequestCancelExternalWorkflowExecutionFailedEventAttributes
  pCause_
  pInitiatedEventId_
  pWorkflowId_
  pDecisionTaskCompletedEventId_ =
    RequestCancelExternalWorkflowExecutionFailedEventAttributes'
      { control =
          Lude.Nothing,
        cause = pCause_,
        runId = Lude.Nothing,
        initiatedEventId =
          pInitiatedEventId_,
        workflowId = pWorkflowId_,
        decisionTaskCompletedEventId =
          pDecisionTaskCompletedEventId_
      }

-- | The data attached to the event that the decider can use in subsequent workflow tasks. This data isn't sent to the workflow execution.
--
-- /Note:/ Consider using 'control' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rcewefeaControl :: Lens.Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes (Lude.Maybe Lude.Text)
rcewefeaControl = Lens.lens (control :: RequestCancelExternalWorkflowExecutionFailedEventAttributes -> Lude.Maybe Lude.Text) (\s a -> s {control = a} :: RequestCancelExternalWorkflowExecutionFailedEventAttributes)
{-# DEPRECATED rcewefeaControl "Use generic-lens or generic-optics with 'control' instead." #-}

-- | The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.
--
-- /Note:/ Consider using 'cause' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rcewefeaCause :: Lens.Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes RequestCancelExternalWorkflowExecutionFailedCause
rcewefeaCause = Lens.lens (cause :: RequestCancelExternalWorkflowExecutionFailedEventAttributes -> RequestCancelExternalWorkflowExecutionFailedCause) (\s a -> s {cause = a} :: RequestCancelExternalWorkflowExecutionFailedEventAttributes)
{-# DEPRECATED rcewefeaCause "Use generic-lens or generic-optics with 'cause' instead." #-}

-- | The @runId@ of the external workflow execution.
--
-- /Note:/ Consider using 'runId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rcewefeaRunId :: Lens.Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes (Lude.Maybe Lude.Text)
rcewefeaRunId = Lens.lens (runId :: RequestCancelExternalWorkflowExecutionFailedEventAttributes -> Lude.Maybe Lude.Text) (\s a -> s {runId = a} :: RequestCancelExternalWorkflowExecutionFailedEventAttributes)
{-# DEPRECATED rcewefeaRunId "Use generic-lens or generic-optics with 'runId' instead." #-}

-- | The ID of the @RequestCancelExternalWorkflowExecutionInitiated@ event corresponding to the @RequestCancelExternalWorkflowExecution@ decision to cancel this external workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
--
-- /Note:/ Consider using 'initiatedEventId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rcewefeaInitiatedEventId :: Lens.Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes Lude.Integer
rcewefeaInitiatedEventId = Lens.lens (initiatedEventId :: RequestCancelExternalWorkflowExecutionFailedEventAttributes -> Lude.Integer) (\s a -> s {initiatedEventId = a} :: RequestCancelExternalWorkflowExecutionFailedEventAttributes)
{-# DEPRECATED rcewefeaInitiatedEventId "Use generic-lens or generic-optics with 'initiatedEventId' instead." #-}

-- | The @workflowId@ of the external workflow to which the cancel request was to be delivered.
--
-- /Note:/ Consider using 'workflowId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rcewefeaWorkflowId :: Lens.Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes Lude.Text
rcewefeaWorkflowId = Lens.lens (workflowId :: RequestCancelExternalWorkflowExecutionFailedEventAttributes -> Lude.Text) (\s a -> s {workflowId = a} :: RequestCancelExternalWorkflowExecutionFailedEventAttributes)
{-# DEPRECATED rcewefeaWorkflowId "Use generic-lens or generic-optics with 'workflowId' instead." #-}

-- | The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @RequestCancelExternalWorkflowExecution@ decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
--
-- /Note:/ Consider using 'decisionTaskCompletedEventId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rcewefeaDecisionTaskCompletedEventId :: Lens.Lens' RequestCancelExternalWorkflowExecutionFailedEventAttributes Lude.Integer
rcewefeaDecisionTaskCompletedEventId = Lens.lens (decisionTaskCompletedEventId :: RequestCancelExternalWorkflowExecutionFailedEventAttributes -> Lude.Integer) (\s a -> s {decisionTaskCompletedEventId = a} :: RequestCancelExternalWorkflowExecutionFailedEventAttributes)
{-# DEPRECATED rcewefeaDecisionTaskCompletedEventId "Use generic-lens or generic-optics with 'decisionTaskCompletedEventId' instead." #-}

instance
  Lude.FromJSON
    RequestCancelExternalWorkflowExecutionFailedEventAttributes
  where
  parseJSON =
    Lude.withObject
      "RequestCancelExternalWorkflowExecutionFailedEventAttributes"
      ( \x ->
          RequestCancelExternalWorkflowExecutionFailedEventAttributes'
            Lude.<$> (x Lude..:? "control") Lude.<*> (x Lude..: "cause")
              Lude.<*> (x Lude..:? "runId")
              Lude.<*> (x Lude..: "initiatedEventId")
              Lude.<*> (x Lude..: "workflowId")
              Lude.<*> (x Lude..: "decisionTaskCompletedEventId")
      )