{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.BusinessReportStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.BusinessReportStatus
  ( BusinessReportStatus
      ( BusinessReportStatus',
        BRSRunning,
        BRSSucceeded,
        BRSFailed
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype BusinessReportStatus = BusinessReportStatus' Lude.Text
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

pattern BRSRunning :: BusinessReportStatus
pattern BRSRunning = BusinessReportStatus' "RUNNING"

pattern BRSSucceeded :: BusinessReportStatus
pattern BRSSucceeded = BusinessReportStatus' "SUCCEEDED"

pattern BRSFailed :: BusinessReportStatus
pattern BRSFailed = BusinessReportStatus' "FAILED"

{-# COMPLETE
  BRSRunning,
  BRSSucceeded,
  BRSFailed,
  BusinessReportStatus'
  #-}