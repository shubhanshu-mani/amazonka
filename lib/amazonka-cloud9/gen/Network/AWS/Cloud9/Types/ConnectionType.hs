-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Cloud9.Types.ConnectionType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Cloud9.Types.ConnectionType
  ( ConnectionType
      ( ConnectionType',
        ConnectSSH,
        ConnectSsm
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ConnectionType = ConnectionType' Lude.Text
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

pattern ConnectSSH :: ConnectionType
pattern ConnectSSH = ConnectionType' "CONNECT_SSH"

pattern ConnectSsm :: ConnectionType
pattern ConnectSsm = ConnectionType' "CONNECT_SSM"

{-# COMPLETE
  ConnectSSH,
  ConnectSsm,
  ConnectionType'
  #-}
