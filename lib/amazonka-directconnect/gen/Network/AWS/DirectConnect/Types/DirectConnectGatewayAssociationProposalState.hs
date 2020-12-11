-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.Types.DirectConnectGatewayAssociationProposalState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.DirectConnectGatewayAssociationProposalState
  ( DirectConnectGatewayAssociationProposalState
      ( DirectConnectGatewayAssociationProposalState',
        DCGAPSAccepted,
        DCGAPSDeleted,
        DCGAPSRequested
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype DirectConnectGatewayAssociationProposalState = DirectConnectGatewayAssociationProposalState' Lude.Text
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

pattern DCGAPSAccepted :: DirectConnectGatewayAssociationProposalState
pattern DCGAPSAccepted = DirectConnectGatewayAssociationProposalState' "accepted"

pattern DCGAPSDeleted :: DirectConnectGatewayAssociationProposalState
pattern DCGAPSDeleted = DirectConnectGatewayAssociationProposalState' "deleted"

pattern DCGAPSRequested :: DirectConnectGatewayAssociationProposalState
pattern DCGAPSRequested = DirectConnectGatewayAssociationProposalState' "requested"

{-# COMPLETE
  DCGAPSAccepted,
  DCGAPSDeleted,
  DCGAPSRequested,
  DirectConnectGatewayAssociationProposalState'
  #-}
