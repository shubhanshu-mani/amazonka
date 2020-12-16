{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.StackResource
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackResource
  ( StackResource (..),

    -- * Smart constructor
    mkStackResource,

    -- * Lenses
    srLogicalResourceId,
    srPhysicalResourceId,
    srResourceType,
    srResourceStatusReason,
    srResourceStatus,
    srDriftInformation,
    srModuleInfo,
    srStackId,
    srDescription,
    srTimestamp,
    srStackName,
  )
where

import Network.AWS.CloudFormation.Types.ModuleInfo
import Network.AWS.CloudFormation.Types.ResourceStatus
import Network.AWS.CloudFormation.Types.StackResourceDriftInformation
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | The StackResource data type.
--
-- /See:/ 'mkStackResource' smart constructor.
data StackResource = StackResource'
  { -- | The logical name of the resource specified in the template.
    logicalResourceId :: Lude.Text,
    -- | The name or unique identifier that corresponds to a physical instance ID of a resource supported by AWS CloudFormation.
    physicalResourceId :: Lude.Maybe Lude.Text,
    -- | Type of resource. (For more information, go to <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html AWS Resource Types Reference> in the AWS CloudFormation User Guide.)
    resourceType :: Lude.Text,
    -- | Success/failure message associated with the resource.
    resourceStatusReason :: Lude.Maybe Lude.Text,
    -- | Current status of the resource.
    resourceStatus :: ResourceStatus,
    -- | Information about whether the resource's actual configuration differs, or has /drifted/ , from its expected configuration, as defined in the stack template and any values specified as template parameters. For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html Detecting Unregulated Configuration Changes to Stacks and Resources> .
    driftInformation :: Lude.Maybe StackResourceDriftInformation,
    -- | Contains information about the module from which the resource was created, if the resource was created from a module included in the stack template.
    moduleInfo :: Lude.Maybe ModuleInfo,
    -- | Unique identifier of the stack.
    stackId :: Lude.Maybe Lude.Text,
    -- | User defined description associated with the resource.
    description :: Lude.Maybe Lude.Text,
    -- | Time the status was updated.
    timestamp :: Lude.DateTime,
    -- | The name associated with the stack.
    stackName :: Lude.Maybe Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'StackResource' with the minimum fields required to make a request.
--
-- * 'logicalResourceId' - The logical name of the resource specified in the template.
-- * 'physicalResourceId' - The name or unique identifier that corresponds to a physical instance ID of a resource supported by AWS CloudFormation.
-- * 'resourceType' - Type of resource. (For more information, go to <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html AWS Resource Types Reference> in the AWS CloudFormation User Guide.)
-- * 'resourceStatusReason' - Success/failure message associated with the resource.
-- * 'resourceStatus' - Current status of the resource.
-- * 'driftInformation' - Information about whether the resource's actual configuration differs, or has /drifted/ , from its expected configuration, as defined in the stack template and any values specified as template parameters. For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html Detecting Unregulated Configuration Changes to Stacks and Resources> .
-- * 'moduleInfo' - Contains information about the module from which the resource was created, if the resource was created from a module included in the stack template.
-- * 'stackId' - Unique identifier of the stack.
-- * 'description' - User defined description associated with the resource.
-- * 'timestamp' - Time the status was updated.
-- * 'stackName' - The name associated with the stack.
mkStackResource ::
  -- | 'logicalResourceId'
  Lude.Text ->
  -- | 'resourceType'
  Lude.Text ->
  -- | 'resourceStatus'
  ResourceStatus ->
  -- | 'timestamp'
  Lude.DateTime ->
  StackResource
mkStackResource
  pLogicalResourceId_
  pResourceType_
  pResourceStatus_
  pTimestamp_ =
    StackResource'
      { logicalResourceId = pLogicalResourceId_,
        physicalResourceId = Lude.Nothing,
        resourceType = pResourceType_,
        resourceStatusReason = Lude.Nothing,
        resourceStatus = pResourceStatus_,
        driftInformation = Lude.Nothing,
        moduleInfo = Lude.Nothing,
        stackId = Lude.Nothing,
        description = Lude.Nothing,
        timestamp = pTimestamp_,
        stackName = Lude.Nothing
      }

-- | The logical name of the resource specified in the template.
--
-- /Note:/ Consider using 'logicalResourceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srLogicalResourceId :: Lens.Lens' StackResource Lude.Text
srLogicalResourceId = Lens.lens (logicalResourceId :: StackResource -> Lude.Text) (\s a -> s {logicalResourceId = a} :: StackResource)
{-# DEPRECATED srLogicalResourceId "Use generic-lens or generic-optics with 'logicalResourceId' instead." #-}

-- | The name or unique identifier that corresponds to a physical instance ID of a resource supported by AWS CloudFormation.
--
-- /Note:/ Consider using 'physicalResourceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srPhysicalResourceId :: Lens.Lens' StackResource (Lude.Maybe Lude.Text)
srPhysicalResourceId = Lens.lens (physicalResourceId :: StackResource -> Lude.Maybe Lude.Text) (\s a -> s {physicalResourceId = a} :: StackResource)
{-# DEPRECATED srPhysicalResourceId "Use generic-lens or generic-optics with 'physicalResourceId' instead." #-}

-- | Type of resource. (For more information, go to <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html AWS Resource Types Reference> in the AWS CloudFormation User Guide.)
--
-- /Note:/ Consider using 'resourceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srResourceType :: Lens.Lens' StackResource Lude.Text
srResourceType = Lens.lens (resourceType :: StackResource -> Lude.Text) (\s a -> s {resourceType = a} :: StackResource)
{-# DEPRECATED srResourceType "Use generic-lens or generic-optics with 'resourceType' instead." #-}

-- | Success/failure message associated with the resource.
--
-- /Note:/ Consider using 'resourceStatusReason' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srResourceStatusReason :: Lens.Lens' StackResource (Lude.Maybe Lude.Text)
srResourceStatusReason = Lens.lens (resourceStatusReason :: StackResource -> Lude.Maybe Lude.Text) (\s a -> s {resourceStatusReason = a} :: StackResource)
{-# DEPRECATED srResourceStatusReason "Use generic-lens or generic-optics with 'resourceStatusReason' instead." #-}

-- | Current status of the resource.
--
-- /Note:/ Consider using 'resourceStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srResourceStatus :: Lens.Lens' StackResource ResourceStatus
srResourceStatus = Lens.lens (resourceStatus :: StackResource -> ResourceStatus) (\s a -> s {resourceStatus = a} :: StackResource)
{-# DEPRECATED srResourceStatus "Use generic-lens or generic-optics with 'resourceStatus' instead." #-}

-- | Information about whether the resource's actual configuration differs, or has /drifted/ , from its expected configuration, as defined in the stack template and any values specified as template parameters. For more information, see <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html Detecting Unregulated Configuration Changes to Stacks and Resources> .
--
-- /Note:/ Consider using 'driftInformation' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srDriftInformation :: Lens.Lens' StackResource (Lude.Maybe StackResourceDriftInformation)
srDriftInformation = Lens.lens (driftInformation :: StackResource -> Lude.Maybe StackResourceDriftInformation) (\s a -> s {driftInformation = a} :: StackResource)
{-# DEPRECATED srDriftInformation "Use generic-lens or generic-optics with 'driftInformation' instead." #-}

-- | Contains information about the module from which the resource was created, if the resource was created from a module included in the stack template.
--
-- /Note:/ Consider using 'moduleInfo' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srModuleInfo :: Lens.Lens' StackResource (Lude.Maybe ModuleInfo)
srModuleInfo = Lens.lens (moduleInfo :: StackResource -> Lude.Maybe ModuleInfo) (\s a -> s {moduleInfo = a} :: StackResource)
{-# DEPRECATED srModuleInfo "Use generic-lens or generic-optics with 'moduleInfo' instead." #-}

-- | Unique identifier of the stack.
--
-- /Note:/ Consider using 'stackId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srStackId :: Lens.Lens' StackResource (Lude.Maybe Lude.Text)
srStackId = Lens.lens (stackId :: StackResource -> Lude.Maybe Lude.Text) (\s a -> s {stackId = a} :: StackResource)
{-# DEPRECATED srStackId "Use generic-lens or generic-optics with 'stackId' instead." #-}

-- | User defined description associated with the resource.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srDescription :: Lens.Lens' StackResource (Lude.Maybe Lude.Text)
srDescription = Lens.lens (description :: StackResource -> Lude.Maybe Lude.Text) (\s a -> s {description = a} :: StackResource)
{-# DEPRECATED srDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | Time the status was updated.
--
-- /Note:/ Consider using 'timestamp' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srTimestamp :: Lens.Lens' StackResource Lude.DateTime
srTimestamp = Lens.lens (timestamp :: StackResource -> Lude.DateTime) (\s a -> s {timestamp = a} :: StackResource)
{-# DEPRECATED srTimestamp "Use generic-lens or generic-optics with 'timestamp' instead." #-}

-- | The name associated with the stack.
--
-- /Note:/ Consider using 'stackName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srStackName :: Lens.Lens' StackResource (Lude.Maybe Lude.Text)
srStackName = Lens.lens (stackName :: StackResource -> Lude.Maybe Lude.Text) (\s a -> s {stackName = a} :: StackResource)
{-# DEPRECATED srStackName "Use generic-lens or generic-optics with 'stackName' instead." #-}

instance Lude.FromXML StackResource where
  parseXML x =
    StackResource'
      Lude.<$> (x Lude..@ "LogicalResourceId")
      Lude.<*> (x Lude..@? "PhysicalResourceId")
      Lude.<*> (x Lude..@ "ResourceType")
      Lude.<*> (x Lude..@? "ResourceStatusReason")
      Lude.<*> (x Lude..@ "ResourceStatus")
      Lude.<*> (x Lude..@? "DriftInformation")
      Lude.<*> (x Lude..@? "ModuleInfo")
      Lude.<*> (x Lude..@? "StackId")
      Lude.<*> (x Lude..@? "Description")
      Lude.<*> (x Lude..@ "Timestamp")
      Lude.<*> (x Lude..@? "StackName")