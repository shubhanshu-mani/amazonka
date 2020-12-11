-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.Types.DirectConnectGatewayAssociationState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.DirectConnectGatewayAssociationState
  ( DirectConnectGatewayAssociationState
      ( DirectConnectGatewayAssociationState',
        Associated,
        Associating,
        Disassociated,
        Disassociating,
        Updating
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype DirectConnectGatewayAssociationState = DirectConnectGatewayAssociationState' Lude.Text
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

pattern Associated :: DirectConnectGatewayAssociationState
pattern Associated = DirectConnectGatewayAssociationState' "associated"

pattern Associating :: DirectConnectGatewayAssociationState
pattern Associating = DirectConnectGatewayAssociationState' "associating"

pattern Disassociated :: DirectConnectGatewayAssociationState
pattern Disassociated = DirectConnectGatewayAssociationState' "disassociated"

pattern Disassociating :: DirectConnectGatewayAssociationState
pattern Disassociating = DirectConnectGatewayAssociationState' "disassociating"

pattern Updating :: DirectConnectGatewayAssociationState
pattern Updating = DirectConnectGatewayAssociationState' "updating"

{-# COMPLETE
  Associated,
  Associating,
  Disassociated,
  Disassociating,
  Updating,
  DirectConnectGatewayAssociationState'
  #-}
