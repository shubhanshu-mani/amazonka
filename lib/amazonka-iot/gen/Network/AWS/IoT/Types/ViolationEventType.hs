-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.ViolationEventType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ViolationEventType
  ( ViolationEventType
      ( ViolationEventType',
        AlarmCleared,
        AlarmInvalidated,
        InAlarm
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ViolationEventType = ViolationEventType' Lude.Text
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

pattern AlarmCleared :: ViolationEventType
pattern AlarmCleared = ViolationEventType' "alarm-cleared"

pattern AlarmInvalidated :: ViolationEventType
pattern AlarmInvalidated = ViolationEventType' "alarm-invalidated"

pattern InAlarm :: ViolationEventType
pattern InAlarm = ViolationEventType' "in-alarm"

{-# COMPLETE
  AlarmCleared,
  AlarmInvalidated,
  InAlarm,
  ViolationEventType'
  #-}
