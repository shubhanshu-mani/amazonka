-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ClientVPNConnectionStatusCode
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ClientVPNConnectionStatusCode
  ( ClientVPNConnectionStatusCode
      ( ClientVPNConnectionStatusCode',
        CVCSCActive,
        CVCSCFailedToTerminate,
        CVCSCTerminated,
        CVCSCTerminating
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ClientVPNConnectionStatusCode = ClientVPNConnectionStatusCode' Lude.Text
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

pattern CVCSCActive :: ClientVPNConnectionStatusCode
pattern CVCSCActive = ClientVPNConnectionStatusCode' "active"

pattern CVCSCFailedToTerminate :: ClientVPNConnectionStatusCode
pattern CVCSCFailedToTerminate = ClientVPNConnectionStatusCode' "failed-to-terminate"

pattern CVCSCTerminated :: ClientVPNConnectionStatusCode
pattern CVCSCTerminated = ClientVPNConnectionStatusCode' "terminated"

pattern CVCSCTerminating :: ClientVPNConnectionStatusCode
pattern CVCSCTerminating = ClientVPNConnectionStatusCode' "terminating"

{-# COMPLETE
  CVCSCActive,
  CVCSCFailedToTerminate,
  CVCSCTerminated,
  CVCSCTerminating,
  ClientVPNConnectionStatusCode'
  #-}
