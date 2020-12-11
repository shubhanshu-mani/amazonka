-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.UserPoolMFAType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.UserPoolMFAType
  ( UserPoolMFAType
      ( UserPoolMFAType',
        UPMTON,
        UPMTOff,
        UPMTOptional
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype UserPoolMFAType = UserPoolMFAType' Lude.Text
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

pattern UPMTON :: UserPoolMFAType
pattern UPMTON = UserPoolMFAType' "ON"

pattern UPMTOff :: UserPoolMFAType
pattern UPMTOff = UserPoolMFAType' "OFF"

pattern UPMTOptional :: UserPoolMFAType
pattern UPMTOptional = UserPoolMFAType' "OPTIONAL"

{-# COMPLETE
  UPMTON,
  UPMTOff,
  UPMTOptional,
  UserPoolMFAType'
  #-}
