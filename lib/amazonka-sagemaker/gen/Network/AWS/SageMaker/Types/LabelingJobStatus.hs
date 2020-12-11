-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.LabelingJobStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.LabelingJobStatus
  ( LabelingJobStatus
      ( LabelingJobStatus',
        LJSCompleted,
        LJSFailed,
        LJSInProgress,
        LJSInitializing,
        LJSStopped,
        LJSStopping
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype LabelingJobStatus = LabelingJobStatus' Lude.Text
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

pattern LJSCompleted :: LabelingJobStatus
pattern LJSCompleted = LabelingJobStatus' "Completed"

pattern LJSFailed :: LabelingJobStatus
pattern LJSFailed = LabelingJobStatus' "Failed"

pattern LJSInProgress :: LabelingJobStatus
pattern LJSInProgress = LabelingJobStatus' "InProgress"

pattern LJSInitializing :: LabelingJobStatus
pattern LJSInitializing = LabelingJobStatus' "Initializing"

pattern LJSStopped :: LabelingJobStatus
pattern LJSStopped = LabelingJobStatus' "Stopped"

pattern LJSStopping :: LabelingJobStatus
pattern LJSStopping = LabelingJobStatus' "Stopping"

{-# COMPLETE
  LJSCompleted,
  LJSFailed,
  LJSInProgress,
  LJSInitializing,
  LJSStopped,
  LJSStopping,
  LabelingJobStatus'
  #-}
