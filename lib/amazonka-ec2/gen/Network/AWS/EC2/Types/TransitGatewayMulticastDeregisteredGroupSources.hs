{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayMulticastDeregisteredGroupSources
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayMulticastDeregisteredGroupSources
  ( TransitGatewayMulticastDeregisteredGroupSources (..),

    -- * Smart constructor
    mkTransitGatewayMulticastDeregisteredGroupSources,

    -- * Lenses
    tgmdgsDeregisteredNetworkInterfaceIds,
    tgmdgsTransitGatewayMulticastDomainId,
    tgmdgsGroupIPAddress,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Describes the deregistered transit gateway multicast group sources.
--
-- /See:/ 'mkTransitGatewayMulticastDeregisteredGroupSources' smart constructor.
data TransitGatewayMulticastDeregisteredGroupSources = TransitGatewayMulticastDeregisteredGroupSources'
  { -- | The network interface IDs of the non-registered members.
    deregisteredNetworkInterfaceIds :: Lude.Maybe [Lude.Text],
    -- | The ID of the transit gateway multicast domain.
    transitGatewayMulticastDomainId :: Lude.Maybe Lude.Text,
    -- | The IP address assigned to the transit gateway multicast group.
    groupIPAddress :: Lude.Maybe Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'TransitGatewayMulticastDeregisteredGroupSources' with the minimum fields required to make a request.
--
-- * 'deregisteredNetworkInterfaceIds' - The network interface IDs of the non-registered members.
-- * 'transitGatewayMulticastDomainId' - The ID of the transit gateway multicast domain.
-- * 'groupIPAddress' - The IP address assigned to the transit gateway multicast group.
mkTransitGatewayMulticastDeregisteredGroupSources ::
  TransitGatewayMulticastDeregisteredGroupSources
mkTransitGatewayMulticastDeregisteredGroupSources =
  TransitGatewayMulticastDeregisteredGroupSources'
    { deregisteredNetworkInterfaceIds =
        Lude.Nothing,
      transitGatewayMulticastDomainId = Lude.Nothing,
      groupIPAddress = Lude.Nothing
    }

-- | The network interface IDs of the non-registered members.
--
-- /Note:/ Consider using 'deregisteredNetworkInterfaceIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tgmdgsDeregisteredNetworkInterfaceIds :: Lens.Lens' TransitGatewayMulticastDeregisteredGroupSources (Lude.Maybe [Lude.Text])
tgmdgsDeregisteredNetworkInterfaceIds = Lens.lens (deregisteredNetworkInterfaceIds :: TransitGatewayMulticastDeregisteredGroupSources -> Lude.Maybe [Lude.Text]) (\s a -> s {deregisteredNetworkInterfaceIds = a} :: TransitGatewayMulticastDeregisteredGroupSources)
{-# DEPRECATED tgmdgsDeregisteredNetworkInterfaceIds "Use generic-lens or generic-optics with 'deregisteredNetworkInterfaceIds' instead." #-}

-- | The ID of the transit gateway multicast domain.
--
-- /Note:/ Consider using 'transitGatewayMulticastDomainId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tgmdgsTransitGatewayMulticastDomainId :: Lens.Lens' TransitGatewayMulticastDeregisteredGroupSources (Lude.Maybe Lude.Text)
tgmdgsTransitGatewayMulticastDomainId = Lens.lens (transitGatewayMulticastDomainId :: TransitGatewayMulticastDeregisteredGroupSources -> Lude.Maybe Lude.Text) (\s a -> s {transitGatewayMulticastDomainId = a} :: TransitGatewayMulticastDeregisteredGroupSources)
{-# DEPRECATED tgmdgsTransitGatewayMulticastDomainId "Use generic-lens or generic-optics with 'transitGatewayMulticastDomainId' instead." #-}

-- | The IP address assigned to the transit gateway multicast group.
--
-- /Note:/ Consider using 'groupIPAddress' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tgmdgsGroupIPAddress :: Lens.Lens' TransitGatewayMulticastDeregisteredGroupSources (Lude.Maybe Lude.Text)
tgmdgsGroupIPAddress = Lens.lens (groupIPAddress :: TransitGatewayMulticastDeregisteredGroupSources -> Lude.Maybe Lude.Text) (\s a -> s {groupIPAddress = a} :: TransitGatewayMulticastDeregisteredGroupSources)
{-# DEPRECATED tgmdgsGroupIPAddress "Use generic-lens or generic-optics with 'groupIPAddress' instead." #-}

instance
  Lude.FromXML
    TransitGatewayMulticastDeregisteredGroupSources
  where
  parseXML x =
    TransitGatewayMulticastDeregisteredGroupSources'
      Lude.<$> ( x Lude..@? "deregisteredNetworkInterfaceIds" Lude..!@ Lude.mempty
                   Lude.>>= Lude.may (Lude.parseXMLList "item")
               )
      Lude.<*> (x Lude..@? "transitGatewayMulticastDomainId")
      Lude.<*> (x Lude..@? "groupIpAddress")