{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.RadiusAuthenticationProtocol
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.RadiusAuthenticationProtocol
  ( RadiusAuthenticationProtocol
      ( RadiusAuthenticationProtocol',
        Pap,
        Chap,
        MsCHAPV1,
        MsCHAPV2
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype RadiusAuthenticationProtocol = RadiusAuthenticationProtocol' Lude.Text
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

pattern Pap :: RadiusAuthenticationProtocol
pattern Pap = RadiusAuthenticationProtocol' "PAP"

pattern Chap :: RadiusAuthenticationProtocol
pattern Chap = RadiusAuthenticationProtocol' "CHAP"

pattern MsCHAPV1 :: RadiusAuthenticationProtocol
pattern MsCHAPV1 = RadiusAuthenticationProtocol' "MS-CHAPv1"

pattern MsCHAPV2 :: RadiusAuthenticationProtocol
pattern MsCHAPV2 = RadiusAuthenticationProtocol' "MS-CHAPv2"

{-# COMPLETE
  Pap,
  Chap,
  MsCHAPV1,
  MsCHAPV2,
  RadiusAuthenticationProtocol'
  #-}