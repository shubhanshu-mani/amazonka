{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.SignalType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.SignalType
  ( SignalType
      ( SignalType',
        Approve,
        Reject,
        StartStep,
        StopStep,
        Resume
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype SignalType = SignalType' Lude.Text
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

pattern Approve :: SignalType
pattern Approve = SignalType' "Approve"

pattern Reject :: SignalType
pattern Reject = SignalType' "Reject"

pattern StartStep :: SignalType
pattern StartStep = SignalType' "StartStep"

pattern StopStep :: SignalType
pattern StopStep = SignalType' "StopStep"

pattern Resume :: SignalType
pattern Resume = SignalType' "Resume"

{-# COMPLETE
  Approve,
  Reject,
  StartStep,
  StopStep,
  Resume,
  SignalType'
  #-}