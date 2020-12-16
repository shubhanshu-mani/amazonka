{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.ExecutionStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.ExecutionStatus
  ( ExecutionStatus
      ( ExecutionStatus',
        Unavailable,
        Available,
        ExecuteInProgress,
        ExecuteComplete,
        ExecuteFailed,
        Obsolete
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

pattern Unavailable :: ExecutionStatus
pattern Unavailable = ExecutionStatus' "UNAVAILABLE"

pattern Available :: ExecutionStatus
pattern Available = ExecutionStatus' "AVAILABLE"

pattern ExecuteInProgress :: ExecutionStatus
pattern ExecuteInProgress = ExecutionStatus' "EXECUTE_IN_PROGRESS"

pattern ExecuteComplete :: ExecutionStatus
pattern ExecuteComplete = ExecutionStatus' "EXECUTE_COMPLETE"

pattern ExecuteFailed :: ExecutionStatus
pattern ExecuteFailed = ExecutionStatus' "EXECUTE_FAILED"

pattern Obsolete :: ExecutionStatus
pattern Obsolete = ExecutionStatus' "OBSOLETE"

{-# COMPLETE
  Unavailable,
  Available,
  ExecuteInProgress,
  ExecuteComplete,
  ExecuteFailed,
  Obsolete,
  ExecutionStatus'
  #-}