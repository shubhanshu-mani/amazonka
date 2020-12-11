-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.PlatformSummary
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.PlatformSummary
  ( PlatformSummary (..),

    -- * Smart constructor
    mkPlatformSummary,

    -- * Lenses
    psPlatformBranchName,
    psSupportedAddonList,
    psPlatformCategory,
    psPlatformBranchLifecycleState,
    psPlatformVersion,
    psPlatformStatus,
    psPlatformLifecycleState,
    psPlatformOwner,
    psOperatingSystemName,
    psPlatformARN,
    psOperatingSystemVersion,
    psSupportedTierList,
  )
where

import Network.AWS.ElasticBeanstalk.Types.PlatformStatus
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Summary information about a platform version.
--
-- /See:/ 'mkPlatformSummary' smart constructor.
data PlatformSummary = PlatformSummary'
  { platformBranchName ::
      Lude.Maybe Lude.Text,
    supportedAddonList :: Lude.Maybe [Lude.Text],
    platformCategory :: Lude.Maybe Lude.Text,
    platformBranchLifecycleState :: Lude.Maybe Lude.Text,
    platformVersion :: Lude.Maybe Lude.Text,
    platformStatus :: Lude.Maybe PlatformStatus,
    platformLifecycleState :: Lude.Maybe Lude.Text,
    platformOwner :: Lude.Maybe Lude.Text,
    operatingSystemName :: Lude.Maybe Lude.Text,
    platformARN :: Lude.Maybe Lude.Text,
    operatingSystemVersion :: Lude.Maybe Lude.Text,
    supportedTierList :: Lude.Maybe [Lude.Text]
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'PlatformSummary' with the minimum fields required to make a request.
--
-- * 'operatingSystemName' - The operating system used by the platform version.
-- * 'operatingSystemVersion' - The version of the operating system used by the platform version.
-- * 'platformARN' - The ARN of the platform version.
-- * 'platformBranchLifecycleState' - The state of the platform version's branch in its lifecycle.
--
-- Possible values: @beta@ | @supported@ | @deprecated@ | @retired@
-- * 'platformBranchName' - The platform branch to which the platform version belongs.
-- * 'platformCategory' - The category of platform version.
-- * 'platformLifecycleState' - The state of the platform version in its lifecycle.
--
-- Possible values: @recommended@ | empty
-- If an empty value is returned, the platform version is supported but isn't the recommended one for its branch.
-- * 'platformOwner' - The AWS account ID of the person who created the platform version.
-- * 'platformStatus' - The status of the platform version. You can create an environment from the platform version once it is ready.
-- * 'platformVersion' - The version string of the platform version.
-- * 'supportedAddonList' - The additions associated with the platform version.
-- * 'supportedTierList' - The tiers in which the platform version runs.
mkPlatformSummary ::
  PlatformSummary
mkPlatformSummary =
  PlatformSummary'
    { platformBranchName = Lude.Nothing,
      supportedAddonList = Lude.Nothing,
      platformCategory = Lude.Nothing,
      platformBranchLifecycleState = Lude.Nothing,
      platformVersion = Lude.Nothing,
      platformStatus = Lude.Nothing,
      platformLifecycleState = Lude.Nothing,
      platformOwner = Lude.Nothing,
      operatingSystemName = Lude.Nothing,
      platformARN = Lude.Nothing,
      operatingSystemVersion = Lude.Nothing,
      supportedTierList = Lude.Nothing
    }

-- | The platform branch to which the platform version belongs.
--
-- /Note:/ Consider using 'platformBranchName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psPlatformBranchName :: Lens.Lens' PlatformSummary (Lude.Maybe Lude.Text)
psPlatformBranchName = Lens.lens (platformBranchName :: PlatformSummary -> Lude.Maybe Lude.Text) (\s a -> s {platformBranchName = a} :: PlatformSummary)
{-# DEPRECATED psPlatformBranchName "Use generic-lens or generic-optics with 'platformBranchName' instead." #-}

-- | The additions associated with the platform version.
--
-- /Note:/ Consider using 'supportedAddonList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psSupportedAddonList :: Lens.Lens' PlatformSummary (Lude.Maybe [Lude.Text])
psSupportedAddonList = Lens.lens (supportedAddonList :: PlatformSummary -> Lude.Maybe [Lude.Text]) (\s a -> s {supportedAddonList = a} :: PlatformSummary)
{-# DEPRECATED psSupportedAddonList "Use generic-lens or generic-optics with 'supportedAddonList' instead." #-}

-- | The category of platform version.
--
-- /Note:/ Consider using 'platformCategory' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psPlatformCategory :: Lens.Lens' PlatformSummary (Lude.Maybe Lude.Text)
psPlatformCategory = Lens.lens (platformCategory :: PlatformSummary -> Lude.Maybe Lude.Text) (\s a -> s {platformCategory = a} :: PlatformSummary)
{-# DEPRECATED psPlatformCategory "Use generic-lens or generic-optics with 'platformCategory' instead." #-}

-- | The state of the platform version's branch in its lifecycle.
--
-- Possible values: @beta@ | @supported@ | @deprecated@ | @retired@
--
-- /Note:/ Consider using 'platformBranchLifecycleState' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psPlatformBranchLifecycleState :: Lens.Lens' PlatformSummary (Lude.Maybe Lude.Text)
psPlatformBranchLifecycleState = Lens.lens (platformBranchLifecycleState :: PlatformSummary -> Lude.Maybe Lude.Text) (\s a -> s {platformBranchLifecycleState = a} :: PlatformSummary)
{-# DEPRECATED psPlatformBranchLifecycleState "Use generic-lens or generic-optics with 'platformBranchLifecycleState' instead." #-}

-- | The version string of the platform version.
--
-- /Note:/ Consider using 'platformVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psPlatformVersion :: Lens.Lens' PlatformSummary (Lude.Maybe Lude.Text)
psPlatformVersion = Lens.lens (platformVersion :: PlatformSummary -> Lude.Maybe Lude.Text) (\s a -> s {platformVersion = a} :: PlatformSummary)
{-# DEPRECATED psPlatformVersion "Use generic-lens or generic-optics with 'platformVersion' instead." #-}

-- | The status of the platform version. You can create an environment from the platform version once it is ready.
--
-- /Note:/ Consider using 'platformStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psPlatformStatus :: Lens.Lens' PlatformSummary (Lude.Maybe PlatformStatus)
psPlatformStatus = Lens.lens (platformStatus :: PlatformSummary -> Lude.Maybe PlatformStatus) (\s a -> s {platformStatus = a} :: PlatformSummary)
{-# DEPRECATED psPlatformStatus "Use generic-lens or generic-optics with 'platformStatus' instead." #-}

-- | The state of the platform version in its lifecycle.
--
-- Possible values: @recommended@ | empty
-- If an empty value is returned, the platform version is supported but isn't the recommended one for its branch.
--
-- /Note:/ Consider using 'platformLifecycleState' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psPlatformLifecycleState :: Lens.Lens' PlatformSummary (Lude.Maybe Lude.Text)
psPlatformLifecycleState = Lens.lens (platformLifecycleState :: PlatformSummary -> Lude.Maybe Lude.Text) (\s a -> s {platformLifecycleState = a} :: PlatformSummary)
{-# DEPRECATED psPlatformLifecycleState "Use generic-lens or generic-optics with 'platformLifecycleState' instead." #-}

-- | The AWS account ID of the person who created the platform version.
--
-- /Note:/ Consider using 'platformOwner' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psPlatformOwner :: Lens.Lens' PlatformSummary (Lude.Maybe Lude.Text)
psPlatformOwner = Lens.lens (platformOwner :: PlatformSummary -> Lude.Maybe Lude.Text) (\s a -> s {platformOwner = a} :: PlatformSummary)
{-# DEPRECATED psPlatformOwner "Use generic-lens or generic-optics with 'platformOwner' instead." #-}

-- | The operating system used by the platform version.
--
-- /Note:/ Consider using 'operatingSystemName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psOperatingSystemName :: Lens.Lens' PlatformSummary (Lude.Maybe Lude.Text)
psOperatingSystemName = Lens.lens (operatingSystemName :: PlatformSummary -> Lude.Maybe Lude.Text) (\s a -> s {operatingSystemName = a} :: PlatformSummary)
{-# DEPRECATED psOperatingSystemName "Use generic-lens or generic-optics with 'operatingSystemName' instead." #-}

-- | The ARN of the platform version.
--
-- /Note:/ Consider using 'platformARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psPlatformARN :: Lens.Lens' PlatformSummary (Lude.Maybe Lude.Text)
psPlatformARN = Lens.lens (platformARN :: PlatformSummary -> Lude.Maybe Lude.Text) (\s a -> s {platformARN = a} :: PlatformSummary)
{-# DEPRECATED psPlatformARN "Use generic-lens or generic-optics with 'platformARN' instead." #-}

-- | The version of the operating system used by the platform version.
--
-- /Note:/ Consider using 'operatingSystemVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psOperatingSystemVersion :: Lens.Lens' PlatformSummary (Lude.Maybe Lude.Text)
psOperatingSystemVersion = Lens.lens (operatingSystemVersion :: PlatformSummary -> Lude.Maybe Lude.Text) (\s a -> s {operatingSystemVersion = a} :: PlatformSummary)
{-# DEPRECATED psOperatingSystemVersion "Use generic-lens or generic-optics with 'operatingSystemVersion' instead." #-}

-- | The tiers in which the platform version runs.
--
-- /Note:/ Consider using 'supportedTierList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psSupportedTierList :: Lens.Lens' PlatformSummary (Lude.Maybe [Lude.Text])
psSupportedTierList = Lens.lens (supportedTierList :: PlatformSummary -> Lude.Maybe [Lude.Text]) (\s a -> s {supportedTierList = a} :: PlatformSummary)
{-# DEPRECATED psSupportedTierList "Use generic-lens or generic-optics with 'supportedTierList' instead." #-}

instance Lude.FromXML PlatformSummary where
  parseXML x =
    PlatformSummary'
      Lude.<$> (x Lude..@? "PlatformBranchName")
      Lude.<*> ( x Lude..@? "SupportedAddonList" Lude..!@ Lude.mempty
                   Lude.>>= Lude.may (Lude.parseXMLList "member")
               )
      Lude.<*> (x Lude..@? "PlatformCategory")
      Lude.<*> (x Lude..@? "PlatformBranchLifecycleState")
      Lude.<*> (x Lude..@? "PlatformVersion")
      Lude.<*> (x Lude..@? "PlatformStatus")
      Lude.<*> (x Lude..@? "PlatformLifecycleState")
      Lude.<*> (x Lude..@? "PlatformOwner")
      Lude.<*> (x Lude..@? "OperatingSystemName")
      Lude.<*> (x Lude..@? "PlatformArn")
      Lude.<*> (x Lude..@? "OperatingSystemVersion")
      Lude.<*> ( x Lude..@? "SupportedTierList" Lude..!@ Lude.mempty
                   Lude.>>= Lude.may (Lude.parseXMLList "member")
               )
