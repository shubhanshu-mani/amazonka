{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexRuntime.Types.DialogActionType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexRuntime.Types.DialogActionType
  ( DialogActionType
      ( DialogActionType',
        DATElicitIntent,
        DATConfirmIntent,
        DATElicitSlot,
        DATClose,
        DATDelegate
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype DialogActionType = DialogActionType' Lude.Text
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

pattern DATElicitIntent :: DialogActionType
pattern DATElicitIntent = DialogActionType' "ElicitIntent"

pattern DATConfirmIntent :: DialogActionType
pattern DATConfirmIntent = DialogActionType' "ConfirmIntent"

pattern DATElicitSlot :: DialogActionType
pattern DATElicitSlot = DialogActionType' "ElicitSlot"

pattern DATClose :: DialogActionType
pattern DATClose = DialogActionType' "Close"

pattern DATDelegate :: DialogActionType
pattern DATDelegate = DialogActionType' "Delegate"

{-# COMPLETE
  DATElicitIntent,
  DATConfirmIntent,
  DATElicitSlot,
  DATClose,
  DATDelegate,
  DialogActionType'
  #-}