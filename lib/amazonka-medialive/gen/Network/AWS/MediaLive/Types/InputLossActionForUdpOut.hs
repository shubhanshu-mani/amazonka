-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputLossActionForUdpOut
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputLossActionForUdpOut
  ( InputLossActionForUdpOut
      ( InputLossActionForUdpOut',
        DropProgram,
        DropTs,
        EmitProgram
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | Input Loss Action For Udp Out
newtype InputLossActionForUdpOut = InputLossActionForUdpOut' Lude.Text
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

pattern DropProgram :: InputLossActionForUdpOut
pattern DropProgram = InputLossActionForUdpOut' "DROP_PROGRAM"

pattern DropTs :: InputLossActionForUdpOut
pattern DropTs = InputLossActionForUdpOut' "DROP_TS"

pattern EmitProgram :: InputLossActionForUdpOut
pattern EmitProgram = InputLossActionForUdpOut' "EMIT_PROGRAM"

{-# COMPLETE
  DropProgram,
  DropTs,
  EmitProgram,
  InputLossActionForUdpOut'
  #-}
