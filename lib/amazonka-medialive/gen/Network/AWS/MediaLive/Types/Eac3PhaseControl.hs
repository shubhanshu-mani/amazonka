-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Eac3PhaseControl
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Eac3PhaseControl
  ( Eac3PhaseControl
      ( Eac3PhaseControl',
        NoShift,
        Shift90Degrees
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | Eac3 Phase Control
newtype Eac3PhaseControl = Eac3PhaseControl' Lude.Text
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

pattern NoShift :: Eac3PhaseControl
pattern NoShift = Eac3PhaseControl' "NO_SHIFT"

pattern Shift90Degrees :: Eac3PhaseControl
pattern Shift90Degrees = Eac3PhaseControl' "SHIFT_90_DEGREES"

{-# COMPLETE
  NoShift,
  Shift90Degrees,
  Eac3PhaseControl'
  #-}
