{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.WorkflowExecutionContinuedAsNewEventAttributes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.WorkflowExecutionContinuedAsNewEventAttributes
  ( WorkflowExecutionContinuedAsNewEventAttributes (..),

    -- * Smart constructor
    mkWorkflowExecutionContinuedAsNewEventAttributes,

    -- * Lenses
    wecaneaTagList,
    wecaneaTaskStartToCloseTimeout,
    wecaneaLambdaRole,
    wecaneaWorkflowType,
    wecaneaInput,
    wecaneaExecutionStartToCloseTimeout,
    wecaneaTaskList,
    wecaneaTaskPriority,
    wecaneaChildPolicy,
    wecaneaNewExecutionRunId,
    wecaneaDecisionTaskCompletedEventId,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.SWF.Types.ChildPolicy
import Network.AWS.SWF.Types.TaskList
import Network.AWS.SWF.Types.WorkflowType

-- | Provides the details of the @WorkflowExecutionContinuedAsNew@ event.
--
-- /See:/ 'mkWorkflowExecutionContinuedAsNewEventAttributes' smart constructor.
data WorkflowExecutionContinuedAsNewEventAttributes = WorkflowExecutionContinuedAsNewEventAttributes'
  { -- | The list of tags associated with the new workflow execution.
    tagList :: Lude.Maybe [Lude.Text],
    -- | The maximum duration of decision tasks for the new workflow execution.
    --
    -- The duration is specified in seconds, an integer greater than or equal to @0@ . You can use @NONE@ to specify unlimited duration.
    taskStartToCloseTimeout :: Lude.Maybe Lude.Text,
    -- | The IAM role to attach to the new (continued) workflow execution.
    lambdaRole :: Lude.Maybe Lude.Text,
    -- | The workflow type of this execution.
    workflowType :: WorkflowType,
    -- | The input provided to the new workflow execution.
    input :: Lude.Maybe Lude.Text,
    -- | The total duration allowed for the new workflow execution.
    --
    -- The duration is specified in seconds, an integer greater than or equal to @0@ . You can use @NONE@ to specify unlimited duration.
    executionStartToCloseTimeout :: Lude.Maybe Lude.Text,
    -- | The task list to use for the decisions of the new (continued) workflow execution.
    taskList :: TaskList,
    -- | The priority of the task to use for the decisions of the new (continued) workflow execution.
    taskPriority :: Lude.Maybe Lude.Text,
    -- | The policy to use for the child workflow executions of the new execution if it is terminated by calling the 'TerminateWorkflowExecution' action explicitly or due to an expired timeout.
    --
    -- The supported child policies are:
    --
    --     * @TERMINATE@ – The child executions are terminated.
    --
    --
    --     * @REQUEST_CANCEL@ – A request to cancel is attempted for each child execution by recording a @WorkflowExecutionCancelRequested@ event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.
    --
    --
    --     * @ABANDON@ – No action is taken. The child executions continue to run.
    childPolicy :: ChildPolicy,
    -- | The @runId@ of the new workflow execution.
    newExecutionRunId :: Lude.Text,
    -- | The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @ContinueAsNewWorkflowExecution@ decision that started this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
    decisionTaskCompletedEventId :: Lude.Integer
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'WorkflowExecutionContinuedAsNewEventAttributes' with the minimum fields required to make a request.
--
-- * 'tagList' - The list of tags associated with the new workflow execution.
-- * 'taskStartToCloseTimeout' - The maximum duration of decision tasks for the new workflow execution.
--
-- The duration is specified in seconds, an integer greater than or equal to @0@ . You can use @NONE@ to specify unlimited duration.
-- * 'lambdaRole' - The IAM role to attach to the new (continued) workflow execution.
-- * 'workflowType' - The workflow type of this execution.
-- * 'input' - The input provided to the new workflow execution.
-- * 'executionStartToCloseTimeout' - The total duration allowed for the new workflow execution.
--
-- The duration is specified in seconds, an integer greater than or equal to @0@ . You can use @NONE@ to specify unlimited duration.
-- * 'taskList' - The task list to use for the decisions of the new (continued) workflow execution.
-- * 'taskPriority' - The priority of the task to use for the decisions of the new (continued) workflow execution.
-- * 'childPolicy' - The policy to use for the child workflow executions of the new execution if it is terminated by calling the 'TerminateWorkflowExecution' action explicitly or due to an expired timeout.
--
-- The supported child policies are:
--
--     * @TERMINATE@ – The child executions are terminated.
--
--
--     * @REQUEST_CANCEL@ – A request to cancel is attempted for each child execution by recording a @WorkflowExecutionCancelRequested@ event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.
--
--
--     * @ABANDON@ – No action is taken. The child executions continue to run.
--
--
-- * 'newExecutionRunId' - The @runId@ of the new workflow execution.
-- * 'decisionTaskCompletedEventId' - The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @ContinueAsNewWorkflowExecution@ decision that started this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
mkWorkflowExecutionContinuedAsNewEventAttributes ::
  -- | 'workflowType'
  WorkflowType ->
  -- | 'taskList'
  TaskList ->
  -- | 'childPolicy'
  ChildPolicy ->
  -- | 'newExecutionRunId'
  Lude.Text ->
  -- | 'decisionTaskCompletedEventId'
  Lude.Integer ->
  WorkflowExecutionContinuedAsNewEventAttributes
mkWorkflowExecutionContinuedAsNewEventAttributes
  pWorkflowType_
  pTaskList_
  pChildPolicy_
  pNewExecutionRunId_
  pDecisionTaskCompletedEventId_ =
    WorkflowExecutionContinuedAsNewEventAttributes'
      { tagList =
          Lude.Nothing,
        taskStartToCloseTimeout = Lude.Nothing,
        lambdaRole = Lude.Nothing,
        workflowType = pWorkflowType_,
        input = Lude.Nothing,
        executionStartToCloseTimeout = Lude.Nothing,
        taskList = pTaskList_,
        taskPriority = Lude.Nothing,
        childPolicy = pChildPolicy_,
        newExecutionRunId = pNewExecutionRunId_,
        decisionTaskCompletedEventId =
          pDecisionTaskCompletedEventId_
      }

-- | The list of tags associated with the new workflow execution.
--
-- /Note:/ Consider using 'tagList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wecaneaTagList :: Lens.Lens' WorkflowExecutionContinuedAsNewEventAttributes (Lude.Maybe [Lude.Text])
wecaneaTagList = Lens.lens (tagList :: WorkflowExecutionContinuedAsNewEventAttributes -> Lude.Maybe [Lude.Text]) (\s a -> s {tagList = a} :: WorkflowExecutionContinuedAsNewEventAttributes)
{-# DEPRECATED wecaneaTagList "Use generic-lens or generic-optics with 'tagList' instead." #-}

-- | The maximum duration of decision tasks for the new workflow execution.
--
-- The duration is specified in seconds, an integer greater than or equal to @0@ . You can use @NONE@ to specify unlimited duration.
--
-- /Note:/ Consider using 'taskStartToCloseTimeout' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wecaneaTaskStartToCloseTimeout :: Lens.Lens' WorkflowExecutionContinuedAsNewEventAttributes (Lude.Maybe Lude.Text)
wecaneaTaskStartToCloseTimeout = Lens.lens (taskStartToCloseTimeout :: WorkflowExecutionContinuedAsNewEventAttributes -> Lude.Maybe Lude.Text) (\s a -> s {taskStartToCloseTimeout = a} :: WorkflowExecutionContinuedAsNewEventAttributes)
{-# DEPRECATED wecaneaTaskStartToCloseTimeout "Use generic-lens or generic-optics with 'taskStartToCloseTimeout' instead." #-}

-- | The IAM role to attach to the new (continued) workflow execution.
--
-- /Note:/ Consider using 'lambdaRole' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wecaneaLambdaRole :: Lens.Lens' WorkflowExecutionContinuedAsNewEventAttributes (Lude.Maybe Lude.Text)
wecaneaLambdaRole = Lens.lens (lambdaRole :: WorkflowExecutionContinuedAsNewEventAttributes -> Lude.Maybe Lude.Text) (\s a -> s {lambdaRole = a} :: WorkflowExecutionContinuedAsNewEventAttributes)
{-# DEPRECATED wecaneaLambdaRole "Use generic-lens or generic-optics with 'lambdaRole' instead." #-}

-- | The workflow type of this execution.
--
-- /Note:/ Consider using 'workflowType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wecaneaWorkflowType :: Lens.Lens' WorkflowExecutionContinuedAsNewEventAttributes WorkflowType
wecaneaWorkflowType = Lens.lens (workflowType :: WorkflowExecutionContinuedAsNewEventAttributes -> WorkflowType) (\s a -> s {workflowType = a} :: WorkflowExecutionContinuedAsNewEventAttributes)
{-# DEPRECATED wecaneaWorkflowType "Use generic-lens or generic-optics with 'workflowType' instead." #-}

-- | The input provided to the new workflow execution.
--
-- /Note:/ Consider using 'input' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wecaneaInput :: Lens.Lens' WorkflowExecutionContinuedAsNewEventAttributes (Lude.Maybe Lude.Text)
wecaneaInput = Lens.lens (input :: WorkflowExecutionContinuedAsNewEventAttributes -> Lude.Maybe Lude.Text) (\s a -> s {input = a} :: WorkflowExecutionContinuedAsNewEventAttributes)
{-# DEPRECATED wecaneaInput "Use generic-lens or generic-optics with 'input' instead." #-}

-- | The total duration allowed for the new workflow execution.
--
-- The duration is specified in seconds, an integer greater than or equal to @0@ . You can use @NONE@ to specify unlimited duration.
--
-- /Note:/ Consider using 'executionStartToCloseTimeout' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wecaneaExecutionStartToCloseTimeout :: Lens.Lens' WorkflowExecutionContinuedAsNewEventAttributes (Lude.Maybe Lude.Text)
wecaneaExecutionStartToCloseTimeout = Lens.lens (executionStartToCloseTimeout :: WorkflowExecutionContinuedAsNewEventAttributes -> Lude.Maybe Lude.Text) (\s a -> s {executionStartToCloseTimeout = a} :: WorkflowExecutionContinuedAsNewEventAttributes)
{-# DEPRECATED wecaneaExecutionStartToCloseTimeout "Use generic-lens or generic-optics with 'executionStartToCloseTimeout' instead." #-}

-- | The task list to use for the decisions of the new (continued) workflow execution.
--
-- /Note:/ Consider using 'taskList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wecaneaTaskList :: Lens.Lens' WorkflowExecutionContinuedAsNewEventAttributes TaskList
wecaneaTaskList = Lens.lens (taskList :: WorkflowExecutionContinuedAsNewEventAttributes -> TaskList) (\s a -> s {taskList = a} :: WorkflowExecutionContinuedAsNewEventAttributes)
{-# DEPRECATED wecaneaTaskList "Use generic-lens or generic-optics with 'taskList' instead." #-}

-- | The priority of the task to use for the decisions of the new (continued) workflow execution.
--
-- /Note:/ Consider using 'taskPriority' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wecaneaTaskPriority :: Lens.Lens' WorkflowExecutionContinuedAsNewEventAttributes (Lude.Maybe Lude.Text)
wecaneaTaskPriority = Lens.lens (taskPriority :: WorkflowExecutionContinuedAsNewEventAttributes -> Lude.Maybe Lude.Text) (\s a -> s {taskPriority = a} :: WorkflowExecutionContinuedAsNewEventAttributes)
{-# DEPRECATED wecaneaTaskPriority "Use generic-lens or generic-optics with 'taskPriority' instead." #-}

-- | The policy to use for the child workflow executions of the new execution if it is terminated by calling the 'TerminateWorkflowExecution' action explicitly or due to an expired timeout.
--
-- The supported child policies are:
--
--     * @TERMINATE@ – The child executions are terminated.
--
--
--     * @REQUEST_CANCEL@ – A request to cancel is attempted for each child execution by recording a @WorkflowExecutionCancelRequested@ event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.
--
--
--     * @ABANDON@ – No action is taken. The child executions continue to run.
--
--
--
-- /Note:/ Consider using 'childPolicy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wecaneaChildPolicy :: Lens.Lens' WorkflowExecutionContinuedAsNewEventAttributes ChildPolicy
wecaneaChildPolicy = Lens.lens (childPolicy :: WorkflowExecutionContinuedAsNewEventAttributes -> ChildPolicy) (\s a -> s {childPolicy = a} :: WorkflowExecutionContinuedAsNewEventAttributes)
{-# DEPRECATED wecaneaChildPolicy "Use generic-lens or generic-optics with 'childPolicy' instead." #-}

-- | The @runId@ of the new workflow execution.
--
-- /Note:/ Consider using 'newExecutionRunId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wecaneaNewExecutionRunId :: Lens.Lens' WorkflowExecutionContinuedAsNewEventAttributes Lude.Text
wecaneaNewExecutionRunId = Lens.lens (newExecutionRunId :: WorkflowExecutionContinuedAsNewEventAttributes -> Lude.Text) (\s a -> s {newExecutionRunId = a} :: WorkflowExecutionContinuedAsNewEventAttributes)
{-# DEPRECATED wecaneaNewExecutionRunId "Use generic-lens or generic-optics with 'newExecutionRunId' instead." #-}

-- | The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @ContinueAsNewWorkflowExecution@ decision that started this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
--
-- /Note:/ Consider using 'decisionTaskCompletedEventId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
wecaneaDecisionTaskCompletedEventId :: Lens.Lens' WorkflowExecutionContinuedAsNewEventAttributes Lude.Integer
wecaneaDecisionTaskCompletedEventId = Lens.lens (decisionTaskCompletedEventId :: WorkflowExecutionContinuedAsNewEventAttributes -> Lude.Integer) (\s a -> s {decisionTaskCompletedEventId = a} :: WorkflowExecutionContinuedAsNewEventAttributes)
{-# DEPRECATED wecaneaDecisionTaskCompletedEventId "Use generic-lens or generic-optics with 'decisionTaskCompletedEventId' instead." #-}

instance
  Lude.FromJSON
    WorkflowExecutionContinuedAsNewEventAttributes
  where
  parseJSON =
    Lude.withObject
      "WorkflowExecutionContinuedAsNewEventAttributes"
      ( \x ->
          WorkflowExecutionContinuedAsNewEventAttributes'
            Lude.<$> (x Lude..:? "tagList" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..:? "taskStartToCloseTimeout")
            Lude.<*> (x Lude..:? "lambdaRole")
            Lude.<*> (x Lude..: "workflowType")
            Lude.<*> (x Lude..:? "input")
            Lude.<*> (x Lude..:? "executionStartToCloseTimeout")
            Lude.<*> (x Lude..: "taskList")
            Lude.<*> (x Lude..:? "taskPriority")
            Lude.<*> (x Lude..: "childPolicy")
            Lude.<*> (x Lude..: "newExecutionRunId")
            Lude.<*> (x Lude..: "decisionTaskCompletedEventId")
      )