-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.FailWorkflowExecutionFailedEventAttributes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.FailWorkflowExecutionFailedEventAttributes
  ( FailWorkflowExecutionFailedEventAttributes (..),

    -- * Smart constructor
    mkFailWorkflowExecutionFailedEventAttributes,

    -- * Lenses
    fwefeaCause,
    fwefeaDecisionTaskCompletedEventId,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.SWF.Types.FailWorkflowExecutionFailedCause

-- | Provides the details of the @FailWorkflowExecutionFailed@ event.
--
-- /See:/ 'mkFailWorkflowExecutionFailedEventAttributes' smart constructor.
data FailWorkflowExecutionFailedEventAttributes = FailWorkflowExecutionFailedEventAttributes'
  { cause ::
      FailWorkflowExecutionFailedCause,
    decisionTaskCompletedEventId ::
      Lude.Integer
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'FailWorkflowExecutionFailedEventAttributes' with the minimum fields required to make a request.
--
-- * 'cause' - The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.
-- * 'decisionTaskCompletedEventId' - The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @FailWorkflowExecution@ decision to fail this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
mkFailWorkflowExecutionFailedEventAttributes ::
  -- | 'cause'
  FailWorkflowExecutionFailedCause ->
  -- | 'decisionTaskCompletedEventId'
  Lude.Integer ->
  FailWorkflowExecutionFailedEventAttributes
mkFailWorkflowExecutionFailedEventAttributes
  pCause_
  pDecisionTaskCompletedEventId_ =
    FailWorkflowExecutionFailedEventAttributes'
      { cause = pCause_,
        decisionTaskCompletedEventId =
          pDecisionTaskCompletedEventId_
      }

-- | The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.
--
-- /Note:/ Consider using 'cause' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fwefeaCause :: Lens.Lens' FailWorkflowExecutionFailedEventAttributes FailWorkflowExecutionFailedCause
fwefeaCause = Lens.lens (cause :: FailWorkflowExecutionFailedEventAttributes -> FailWorkflowExecutionFailedCause) (\s a -> s {cause = a} :: FailWorkflowExecutionFailedEventAttributes)
{-# DEPRECATED fwefeaCause "Use generic-lens or generic-optics with 'cause' instead." #-}

-- | The ID of the @DecisionTaskCompleted@ event corresponding to the decision task that resulted in the @FailWorkflowExecution@ decision to fail this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
--
-- /Note:/ Consider using 'decisionTaskCompletedEventId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
fwefeaDecisionTaskCompletedEventId :: Lens.Lens' FailWorkflowExecutionFailedEventAttributes Lude.Integer
fwefeaDecisionTaskCompletedEventId = Lens.lens (decisionTaskCompletedEventId :: FailWorkflowExecutionFailedEventAttributes -> Lude.Integer) (\s a -> s {decisionTaskCompletedEventId = a} :: FailWorkflowExecutionFailedEventAttributes)
{-# DEPRECATED fwefeaDecisionTaskCompletedEventId "Use generic-lens or generic-optics with 'decisionTaskCompletedEventId' instead." #-}

instance Lude.FromJSON FailWorkflowExecutionFailedEventAttributes where
  parseJSON =
    Lude.withObject
      "FailWorkflowExecutionFailedEventAttributes"
      ( \x ->
          FailWorkflowExecutionFailedEventAttributes'
            Lude.<$> (x Lude..: "cause")
            Lude.<*> (x Lude..: "decisionTaskCompletedEventId")
      )
