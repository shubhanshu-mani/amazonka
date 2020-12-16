{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.VPCSecurityGroupMembership
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.VPCSecurityGroupMembership
  ( VPCSecurityGroupMembership (..),

    -- * Smart constructor
    mkVPCSecurityGroupMembership,

    -- * Lenses
    vsgmStatus,
    vsgmVPCSecurityGroupId,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Describes the status of a security group associated with the virtual private cloud (VPC) hosting your replication and DB instances.
--
-- /See:/ 'mkVPCSecurityGroupMembership' smart constructor.
data VPCSecurityGroupMembership = VPCSecurityGroupMembership'
  { -- | The status of the VPC security group.
    status :: Lude.Maybe Lude.Text,
    -- | The VPC security group ID.
    vpcSecurityGroupId :: Lude.Maybe Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'VPCSecurityGroupMembership' with the minimum fields required to make a request.
--
-- * 'status' - The status of the VPC security group.
-- * 'vpcSecurityGroupId' - The VPC security group ID.
mkVPCSecurityGroupMembership ::
  VPCSecurityGroupMembership
mkVPCSecurityGroupMembership =
  VPCSecurityGroupMembership'
    { status = Lude.Nothing,
      vpcSecurityGroupId = Lude.Nothing
    }

-- | The status of the VPC security group.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vsgmStatus :: Lens.Lens' VPCSecurityGroupMembership (Lude.Maybe Lude.Text)
vsgmStatus = Lens.lens (status :: VPCSecurityGroupMembership -> Lude.Maybe Lude.Text) (\s a -> s {status = a} :: VPCSecurityGroupMembership)
{-# DEPRECATED vsgmStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | The VPC security group ID.
--
-- /Note:/ Consider using 'vpcSecurityGroupId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vsgmVPCSecurityGroupId :: Lens.Lens' VPCSecurityGroupMembership (Lude.Maybe Lude.Text)
vsgmVPCSecurityGroupId = Lens.lens (vpcSecurityGroupId :: VPCSecurityGroupMembership -> Lude.Maybe Lude.Text) (\s a -> s {vpcSecurityGroupId = a} :: VPCSecurityGroupMembership)
{-# DEPRECATED vsgmVPCSecurityGroupId "Use generic-lens or generic-optics with 'vpcSecurityGroupId' instead." #-}

instance Lude.FromJSON VPCSecurityGroupMembership where
  parseJSON =
    Lude.withObject
      "VPCSecurityGroupMembership"
      ( \x ->
          VPCSecurityGroupMembership'
            Lude.<$> (x Lude..:? "Status") Lude.<*> (x Lude..:? "VpcSecurityGroupId")
      )