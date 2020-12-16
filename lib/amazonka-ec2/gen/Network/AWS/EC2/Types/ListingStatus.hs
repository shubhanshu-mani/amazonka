{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ListingStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ListingStatus
  ( ListingStatus
      ( ListingStatus',
        LSActive,
        LSPending,
        LSCancelled,
        LSClosed
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ListingStatus = ListingStatus' Lude.Text
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

pattern LSActive :: ListingStatus
pattern LSActive = ListingStatus' "active"

pattern LSPending :: ListingStatus
pattern LSPending = ListingStatus' "pending"

pattern LSCancelled :: ListingStatus
pattern LSCancelled = ListingStatus' "cancelled"

pattern LSClosed :: ListingStatus
pattern LSClosed = ListingStatus' "closed"

{-# COMPLETE
  LSActive,
  LSPending,
  LSCancelled,
  LSClosed,
  ListingStatus'
  #-}