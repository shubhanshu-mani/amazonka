{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.RemediationExecutionState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.RemediationExecutionState
  ( RemediationExecutionState
      ( RemediationExecutionState',
        RESQueued,
        RESInProgress,
        RESSucceeded,
        RESFailed
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype RemediationExecutionState = RemediationExecutionState' Lude.Text
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

pattern RESQueued :: RemediationExecutionState
pattern RESQueued = RemediationExecutionState' "QUEUED"

pattern RESInProgress :: RemediationExecutionState
pattern RESInProgress = RemediationExecutionState' "IN_PROGRESS"

pattern RESSucceeded :: RemediationExecutionState
pattern RESSucceeded = RemediationExecutionState' "SUCCEEDED"

pattern RESFailed :: RemediationExecutionState
pattern RESFailed = RemediationExecutionState' "FAILED"

{-# COMPLETE
  RESQueued,
  RESInProgress,
  RESSucceeded,
  RESFailed,
  RemediationExecutionState'
  #-}