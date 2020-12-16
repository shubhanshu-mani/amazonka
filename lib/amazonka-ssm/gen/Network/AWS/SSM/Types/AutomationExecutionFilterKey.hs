{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AutomationExecutionFilterKey
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AutomationExecutionFilterKey
  ( AutomationExecutionFilterKey
      ( AutomationExecutionFilterKey',
        AEFKDocumentNamePrefix,
        AEFKExecutionStatus,
        AEFKExecutionId,
        AEFKParentExecutionId,
        AEFKCurrentAction,
        AEFKStartTimeBefore,
        AEFKStartTimeAfter,
        AEFKAutomationType,
        AEFKTagKey,
        AEFKTargetResourceGroup
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype AutomationExecutionFilterKey = AutomationExecutionFilterKey' Lude.Text
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

pattern AEFKDocumentNamePrefix :: AutomationExecutionFilterKey
pattern AEFKDocumentNamePrefix = AutomationExecutionFilterKey' "DocumentNamePrefix"

pattern AEFKExecutionStatus :: AutomationExecutionFilterKey
pattern AEFKExecutionStatus = AutomationExecutionFilterKey' "ExecutionStatus"

pattern AEFKExecutionId :: AutomationExecutionFilterKey
pattern AEFKExecutionId = AutomationExecutionFilterKey' "ExecutionId"

pattern AEFKParentExecutionId :: AutomationExecutionFilterKey
pattern AEFKParentExecutionId = AutomationExecutionFilterKey' "ParentExecutionId"

pattern AEFKCurrentAction :: AutomationExecutionFilterKey
pattern AEFKCurrentAction = AutomationExecutionFilterKey' "CurrentAction"

pattern AEFKStartTimeBefore :: AutomationExecutionFilterKey
pattern AEFKStartTimeBefore = AutomationExecutionFilterKey' "StartTimeBefore"

pattern AEFKStartTimeAfter :: AutomationExecutionFilterKey
pattern AEFKStartTimeAfter = AutomationExecutionFilterKey' "StartTimeAfter"

pattern AEFKAutomationType :: AutomationExecutionFilterKey
pattern AEFKAutomationType = AutomationExecutionFilterKey' "AutomationType"

pattern AEFKTagKey :: AutomationExecutionFilterKey
pattern AEFKTagKey = AutomationExecutionFilterKey' "TagKey"

pattern AEFKTargetResourceGroup :: AutomationExecutionFilterKey
pattern AEFKTargetResourceGroup = AutomationExecutionFilterKey' "TargetResourceGroup"

{-# COMPLETE
  AEFKDocumentNamePrefix,
  AEFKExecutionStatus,
  AEFKExecutionId,
  AEFKParentExecutionId,
  AEFKCurrentAction,
  AEFKStartTimeBefore,
  AEFKStartTimeAfter,
  AEFKAutomationType,
  AEFKTagKey,
  AEFKTargetResourceGroup,
  AutomationExecutionFilterKey'
  #-}