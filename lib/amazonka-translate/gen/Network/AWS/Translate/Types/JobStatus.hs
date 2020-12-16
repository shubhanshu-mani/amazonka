{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Translate.Types.JobStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Translate.Types.JobStatus
  ( JobStatus
      ( JobStatus',
        JSSubmitted,
        JSInProgress,
        JSCompleted,
        JSCompletedWithError,
        JSFailed,
        JSStopRequested,
        JSStopped
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype JobStatus = JobStatus' Lude.Text
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

pattern JSSubmitted :: JobStatus
pattern JSSubmitted = JobStatus' "SUBMITTED"

pattern JSInProgress :: JobStatus
pattern JSInProgress = JobStatus' "IN_PROGRESS"

pattern JSCompleted :: JobStatus
pattern JSCompleted = JobStatus' "COMPLETED"

pattern JSCompletedWithError :: JobStatus
pattern JSCompletedWithError = JobStatus' "COMPLETED_WITH_ERROR"

pattern JSFailed :: JobStatus
pattern JSFailed = JobStatus' "FAILED"

pattern JSStopRequested :: JobStatus
pattern JSStopRequested = JobStatus' "STOP_REQUESTED"

pattern JSStopped :: JobStatus
pattern JSStopped = JobStatus' "STOPPED"

{-# COMPLETE
  JSSubmitted,
  JSInProgress,
  JSCompleted,
  JSCompletedWithError,
  JSFailed,
  JSStopRequested,
  JSStopped,
  JobStatus'
  #-}