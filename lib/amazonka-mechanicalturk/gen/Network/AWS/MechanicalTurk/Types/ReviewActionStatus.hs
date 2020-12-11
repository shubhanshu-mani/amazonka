-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.Types.ReviewActionStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.ReviewActionStatus
  ( ReviewActionStatus
      ( ReviewActionStatus',
        Cancelled,
        Failed,
        Intended,
        Succeeded
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ReviewActionStatus = ReviewActionStatus' Lude.Text
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

pattern Cancelled :: ReviewActionStatus
pattern Cancelled = ReviewActionStatus' "Cancelled"

pattern Failed :: ReviewActionStatus
pattern Failed = ReviewActionStatus' "Failed"

pattern Intended :: ReviewActionStatus
pattern Intended = ReviewActionStatus' "Intended"

pattern Succeeded :: ReviewActionStatus
pattern Succeeded = ReviewActionStatus' "Succeeded"

{-# COMPLETE
  Cancelled,
  Failed,
  Intended,
  Succeeded,
  ReviewActionStatus'
  #-}
