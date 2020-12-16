{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ActivityStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ActivityStatus
  ( ActivityStatus
      ( ActivityStatus',
        ASError,
        ASPendingFulfillment,
        ASPendingTermination,
        ASFulfilled
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ActivityStatus = ActivityStatus' Lude.Text
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

pattern ASError :: ActivityStatus
pattern ASError = ActivityStatus' "error"

pattern ASPendingFulfillment :: ActivityStatus
pattern ASPendingFulfillment = ActivityStatus' "pending_fulfillment"

pattern ASPendingTermination :: ActivityStatus
pattern ASPendingTermination = ActivityStatus' "pending_termination"

pattern ASFulfilled :: ActivityStatus
pattern ASFulfilled = ActivityStatus' "fulfilled"

{-# COMPLETE
  ASError,
  ASPendingFulfillment,
  ASPendingTermination,
  ASFulfilled,
  ActivityStatus'
  #-}