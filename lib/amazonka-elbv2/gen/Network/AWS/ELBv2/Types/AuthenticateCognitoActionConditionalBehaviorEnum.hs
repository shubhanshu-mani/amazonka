-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.AuthenticateCognitoActionConditionalBehaviorEnum
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.AuthenticateCognitoActionConditionalBehaviorEnum
  ( AuthenticateCognitoActionConditionalBehaviorEnum
      ( AuthenticateCognitoActionConditionalBehaviorEnum',
        Allow,
        Authenticate,
        Deny
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype AuthenticateCognitoActionConditionalBehaviorEnum = AuthenticateCognitoActionConditionalBehaviorEnum' Lude.Text
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

pattern Allow :: AuthenticateCognitoActionConditionalBehaviorEnum
pattern Allow = AuthenticateCognitoActionConditionalBehaviorEnum' "allow"

pattern Authenticate :: AuthenticateCognitoActionConditionalBehaviorEnum
pattern Authenticate = AuthenticateCognitoActionConditionalBehaviorEnum' "authenticate"

pattern Deny :: AuthenticateCognitoActionConditionalBehaviorEnum
pattern Deny = AuthenticateCognitoActionConditionalBehaviorEnum' "deny"

{-# COMPLETE
  Allow,
  Authenticate,
  Deny,
  AuthenticateCognitoActionConditionalBehaviorEnum'
  #-}
