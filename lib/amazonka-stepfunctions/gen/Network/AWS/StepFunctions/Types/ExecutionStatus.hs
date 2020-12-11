-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.Types.ExecutionStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.ExecutionStatus
  ( ExecutionStatus
      ( ExecutionStatus',
        Aborted,
        Failed,
        Running,
        Succeeded,
        TimedOut
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ExecutionStatus = ExecutionStatus' Lude.Text
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

pattern Aborted :: ExecutionStatus
pattern Aborted = ExecutionStatus' "ABORTED"

pattern Failed :: ExecutionStatus
pattern Failed = ExecutionStatus' "FAILED"

pattern Running :: ExecutionStatus
pattern Running = ExecutionStatus' "RUNNING"

pattern Succeeded :: ExecutionStatus
pattern Succeeded = ExecutionStatus' "SUCCEEDED"

pattern TimedOut :: ExecutionStatus
pattern TimedOut = ExecutionStatus' "TIMED_OUT"

{-# COMPLETE
  Aborted,
  Failed,
  Running,
  Succeeded,
  TimedOut,
  ExecutionStatus'
  #-}
