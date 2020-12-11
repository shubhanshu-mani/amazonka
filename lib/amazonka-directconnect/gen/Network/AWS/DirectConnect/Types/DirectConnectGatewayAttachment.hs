-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.Types.DirectConnectGatewayAttachment
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.DirectConnectGatewayAttachment
  ( DirectConnectGatewayAttachment (..),

    -- * Smart constructor
    mkDirectConnectGatewayAttachment,

    -- * Lenses
    dDirectConnectGatewayId,
    dAttachmentState,
    dStateChangeError,
    dVirtualInterfaceRegion,
    dVirtualInterfaceOwnerAccount,
    dVirtualInterfaceId,
    dAttachmentType,
  )
where

import Network.AWS.DirectConnect.Types.DirectConnectGatewayAttachmentState
import Network.AWS.DirectConnect.Types.DirectConnectGatewayAttachmentType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Information about an attachment between a Direct Connect gateway and a virtual interface.
--
-- /See:/ 'mkDirectConnectGatewayAttachment' smart constructor.
data DirectConnectGatewayAttachment = DirectConnectGatewayAttachment'
  { directConnectGatewayId ::
      Lude.Maybe Lude.Text,
    attachmentState ::
      Lude.Maybe
        DirectConnectGatewayAttachmentState,
    stateChangeError ::
      Lude.Maybe Lude.Text,
    virtualInterfaceRegion ::
      Lude.Maybe Lude.Text,
    virtualInterfaceOwnerAccount ::
      Lude.Maybe Lude.Text,
    virtualInterfaceId ::
      Lude.Maybe Lude.Text,
    attachmentType ::
      Lude.Maybe
        DirectConnectGatewayAttachmentType
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DirectConnectGatewayAttachment' with the minimum fields required to make a request.
--
-- * 'attachmentState' - The state of the attachment. The following are the possible values:
--
--
--     * @attaching@ : The initial state after a virtual interface is created using the Direct Connect gateway.
--
--
--     * @attached@ : The Direct Connect gateway and virtual interface are attached and ready to pass traffic.
--
--
--     * @detaching@ : The initial state after calling 'DeleteVirtualInterface' .
--
--
--     * @detached@ : The virtual interface is detached from the Direct Connect gateway. Traffic flow between the Direct Connect gateway and virtual interface is stopped.
--
--
-- * 'attachmentType' - The type of attachment.
-- * 'directConnectGatewayId' - The ID of the Direct Connect gateway.
-- * 'stateChangeError' - The error message if the state of an object failed to advance.
-- * 'virtualInterfaceId' - The ID of the virtual interface.
-- * 'virtualInterfaceOwnerAccount' - The ID of the AWS account that owns the virtual interface.
-- * 'virtualInterfaceRegion' - The AWS Region where the virtual interface is located.
mkDirectConnectGatewayAttachment ::
  DirectConnectGatewayAttachment
mkDirectConnectGatewayAttachment =
  DirectConnectGatewayAttachment'
    { directConnectGatewayId =
        Lude.Nothing,
      attachmentState = Lude.Nothing,
      stateChangeError = Lude.Nothing,
      virtualInterfaceRegion = Lude.Nothing,
      virtualInterfaceOwnerAccount = Lude.Nothing,
      virtualInterfaceId = Lude.Nothing,
      attachmentType = Lude.Nothing
    }

-- | The ID of the Direct Connect gateway.
--
-- /Note:/ Consider using 'directConnectGatewayId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dDirectConnectGatewayId :: Lens.Lens' DirectConnectGatewayAttachment (Lude.Maybe Lude.Text)
dDirectConnectGatewayId = Lens.lens (directConnectGatewayId :: DirectConnectGatewayAttachment -> Lude.Maybe Lude.Text) (\s a -> s {directConnectGatewayId = a} :: DirectConnectGatewayAttachment)
{-# DEPRECATED dDirectConnectGatewayId "Use generic-lens or generic-optics with 'directConnectGatewayId' instead." #-}

-- | The state of the attachment. The following are the possible values:
--
--
--     * @attaching@ : The initial state after a virtual interface is created using the Direct Connect gateway.
--
--
--     * @attached@ : The Direct Connect gateway and virtual interface are attached and ready to pass traffic.
--
--
--     * @detaching@ : The initial state after calling 'DeleteVirtualInterface' .
--
--
--     * @detached@ : The virtual interface is detached from the Direct Connect gateway. Traffic flow between the Direct Connect gateway and virtual interface is stopped.
--
--
--
-- /Note:/ Consider using 'attachmentState' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dAttachmentState :: Lens.Lens' DirectConnectGatewayAttachment (Lude.Maybe DirectConnectGatewayAttachmentState)
dAttachmentState = Lens.lens (attachmentState :: DirectConnectGatewayAttachment -> Lude.Maybe DirectConnectGatewayAttachmentState) (\s a -> s {attachmentState = a} :: DirectConnectGatewayAttachment)
{-# DEPRECATED dAttachmentState "Use generic-lens or generic-optics with 'attachmentState' instead." #-}

-- | The error message if the state of an object failed to advance.
--
-- /Note:/ Consider using 'stateChangeError' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dStateChangeError :: Lens.Lens' DirectConnectGatewayAttachment (Lude.Maybe Lude.Text)
dStateChangeError = Lens.lens (stateChangeError :: DirectConnectGatewayAttachment -> Lude.Maybe Lude.Text) (\s a -> s {stateChangeError = a} :: DirectConnectGatewayAttachment)
{-# DEPRECATED dStateChangeError "Use generic-lens or generic-optics with 'stateChangeError' instead." #-}

-- | The AWS Region where the virtual interface is located.
--
-- /Note:/ Consider using 'virtualInterfaceRegion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dVirtualInterfaceRegion :: Lens.Lens' DirectConnectGatewayAttachment (Lude.Maybe Lude.Text)
dVirtualInterfaceRegion = Lens.lens (virtualInterfaceRegion :: DirectConnectGatewayAttachment -> Lude.Maybe Lude.Text) (\s a -> s {virtualInterfaceRegion = a} :: DirectConnectGatewayAttachment)
{-# DEPRECATED dVirtualInterfaceRegion "Use generic-lens or generic-optics with 'virtualInterfaceRegion' instead." #-}

-- | The ID of the AWS account that owns the virtual interface.
--
-- /Note:/ Consider using 'virtualInterfaceOwnerAccount' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dVirtualInterfaceOwnerAccount :: Lens.Lens' DirectConnectGatewayAttachment (Lude.Maybe Lude.Text)
dVirtualInterfaceOwnerAccount = Lens.lens (virtualInterfaceOwnerAccount :: DirectConnectGatewayAttachment -> Lude.Maybe Lude.Text) (\s a -> s {virtualInterfaceOwnerAccount = a} :: DirectConnectGatewayAttachment)
{-# DEPRECATED dVirtualInterfaceOwnerAccount "Use generic-lens or generic-optics with 'virtualInterfaceOwnerAccount' instead." #-}

-- | The ID of the virtual interface.
--
-- /Note:/ Consider using 'virtualInterfaceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dVirtualInterfaceId :: Lens.Lens' DirectConnectGatewayAttachment (Lude.Maybe Lude.Text)
dVirtualInterfaceId = Lens.lens (virtualInterfaceId :: DirectConnectGatewayAttachment -> Lude.Maybe Lude.Text) (\s a -> s {virtualInterfaceId = a} :: DirectConnectGatewayAttachment)
{-# DEPRECATED dVirtualInterfaceId "Use generic-lens or generic-optics with 'virtualInterfaceId' instead." #-}

-- | The type of attachment.
--
-- /Note:/ Consider using 'attachmentType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dAttachmentType :: Lens.Lens' DirectConnectGatewayAttachment (Lude.Maybe DirectConnectGatewayAttachmentType)
dAttachmentType = Lens.lens (attachmentType :: DirectConnectGatewayAttachment -> Lude.Maybe DirectConnectGatewayAttachmentType) (\s a -> s {attachmentType = a} :: DirectConnectGatewayAttachment)
{-# DEPRECATED dAttachmentType "Use generic-lens or generic-optics with 'attachmentType' instead." #-}

instance Lude.FromJSON DirectConnectGatewayAttachment where
  parseJSON =
    Lude.withObject
      "DirectConnectGatewayAttachment"
      ( \x ->
          DirectConnectGatewayAttachment'
            Lude.<$> (x Lude..:? "directConnectGatewayId")
            Lude.<*> (x Lude..:? "attachmentState")
            Lude.<*> (x Lude..:? "stateChangeError")
            Lude.<*> (x Lude..:? "virtualInterfaceRegion")
            Lude.<*> (x Lude..:? "virtualInterfaceOwnerAccount")
            Lude.<*> (x Lude..:? "virtualInterfaceId")
            Lude.<*> (x Lude..:? "attachmentType")
      )
