{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.RealtimeMetricsSubscriptionStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.RealtimeMetricsSubscriptionStatus
  ( RealtimeMetricsSubscriptionStatus
      ( RealtimeMetricsSubscriptionStatus',
        Enabled,
        Disabled
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype RealtimeMetricsSubscriptionStatus = RealtimeMetricsSubscriptionStatus' Lude.Text
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

pattern Enabled :: RealtimeMetricsSubscriptionStatus
pattern Enabled = RealtimeMetricsSubscriptionStatus' "Enabled"

pattern Disabled :: RealtimeMetricsSubscriptionStatus
pattern Disabled = RealtimeMetricsSubscriptionStatus' "Disabled"

{-# COMPLETE
  Enabled,
  Disabled,
  RealtimeMetricsSubscriptionStatus'
  #-}