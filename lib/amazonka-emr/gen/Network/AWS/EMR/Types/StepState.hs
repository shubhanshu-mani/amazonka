{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.StepState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.StepState
  ( StepState
      ( StepState',
        SSPending,
        SSCancelPending,
        SSRunning,
        SSCompleted,
        SSCancelled,
        SSFailed,
        SSInterrupted
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype StepState = StepState' Lude.Text
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

pattern SSPending :: StepState
pattern SSPending = StepState' "PENDING"

pattern SSCancelPending :: StepState
pattern SSCancelPending = StepState' "CANCEL_PENDING"

pattern SSRunning :: StepState
pattern SSRunning = StepState' "RUNNING"

pattern SSCompleted :: StepState
pattern SSCompleted = StepState' "COMPLETED"

pattern SSCancelled :: StepState
pattern SSCancelled = StepState' "CANCELLED"

pattern SSFailed :: StepState
pattern SSFailed = StepState' "FAILED"

pattern SSInterrupted :: StepState
pattern SSInterrupted = StepState' "INTERRUPTED"

{-# COMPLETE
  SSPending,
  SSCancelPending,
  SSRunning,
  SSCompleted,
  SSCancelled,
  SSFailed,
  SSInterrupted,
  StepState'
  #-}