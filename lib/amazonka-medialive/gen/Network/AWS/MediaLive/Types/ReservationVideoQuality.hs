-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.ReservationVideoQuality
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ReservationVideoQuality
  ( ReservationVideoQuality
      ( ReservationVideoQuality',
        Enhanced,
        Premium,
        Standard
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | Video quality, e.g. 'STANDARD' (Outputs only)
newtype ReservationVideoQuality = ReservationVideoQuality' Lude.Text
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

pattern Enhanced :: ReservationVideoQuality
pattern Enhanced = ReservationVideoQuality' "ENHANCED"

pattern Premium :: ReservationVideoQuality
pattern Premium = ReservationVideoQuality' "PREMIUM"

pattern Standard :: ReservationVideoQuality
pattern Standard = ReservationVideoQuality' "STANDARD"

{-# COMPLETE
  Enhanced,
  Premium,
  Standard,
  ReservationVideoQuality'
  #-}
