{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.CancelSpotInstanceRequestState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CancelSpotInstanceRequestState
  ( CancelSpotInstanceRequestState
      ( CancelSpotInstanceRequestState',
        CSIRSActive,
        CSIRSOpen,
        CSIRSClosed,
        CSIRSCancelled,
        CSIRSCompleted
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype CancelSpotInstanceRequestState = CancelSpotInstanceRequestState' Lude.Text
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

pattern CSIRSActive :: CancelSpotInstanceRequestState
pattern CSIRSActive = CancelSpotInstanceRequestState' "active"

pattern CSIRSOpen :: CancelSpotInstanceRequestState
pattern CSIRSOpen = CancelSpotInstanceRequestState' "open"

pattern CSIRSClosed :: CancelSpotInstanceRequestState
pattern CSIRSClosed = CancelSpotInstanceRequestState' "closed"

pattern CSIRSCancelled :: CancelSpotInstanceRequestState
pattern CSIRSCancelled = CancelSpotInstanceRequestState' "cancelled"

pattern CSIRSCompleted :: CancelSpotInstanceRequestState
pattern CSIRSCompleted = CancelSpotInstanceRequestState' "completed"

{-# COMPLETE
  CSIRSActive,
  CSIRSOpen,
  CSIRSClosed,
  CSIRSCancelled,
  CSIRSCompleted,
  CancelSpotInstanceRequestState'
  #-}