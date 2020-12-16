{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.ConnectionInput
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.ConnectionInput
  ( ConnectionInput (..),

    -- * Smart constructor
    mkConnectionInput,

    -- * Lenses
    ciConnectionProperties,
    ciMatchCriteria,
    ciPhysicalConnectionRequirements,
    ciName,
    ciDescription,
    ciConnectionType,
  )
where

import Network.AWS.Glue.Types.ConnectionPropertyKey
import Network.AWS.Glue.Types.ConnectionType
import Network.AWS.Glue.Types.PhysicalConnectionRequirements
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | A structure that is used to specify a connection to create or update.
--
-- /See:/ 'mkConnectionInput' smart constructor.
data ConnectionInput = ConnectionInput'
  { -- | These key-value pairs define parameters for the connection.
    connectionProperties :: Lude.HashMap ConnectionPropertyKey (Lude.Text),
    -- | A list of criteria that can be used in selecting this connection.
    matchCriteria :: Lude.Maybe [Lude.Text],
    -- | A map of physical connection requirements, such as virtual private cloud (VPC) and @SecurityGroup@ , that are needed to successfully make this connection.
    physicalConnectionRequirements :: Lude.Maybe PhysicalConnectionRequirements,
    -- | The name of the connection.
    name :: Lude.Text,
    -- | The description of the connection.
    description :: Lude.Maybe Lude.Text,
    -- | The type of the connection. Currently, these types are supported:
    --
    --
    --     * @JDBC@ - Designates a connection to a database through Java Database Connectivity (JDBC).
    --
    --
    --     * @KAFKA@ - Designates a connection to an Apache Kafka streaming platform.
    --
    --
    --     * @MONGODB@ - Designates a connection to a MongoDB document database.
    --
    --
    --     * @NETWORK@ - Designates a network connection to a data source within an Amazon Virtual Private Cloud environment (Amazon VPC).
    --
    --
    -- SFTP is not supported.
    connectionType :: ConnectionType
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ConnectionInput' with the minimum fields required to make a request.
--
-- * 'connectionProperties' - These key-value pairs define parameters for the connection.
-- * 'matchCriteria' - A list of criteria that can be used in selecting this connection.
-- * 'physicalConnectionRequirements' - A map of physical connection requirements, such as virtual private cloud (VPC) and @SecurityGroup@ , that are needed to successfully make this connection.
-- * 'name' - The name of the connection.
-- * 'description' - The description of the connection.
-- * 'connectionType' - The type of the connection. Currently, these types are supported:
--
--
--     * @JDBC@ - Designates a connection to a database through Java Database Connectivity (JDBC).
--
--
--     * @KAFKA@ - Designates a connection to an Apache Kafka streaming platform.
--
--
--     * @MONGODB@ - Designates a connection to a MongoDB document database.
--
--
--     * @NETWORK@ - Designates a network connection to a data source within an Amazon Virtual Private Cloud environment (Amazon VPC).
--
--
-- SFTP is not supported.
mkConnectionInput ::
  -- | 'name'
  Lude.Text ->
  -- | 'connectionType'
  ConnectionType ->
  ConnectionInput
mkConnectionInput pName_ pConnectionType_ =
  ConnectionInput'
    { connectionProperties = Lude.mempty,
      matchCriteria = Lude.Nothing,
      physicalConnectionRequirements = Lude.Nothing,
      name = pName_,
      description = Lude.Nothing,
      connectionType = pConnectionType_
    }

-- | These key-value pairs define parameters for the connection.
--
-- /Note:/ Consider using 'connectionProperties' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ciConnectionProperties :: Lens.Lens' ConnectionInput (Lude.HashMap ConnectionPropertyKey (Lude.Text))
ciConnectionProperties = Lens.lens (connectionProperties :: ConnectionInput -> Lude.HashMap ConnectionPropertyKey (Lude.Text)) (\s a -> s {connectionProperties = a} :: ConnectionInput)
{-# DEPRECATED ciConnectionProperties "Use generic-lens or generic-optics with 'connectionProperties' instead." #-}

-- | A list of criteria that can be used in selecting this connection.
--
-- /Note:/ Consider using 'matchCriteria' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ciMatchCriteria :: Lens.Lens' ConnectionInput (Lude.Maybe [Lude.Text])
ciMatchCriteria = Lens.lens (matchCriteria :: ConnectionInput -> Lude.Maybe [Lude.Text]) (\s a -> s {matchCriteria = a} :: ConnectionInput)
{-# DEPRECATED ciMatchCriteria "Use generic-lens or generic-optics with 'matchCriteria' instead." #-}

-- | A map of physical connection requirements, such as virtual private cloud (VPC) and @SecurityGroup@ , that are needed to successfully make this connection.
--
-- /Note:/ Consider using 'physicalConnectionRequirements' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ciPhysicalConnectionRequirements :: Lens.Lens' ConnectionInput (Lude.Maybe PhysicalConnectionRequirements)
ciPhysicalConnectionRequirements = Lens.lens (physicalConnectionRequirements :: ConnectionInput -> Lude.Maybe PhysicalConnectionRequirements) (\s a -> s {physicalConnectionRequirements = a} :: ConnectionInput)
{-# DEPRECATED ciPhysicalConnectionRequirements "Use generic-lens or generic-optics with 'physicalConnectionRequirements' instead." #-}

-- | The name of the connection.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ciName :: Lens.Lens' ConnectionInput Lude.Text
ciName = Lens.lens (name :: ConnectionInput -> Lude.Text) (\s a -> s {name = a} :: ConnectionInput)
{-# DEPRECATED ciName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The description of the connection.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ciDescription :: Lens.Lens' ConnectionInput (Lude.Maybe Lude.Text)
ciDescription = Lens.lens (description :: ConnectionInput -> Lude.Maybe Lude.Text) (\s a -> s {description = a} :: ConnectionInput)
{-# DEPRECATED ciDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | The type of the connection. Currently, these types are supported:
--
--
--     * @JDBC@ - Designates a connection to a database through Java Database Connectivity (JDBC).
--
--
--     * @KAFKA@ - Designates a connection to an Apache Kafka streaming platform.
--
--
--     * @MONGODB@ - Designates a connection to a MongoDB document database.
--
--
--     * @NETWORK@ - Designates a network connection to a data source within an Amazon Virtual Private Cloud environment (Amazon VPC).
--
--
-- SFTP is not supported.
--
-- /Note:/ Consider using 'connectionType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ciConnectionType :: Lens.Lens' ConnectionInput ConnectionType
ciConnectionType = Lens.lens (connectionType :: ConnectionInput -> ConnectionType) (\s a -> s {connectionType = a} :: ConnectionInput)
{-# DEPRECATED ciConnectionType "Use generic-lens or generic-optics with 'connectionType' instead." #-}

instance Lude.ToJSON ConnectionInput where
  toJSON ConnectionInput' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("ConnectionProperties" Lude..= connectionProperties),
            ("MatchCriteria" Lude..=) Lude.<$> matchCriteria,
            ("PhysicalConnectionRequirements" Lude..=)
              Lude.<$> physicalConnectionRequirements,
            Lude.Just ("Name" Lude..= name),
            ("Description" Lude..=) Lude.<$> description,
            Lude.Just ("ConnectionType" Lude..= connectionType)
          ]
      )