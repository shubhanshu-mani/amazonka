-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Organizations.Types.CreateAccountState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.CreateAccountState
  ( CreateAccountState
      ( CreateAccountState',
        Failed,
        InProgress,
        Succeeded
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype CreateAccountState = CreateAccountState' Lude.Text
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

pattern Failed :: CreateAccountState
pattern Failed = CreateAccountState' "FAILED"

pattern InProgress :: CreateAccountState
pattern InProgress = CreateAccountState' "IN_PROGRESS"

pattern Succeeded :: CreateAccountState
pattern Succeeded = CreateAccountState' "SUCCEEDED"

{-# COMPLETE
  Failed,
  InProgress,
  Succeeded,
  CreateAccountState'
  #-}
