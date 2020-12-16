{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputSecurityGroupState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputSecurityGroupState
  ( InputSecurityGroupState
      ( InputSecurityGroupState',
        ISGSIdle,
        ISGSInUse,
        ISGSUpdating,
        ISGSDeleted
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | Placeholder documentation for InputSecurityGroupState
newtype InputSecurityGroupState = InputSecurityGroupState' Lude.Text
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

pattern ISGSIdle :: InputSecurityGroupState
pattern ISGSIdle = InputSecurityGroupState' "IDLE"

pattern ISGSInUse :: InputSecurityGroupState
pattern ISGSInUse = InputSecurityGroupState' "IN_USE"

pattern ISGSUpdating :: InputSecurityGroupState
pattern ISGSUpdating = InputSecurityGroupState' "UPDATING"

pattern ISGSDeleted :: InputSecurityGroupState
pattern ISGSDeleted = InputSecurityGroupState' "DELETED"

{-# COMPLETE
  ISGSIdle,
  ISGSInUse,
  ISGSUpdating,
  ISGSDeleted,
  InputSecurityGroupState'
  #-}