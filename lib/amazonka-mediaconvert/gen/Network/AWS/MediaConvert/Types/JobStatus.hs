-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.JobStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.JobStatus
  ( JobStatus
      ( JobStatus',
        Canceled,
        Complete,
        Error,
        Progressing,
        Submitted
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or ERROR.
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

pattern Canceled :: JobStatus
pattern Canceled = JobStatus' "CANCELED"

pattern Complete :: JobStatus
pattern Complete = JobStatus' "COMPLETE"

pattern Error :: JobStatus
pattern Error = JobStatus' "ERROR"

pattern Progressing :: JobStatus
pattern Progressing = JobStatus' "PROGRESSING"

pattern Submitted :: JobStatus
pattern Submitted = JobStatus' "SUBMITTED"

{-# COMPLETE
  Canceled,
  Complete,
  Error,
  Progressing,
  Submitted,
  JobStatus'
  #-}
