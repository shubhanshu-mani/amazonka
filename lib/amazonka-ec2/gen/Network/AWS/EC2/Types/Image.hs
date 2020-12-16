{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.Image
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.Image
  ( Image (..),

    -- * Smart constructor
    mkImage,

    -- * Lenses
    iState,
    iVirtualizationType,
    iHypervisor,
    iPlatform,
    iImageLocation,
    iPlatformDetails,
    iEnaSupport,
    iImageOwnerAlias,
    iUsageOperation,
    iRAMDiskId,
    iKernelId,
    iRootDeviceName,
    iSRIOVNetSupport,
    iOwnerId,
    iImageType,
    iName,
    iImageId,
    iArchitecture,
    iCreationDate,
    iProductCodes,
    iStateReason,
    iRootDeviceType,
    iDescription,
    iBlockDeviceMappings,
    iTags,
    iPublic,
  )
where

import Network.AWS.EC2.Types.ArchitectureValues
import Network.AWS.EC2.Types.BlockDeviceMapping
import Network.AWS.EC2.Types.DeviceType
import Network.AWS.EC2.Types.HypervisorType
import Network.AWS.EC2.Types.ImageState
import Network.AWS.EC2.Types.ImageTypeValues
import Network.AWS.EC2.Types.PlatformValues
import Network.AWS.EC2.Types.ProductCode
import Network.AWS.EC2.Types.StateReason
import Network.AWS.EC2.Types.Tag
import Network.AWS.EC2.Types.VirtualizationType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Describes an image.
--
-- /See:/ 'mkImage' smart constructor.
data Image = Image'
  { -- | The current state of the AMI. If the state is @available@ , the image is successfully registered and can be used to launch an instance.
    state :: ImageState,
    -- | The type of virtualization of the AMI.
    virtualizationType :: VirtualizationType,
    -- | The hypervisor type of the image.
    hypervisor :: HypervisorType,
    -- | This value is set to @windows@ for Windows AMIs; otherwise, it is blank.
    platform :: Lude.Maybe PlatformValues,
    -- | The location of the AMI.
    imageLocation :: Lude.Text,
    -- | The platform details associated with the billing code of the AMI. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html Obtaining Billing Information> in the /Amazon Elastic Compute Cloud User Guide/ .
    platformDetails :: Lude.Maybe Lude.Text,
    -- | Specifies whether enhanced networking with ENA is enabled.
    enaSupport :: Lude.Maybe Lude.Bool,
    -- | The AWS account alias (for example, @amazon@ , @self@ ) or the AWS account ID of the AMI owner.
    imageOwnerAlias :: Lude.Maybe Lude.Text,
    -- | The operation of the Amazon EC2 instance and the billing code that is associated with the AMI. @usageOperation@ corresponds to the <https://docs.aws.amazon.com/cur/latest/userguide/Lineitem-columns.html#Lineitem-details-O-Operation lineitem/Operation> column on your AWS Cost and Usage Report and in the <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/price-changes.html AWS Price List API> . For the list of @UsageOperation@ codes, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html#billing-info Platform Details and Usage Operation Billing Codes> in the /Amazon Elastic Compute Cloud User Guide/ .
    usageOperation :: Lude.Maybe Lude.Text,
    -- | The RAM disk associated with the image, if any. Only applicable for machine images.
    ramdiskId :: Lude.Maybe Lude.Text,
    -- | The kernel associated with the image, if any. Only applicable for machine images.
    kernelId :: Lude.Maybe Lude.Text,
    -- | The device name of the root device volume (for example, @/dev/sda1@ ).
    rootDeviceName :: Lude.Maybe Lude.Text,
    -- | Specifies whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.
    sriovNetSupport :: Lude.Maybe Lude.Text,
    -- | The AWS account ID of the image owner.
    ownerId :: Lude.Text,
    -- | The type of image.
    imageType :: ImageTypeValues,
    -- | The name of the AMI that was provided during image creation.
    name :: Lude.Maybe Lude.Text,
    -- | The ID of the AMI.
    imageId :: Lude.Text,
    -- | The architecture of the image.
    architecture :: ArchitectureValues,
    -- | The date and time the image was created.
    creationDate :: Lude.Maybe Lude.Text,
    -- | Any product codes associated with the AMI.
    productCodes :: Lude.Maybe [ProductCode],
    -- | The reason for the state change.
    stateReason :: Lude.Maybe StateReason,
    -- | The type of root device used by the AMI. The AMI can use an EBS volume or an instance store volume.
    rootDeviceType :: DeviceType,
    -- | The description of the AMI that was provided during image creation.
    description :: Lude.Maybe Lude.Text,
    -- | Any block device mapping entries.
    blockDeviceMappings :: Lude.Maybe [BlockDeviceMapping],
    -- | Any tags assigned to the image.
    tags :: Lude.Maybe [Tag],
    -- | Indicates whether the image has public launch permissions. The value is @true@ if this image has public launch permissions or @false@ if it has only implicit and explicit launch permissions.
    public :: Lude.Bool
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
--
-- * 'state' - The current state of the AMI. If the state is @available@ , the image is successfully registered and can be used to launch an instance.
-- * 'virtualizationType' - The type of virtualization of the AMI.
-- * 'hypervisor' - The hypervisor type of the image.
-- * 'platform' - This value is set to @windows@ for Windows AMIs; otherwise, it is blank.
-- * 'imageLocation' - The location of the AMI.
-- * 'platformDetails' - The platform details associated with the billing code of the AMI. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html Obtaining Billing Information> in the /Amazon Elastic Compute Cloud User Guide/ .
-- * 'enaSupport' - Specifies whether enhanced networking with ENA is enabled.
-- * 'imageOwnerAlias' - The AWS account alias (for example, @amazon@ , @self@ ) or the AWS account ID of the AMI owner.
-- * 'usageOperation' - The operation of the Amazon EC2 instance and the billing code that is associated with the AMI. @usageOperation@ corresponds to the <https://docs.aws.amazon.com/cur/latest/userguide/Lineitem-columns.html#Lineitem-details-O-Operation lineitem/Operation> column on your AWS Cost and Usage Report and in the <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/price-changes.html AWS Price List API> . For the list of @UsageOperation@ codes, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html#billing-info Platform Details and Usage Operation Billing Codes> in the /Amazon Elastic Compute Cloud User Guide/ .
-- * 'ramdiskId' - The RAM disk associated with the image, if any. Only applicable for machine images.
-- * 'kernelId' - The kernel associated with the image, if any. Only applicable for machine images.
-- * 'rootDeviceName' - The device name of the root device volume (for example, @/dev/sda1@ ).
-- * 'sriovNetSupport' - Specifies whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.
-- * 'ownerId' - The AWS account ID of the image owner.
-- * 'imageType' - The type of image.
-- * 'name' - The name of the AMI that was provided during image creation.
-- * 'imageId' - The ID of the AMI.
-- * 'architecture' - The architecture of the image.
-- * 'creationDate' - The date and time the image was created.
-- * 'productCodes' - Any product codes associated with the AMI.
-- * 'stateReason' - The reason for the state change.
-- * 'rootDeviceType' - The type of root device used by the AMI. The AMI can use an EBS volume or an instance store volume.
-- * 'description' - The description of the AMI that was provided during image creation.
-- * 'blockDeviceMappings' - Any block device mapping entries.
-- * 'tags' - Any tags assigned to the image.
-- * 'public' - Indicates whether the image has public launch permissions. The value is @true@ if this image has public launch permissions or @false@ if it has only implicit and explicit launch permissions.
mkImage ::
  -- | 'state'
  ImageState ->
  -- | 'virtualizationType'
  VirtualizationType ->
  -- | 'hypervisor'
  HypervisorType ->
  -- | 'imageLocation'
  Lude.Text ->
  -- | 'ownerId'
  Lude.Text ->
  -- | 'imageType'
  ImageTypeValues ->
  -- | 'imageId'
  Lude.Text ->
  -- | 'architecture'
  ArchitectureValues ->
  -- | 'rootDeviceType'
  DeviceType ->
  -- | 'public'
  Lude.Bool ->
  Image
mkImage
  pState_
  pVirtualizationType_
  pHypervisor_
  pImageLocation_
  pOwnerId_
  pImageType_
  pImageId_
  pArchitecture_
  pRootDeviceType_
  pPublic_ =
    Image'
      { state = pState_,
        virtualizationType = pVirtualizationType_,
        hypervisor = pHypervisor_,
        platform = Lude.Nothing,
        imageLocation = pImageLocation_,
        platformDetails = Lude.Nothing,
        enaSupport = Lude.Nothing,
        imageOwnerAlias = Lude.Nothing,
        usageOperation = Lude.Nothing,
        ramdiskId = Lude.Nothing,
        kernelId = Lude.Nothing,
        rootDeviceName = Lude.Nothing,
        sriovNetSupport = Lude.Nothing,
        ownerId = pOwnerId_,
        imageType = pImageType_,
        name = Lude.Nothing,
        imageId = pImageId_,
        architecture = pArchitecture_,
        creationDate = Lude.Nothing,
        productCodes = Lude.Nothing,
        stateReason = Lude.Nothing,
        rootDeviceType = pRootDeviceType_,
        description = Lude.Nothing,
        blockDeviceMappings = Lude.Nothing,
        tags = Lude.Nothing,
        public = pPublic_
      }

-- | The current state of the AMI. If the state is @available@ , the image is successfully registered and can be used to launch an instance.
--
-- /Note:/ Consider using 'state' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iState :: Lens.Lens' Image ImageState
iState = Lens.lens (state :: Image -> ImageState) (\s a -> s {state = a} :: Image)
{-# DEPRECATED iState "Use generic-lens or generic-optics with 'state' instead." #-}

-- | The type of virtualization of the AMI.
--
-- /Note:/ Consider using 'virtualizationType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iVirtualizationType :: Lens.Lens' Image VirtualizationType
iVirtualizationType = Lens.lens (virtualizationType :: Image -> VirtualizationType) (\s a -> s {virtualizationType = a} :: Image)
{-# DEPRECATED iVirtualizationType "Use generic-lens or generic-optics with 'virtualizationType' instead." #-}

-- | The hypervisor type of the image.
--
-- /Note:/ Consider using 'hypervisor' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iHypervisor :: Lens.Lens' Image HypervisorType
iHypervisor = Lens.lens (hypervisor :: Image -> HypervisorType) (\s a -> s {hypervisor = a} :: Image)
{-# DEPRECATED iHypervisor "Use generic-lens or generic-optics with 'hypervisor' instead." #-}

-- | This value is set to @windows@ for Windows AMIs; otherwise, it is blank.
--
-- /Note:/ Consider using 'platform' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iPlatform :: Lens.Lens' Image (Lude.Maybe PlatformValues)
iPlatform = Lens.lens (platform :: Image -> Lude.Maybe PlatformValues) (\s a -> s {platform = a} :: Image)
{-# DEPRECATED iPlatform "Use generic-lens or generic-optics with 'platform' instead." #-}

-- | The location of the AMI.
--
-- /Note:/ Consider using 'imageLocation' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iImageLocation :: Lens.Lens' Image Lude.Text
iImageLocation = Lens.lens (imageLocation :: Image -> Lude.Text) (\s a -> s {imageLocation = a} :: Image)
{-# DEPRECATED iImageLocation "Use generic-lens or generic-optics with 'imageLocation' instead." #-}

-- | The platform details associated with the billing code of the AMI. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html Obtaining Billing Information> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- /Note:/ Consider using 'platformDetails' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iPlatformDetails :: Lens.Lens' Image (Lude.Maybe Lude.Text)
iPlatformDetails = Lens.lens (platformDetails :: Image -> Lude.Maybe Lude.Text) (\s a -> s {platformDetails = a} :: Image)
{-# DEPRECATED iPlatformDetails "Use generic-lens or generic-optics with 'platformDetails' instead." #-}

-- | Specifies whether enhanced networking with ENA is enabled.
--
-- /Note:/ Consider using 'enaSupport' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iEnaSupport :: Lens.Lens' Image (Lude.Maybe Lude.Bool)
iEnaSupport = Lens.lens (enaSupport :: Image -> Lude.Maybe Lude.Bool) (\s a -> s {enaSupport = a} :: Image)
{-# DEPRECATED iEnaSupport "Use generic-lens or generic-optics with 'enaSupport' instead." #-}

-- | The AWS account alias (for example, @amazon@ , @self@ ) or the AWS account ID of the AMI owner.
--
-- /Note:/ Consider using 'imageOwnerAlias' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iImageOwnerAlias :: Lens.Lens' Image (Lude.Maybe Lude.Text)
iImageOwnerAlias = Lens.lens (imageOwnerAlias :: Image -> Lude.Maybe Lude.Text) (\s a -> s {imageOwnerAlias = a} :: Image)
{-# DEPRECATED iImageOwnerAlias "Use generic-lens or generic-optics with 'imageOwnerAlias' instead." #-}

-- | The operation of the Amazon EC2 instance and the billing code that is associated with the AMI. @usageOperation@ corresponds to the <https://docs.aws.amazon.com/cur/latest/userguide/Lineitem-columns.html#Lineitem-details-O-Operation lineitem/Operation> column on your AWS Cost and Usage Report and in the <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/price-changes.html AWS Price List API> . For the list of @UsageOperation@ codes, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html#billing-info Platform Details and Usage Operation Billing Codes> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- /Note:/ Consider using 'usageOperation' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iUsageOperation :: Lens.Lens' Image (Lude.Maybe Lude.Text)
iUsageOperation = Lens.lens (usageOperation :: Image -> Lude.Maybe Lude.Text) (\s a -> s {usageOperation = a} :: Image)
{-# DEPRECATED iUsageOperation "Use generic-lens or generic-optics with 'usageOperation' instead." #-}

-- | The RAM disk associated with the image, if any. Only applicable for machine images.
--
-- /Note:/ Consider using 'ramdiskId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iRAMDiskId :: Lens.Lens' Image (Lude.Maybe Lude.Text)
iRAMDiskId = Lens.lens (ramdiskId :: Image -> Lude.Maybe Lude.Text) (\s a -> s {ramdiskId = a} :: Image)
{-# DEPRECATED iRAMDiskId "Use generic-lens or generic-optics with 'ramdiskId' instead." #-}

-- | The kernel associated with the image, if any. Only applicable for machine images.
--
-- /Note:/ Consider using 'kernelId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iKernelId :: Lens.Lens' Image (Lude.Maybe Lude.Text)
iKernelId = Lens.lens (kernelId :: Image -> Lude.Maybe Lude.Text) (\s a -> s {kernelId = a} :: Image)
{-# DEPRECATED iKernelId "Use generic-lens or generic-optics with 'kernelId' instead." #-}

-- | The device name of the root device volume (for example, @/dev/sda1@ ).
--
-- /Note:/ Consider using 'rootDeviceName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iRootDeviceName :: Lens.Lens' Image (Lude.Maybe Lude.Text)
iRootDeviceName = Lens.lens (rootDeviceName :: Image -> Lude.Maybe Lude.Text) (\s a -> s {rootDeviceName = a} :: Image)
{-# DEPRECATED iRootDeviceName "Use generic-lens or generic-optics with 'rootDeviceName' instead." #-}

-- | Specifies whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.
--
-- /Note:/ Consider using 'sriovNetSupport' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iSRIOVNetSupport :: Lens.Lens' Image (Lude.Maybe Lude.Text)
iSRIOVNetSupport = Lens.lens (sriovNetSupport :: Image -> Lude.Maybe Lude.Text) (\s a -> s {sriovNetSupport = a} :: Image)
{-# DEPRECATED iSRIOVNetSupport "Use generic-lens or generic-optics with 'sriovNetSupport' instead." #-}

-- | The AWS account ID of the image owner.
--
-- /Note:/ Consider using 'ownerId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iOwnerId :: Lens.Lens' Image Lude.Text
iOwnerId = Lens.lens (ownerId :: Image -> Lude.Text) (\s a -> s {ownerId = a} :: Image)
{-# DEPRECATED iOwnerId "Use generic-lens or generic-optics with 'ownerId' instead." #-}

-- | The type of image.
--
-- /Note:/ Consider using 'imageType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iImageType :: Lens.Lens' Image ImageTypeValues
iImageType = Lens.lens (imageType :: Image -> ImageTypeValues) (\s a -> s {imageType = a} :: Image)
{-# DEPRECATED iImageType "Use generic-lens or generic-optics with 'imageType' instead." #-}

-- | The name of the AMI that was provided during image creation.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iName :: Lens.Lens' Image (Lude.Maybe Lude.Text)
iName = Lens.lens (name :: Image -> Lude.Maybe Lude.Text) (\s a -> s {name = a} :: Image)
{-# DEPRECATED iName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The ID of the AMI.
--
-- /Note:/ Consider using 'imageId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iImageId :: Lens.Lens' Image Lude.Text
iImageId = Lens.lens (imageId :: Image -> Lude.Text) (\s a -> s {imageId = a} :: Image)
{-# DEPRECATED iImageId "Use generic-lens or generic-optics with 'imageId' instead." #-}

-- | The architecture of the image.
--
-- /Note:/ Consider using 'architecture' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iArchitecture :: Lens.Lens' Image ArchitectureValues
iArchitecture = Lens.lens (architecture :: Image -> ArchitectureValues) (\s a -> s {architecture = a} :: Image)
{-# DEPRECATED iArchitecture "Use generic-lens or generic-optics with 'architecture' instead." #-}

-- | The date and time the image was created.
--
-- /Note:/ Consider using 'creationDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iCreationDate :: Lens.Lens' Image (Lude.Maybe Lude.Text)
iCreationDate = Lens.lens (creationDate :: Image -> Lude.Maybe Lude.Text) (\s a -> s {creationDate = a} :: Image)
{-# DEPRECATED iCreationDate "Use generic-lens or generic-optics with 'creationDate' instead." #-}

-- | Any product codes associated with the AMI.
--
-- /Note:/ Consider using 'productCodes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iProductCodes :: Lens.Lens' Image (Lude.Maybe [ProductCode])
iProductCodes = Lens.lens (productCodes :: Image -> Lude.Maybe [ProductCode]) (\s a -> s {productCodes = a} :: Image)
{-# DEPRECATED iProductCodes "Use generic-lens or generic-optics with 'productCodes' instead." #-}

-- | The reason for the state change.
--
-- /Note:/ Consider using 'stateReason' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iStateReason :: Lens.Lens' Image (Lude.Maybe StateReason)
iStateReason = Lens.lens (stateReason :: Image -> Lude.Maybe StateReason) (\s a -> s {stateReason = a} :: Image)
{-# DEPRECATED iStateReason "Use generic-lens or generic-optics with 'stateReason' instead." #-}

-- | The type of root device used by the AMI. The AMI can use an EBS volume or an instance store volume.
--
-- /Note:/ Consider using 'rootDeviceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iRootDeviceType :: Lens.Lens' Image DeviceType
iRootDeviceType = Lens.lens (rootDeviceType :: Image -> DeviceType) (\s a -> s {rootDeviceType = a} :: Image)
{-# DEPRECATED iRootDeviceType "Use generic-lens or generic-optics with 'rootDeviceType' instead." #-}

-- | The description of the AMI that was provided during image creation.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iDescription :: Lens.Lens' Image (Lude.Maybe Lude.Text)
iDescription = Lens.lens (description :: Image -> Lude.Maybe Lude.Text) (\s a -> s {description = a} :: Image)
{-# DEPRECATED iDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | Any block device mapping entries.
--
-- /Note:/ Consider using 'blockDeviceMappings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iBlockDeviceMappings :: Lens.Lens' Image (Lude.Maybe [BlockDeviceMapping])
iBlockDeviceMappings = Lens.lens (blockDeviceMappings :: Image -> Lude.Maybe [BlockDeviceMapping]) (\s a -> s {blockDeviceMappings = a} :: Image)
{-# DEPRECATED iBlockDeviceMappings "Use generic-lens or generic-optics with 'blockDeviceMappings' instead." #-}

-- | Any tags assigned to the image.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iTags :: Lens.Lens' Image (Lude.Maybe [Tag])
iTags = Lens.lens (tags :: Image -> Lude.Maybe [Tag]) (\s a -> s {tags = a} :: Image)
{-# DEPRECATED iTags "Use generic-lens or generic-optics with 'tags' instead." #-}

-- | Indicates whether the image has public launch permissions. The value is @true@ if this image has public launch permissions or @false@ if it has only implicit and explicit launch permissions.
--
-- /Note:/ Consider using 'public' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
iPublic :: Lens.Lens' Image Lude.Bool
iPublic = Lens.lens (public :: Image -> Lude.Bool) (\s a -> s {public = a} :: Image)
{-# DEPRECATED iPublic "Use generic-lens or generic-optics with 'public' instead." #-}

instance Lude.FromXML Image where
  parseXML x =
    Image'
      Lude.<$> (x Lude..@ "imageState")
      Lude.<*> (x Lude..@ "virtualizationType")
      Lude.<*> (x Lude..@ "hypervisor")
      Lude.<*> (x Lude..@? "platform")
      Lude.<*> (x Lude..@ "imageLocation")
      Lude.<*> (x Lude..@? "platformDetails")
      Lude.<*> (x Lude..@? "enaSupport")
      Lude.<*> (x Lude..@? "imageOwnerAlias")
      Lude.<*> (x Lude..@? "usageOperation")
      Lude.<*> (x Lude..@? "ramdiskId")
      Lude.<*> (x Lude..@? "kernelId")
      Lude.<*> (x Lude..@? "rootDeviceName")
      Lude.<*> (x Lude..@? "sriovNetSupport")
      Lude.<*> (x Lude..@ "imageOwnerId")
      Lude.<*> (x Lude..@ "imageType")
      Lude.<*> (x Lude..@? "name")
      Lude.<*> (x Lude..@ "imageId")
      Lude.<*> (x Lude..@ "architecture")
      Lude.<*> (x Lude..@? "creationDate")
      Lude.<*> ( x Lude..@? "productCodes" Lude..!@ Lude.mempty
                   Lude.>>= Lude.may (Lude.parseXMLList "item")
               )
      Lude.<*> (x Lude..@? "stateReason")
      Lude.<*> (x Lude..@ "rootDeviceType")
      Lude.<*> (x Lude..@? "description")
      Lude.<*> ( x Lude..@? "blockDeviceMapping" Lude..!@ Lude.mempty
                   Lude.>>= Lude.may (Lude.parseXMLList "item")
               )
      Lude.<*> ( x Lude..@? "tagSet" Lude..!@ Lude.mempty
                   Lude.>>= Lude.may (Lude.parseXMLList "item")
               )
      Lude.<*> (x Lude..@ "isPublic")