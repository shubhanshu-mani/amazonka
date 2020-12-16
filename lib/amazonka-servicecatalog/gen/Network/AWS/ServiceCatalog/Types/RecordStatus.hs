{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.RecordStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.RecordStatus
  ( RecordStatus
      ( RecordStatus',
        RSCreated,
        RSInProgress,
        RSInProgressInError,
        RSSucceeded,
        RSFailed
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype RecordStatus = RecordStatus' Lude.Text
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

pattern RSCreated :: RecordStatus
pattern RSCreated = RecordStatus' "CREATED"

pattern RSInProgress :: RecordStatus
pattern RSInProgress = RecordStatus' "IN_PROGRESS"

pattern RSInProgressInError :: RecordStatus
pattern RSInProgressInError = RecordStatus' "IN_PROGRESS_IN_ERROR"

pattern RSSucceeded :: RecordStatus
pattern RSSucceeded = RecordStatus' "SUCCEEDED"

pattern RSFailed :: RecordStatus
pattern RSFailed = RecordStatus' "FAILED"

{-# COMPLETE
  RSCreated,
  RSInProgress,
  RSInProgressInError,
  RSSucceeded,
  RSFailed,
  RecordStatus'
  #-}