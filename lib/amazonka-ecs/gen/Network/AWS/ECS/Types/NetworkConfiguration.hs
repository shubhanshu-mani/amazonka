{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.NetworkConfiguration
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.NetworkConfiguration
  ( NetworkConfiguration (..),

    -- * Smart constructor
    mkNetworkConfiguration,

    -- * Lenses
    ncAwsvpcConfiguration,
  )
where

import Network.AWS.ECS.Types.AWSVPCConfiguration
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | An object representing the network configuration for a task or service.
--
-- /See:/ 'mkNetworkConfiguration' smart constructor.
newtype NetworkConfiguration = NetworkConfiguration'
  { -- | The VPC subnets and security groups associated with a task.
    awsvpcConfiguration :: Lude.Maybe AWSVPCConfiguration
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'NetworkConfiguration' with the minimum fields required to make a request.
--
-- * 'awsvpcConfiguration' - The VPC subnets and security groups associated with a task.
mkNetworkConfiguration ::
  NetworkConfiguration
mkNetworkConfiguration =
  NetworkConfiguration' {awsvpcConfiguration = Lude.Nothing}

-- | The VPC subnets and security groups associated with a task.
--
-- /Note:/ Consider using 'awsvpcConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ncAwsvpcConfiguration :: Lens.Lens' NetworkConfiguration (Lude.Maybe AWSVPCConfiguration)
ncAwsvpcConfiguration = Lens.lens (awsvpcConfiguration :: NetworkConfiguration -> Lude.Maybe AWSVPCConfiguration) (\s a -> s {awsvpcConfiguration = a} :: NetworkConfiguration)
{-# DEPRECATED ncAwsvpcConfiguration "Use generic-lens or generic-optics with 'awsvpcConfiguration' instead." #-}

instance Lude.FromJSON NetworkConfiguration where
  parseJSON =
    Lude.withObject
      "NetworkConfiguration"
      ( \x ->
          NetworkConfiguration' Lude.<$> (x Lude..:? "awsvpcConfiguration")
      )

instance Lude.ToJSON NetworkConfiguration where
  toJSON NetworkConfiguration' {..} =
    Lude.object
      ( Lude.catMaybes
          [("awsvpcConfiguration" Lude..=) Lude.<$> awsvpcConfiguration]
      )