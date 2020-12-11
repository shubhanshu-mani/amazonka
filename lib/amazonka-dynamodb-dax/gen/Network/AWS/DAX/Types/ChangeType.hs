-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DAX.Types.ChangeType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DAX.Types.ChangeType
  ( ChangeType
      ( ChangeType',
        Immediate,
        RequiresReboot
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ChangeType = ChangeType' Lude.Text
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

pattern Immediate :: ChangeType
pattern Immediate = ChangeType' "IMMEDIATE"

pattern RequiresReboot :: ChangeType
pattern RequiresReboot = ChangeType' "REQUIRES_REBOOT"

{-# COMPLETE
  Immediate,
  RequiresReboot,
  ChangeType'
  #-}
