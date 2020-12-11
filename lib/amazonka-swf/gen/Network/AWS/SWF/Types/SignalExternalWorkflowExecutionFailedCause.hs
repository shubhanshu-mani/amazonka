-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.SignalExternalWorkflowExecutionFailedCause
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.SignalExternalWorkflowExecutionFailedCause
  ( SignalExternalWorkflowExecutionFailedCause
      ( SignalExternalWorkflowExecutionFailedCause',
        SEWEFCOperationNotPermitted,
        SEWEFCSignalExternalWorkflowExecutionRateExceeded,
        SEWEFCUnknownExternalWorkflowExecution
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype SignalExternalWorkflowExecutionFailedCause = SignalExternalWorkflowExecutionFailedCause' Lude.Text
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype
    ( Lude.Hashable,
      Lude.NFData,
      Lude.ToJSONKey,
      Lude.FromJSONKey,
      Lude.ToJSON,
      Lude.FromJSON,
      Lude.ToXML,
      Lude.FromXML,
      Lude.ToText,
      Lude.FromText,
      Lude.ToByteString,
      Lude.ToQuery,
      Lude.ToHeader
    )

pattern SEWEFCOperationNotPermitted :: SignalExternalWorkflowExecutionFailedCause
pattern SEWEFCOperationNotPermitted = SignalExternalWorkflowExecutionFailedCause' "OPERATION_NOT_PERMITTED"

pattern SEWEFCSignalExternalWorkflowExecutionRateExceeded :: SignalExternalWorkflowExecutionFailedCause
pattern SEWEFCSignalExternalWorkflowExecutionRateExceeded = SignalExternalWorkflowExecutionFailedCause' "SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED"

pattern SEWEFCUnknownExternalWorkflowExecution :: SignalExternalWorkflowExecutionFailedCause
pattern SEWEFCUnknownExternalWorkflowExecution = SignalExternalWorkflowExecutionFailedCause' "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION"

{-# COMPLETE
  SEWEFCOperationNotPermitted,
  SEWEFCSignalExternalWorkflowExecutionRateExceeded,
  SEWEFCUnknownExternalWorkflowExecution,
  SignalExternalWorkflowExecutionFailedCause'
  #-}
