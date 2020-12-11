-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.JobExecutionFailureType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.JobExecutionFailureType
  ( JobExecutionFailureType
      ( JobExecutionFailureType',
        JEFTAll,
        JEFTFailed,
        JEFTRejected,
        JEFTTimedOut
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype JobExecutionFailureType = JobExecutionFailureType' Lude.Text
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

pattern JEFTAll :: JobExecutionFailureType
pattern JEFTAll = JobExecutionFailureType' "ALL"

pattern JEFTFailed :: JobExecutionFailureType
pattern JEFTFailed = JobExecutionFailureType' "FAILED"

pattern JEFTRejected :: JobExecutionFailureType
pattern JEFTRejected = JobExecutionFailureType' "REJECTED"

pattern JEFTTimedOut :: JobExecutionFailureType
pattern JEFTTimedOut = JobExecutionFailureType' "TIMED_OUT"

{-# COMPLETE
  JEFTAll,
  JEFTFailed,
  JEFTRejected,
  JEFTTimedOut,
  JobExecutionFailureType'
  #-}
