{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.Group
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.Group
  ( Group (..),

    -- * Smart constructor
    mkGroup,

    -- * Lenses
    gARN,
    gPath,
    gCreateDate,
    gGroupId,
    gGroupName,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Contains information about an IAM group entity.
--
-- This data type is used as a response element in the following operations:
--
--     * 'CreateGroup'
--
--
--     * 'GetGroup'
--
--
--     * 'ListGroups'
--
--
--
-- /See:/ 'mkGroup' smart constructor.
data Group = Group'
  { -- | The Amazon Resource Name (ARN) specifying the group. For more information about ARNs and how to use them in policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /IAM User Guide/ .
    arn :: Lude.Text,
    -- | The path to the group. For more information about paths, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /IAM User Guide/ .
    path :: Lude.Text,
    -- | The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the group was created.
    createDate :: Lude.DateTime,
    -- | The stable and unique string identifying the group. For more information about IDs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /IAM User Guide/ .
    groupId :: Lude.Text,
    -- | The friendly name that identifies the group.
    groupName :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'Group' with the minimum fields required to make a request.
--
-- * 'arn' - The Amazon Resource Name (ARN) specifying the group. For more information about ARNs and how to use them in policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /IAM User Guide/ .
-- * 'path' - The path to the group. For more information about paths, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /IAM User Guide/ .
-- * 'createDate' - The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the group was created.
-- * 'groupId' - The stable and unique string identifying the group. For more information about IDs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /IAM User Guide/ .
-- * 'groupName' - The friendly name that identifies the group.
mkGroup ::
  -- | 'arn'
  Lude.Text ->
  -- | 'path'
  Lude.Text ->
  -- | 'createDate'
  Lude.DateTime ->
  -- | 'groupId'
  Lude.Text ->
  -- | 'groupName'
  Lude.Text ->
  Group
mkGroup pARN_ pPath_ pCreateDate_ pGroupId_ pGroupName_ =
  Group'
    { arn = pARN_,
      path = pPath_,
      createDate = pCreateDate_,
      groupId = pGroupId_,
      groupName = pGroupName_
    }

-- | The Amazon Resource Name (ARN) specifying the group. For more information about ARNs and how to use them in policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /IAM User Guide/ .
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gARN :: Lens.Lens' Group Lude.Text
gARN = Lens.lens (arn :: Group -> Lude.Text) (\s a -> s {arn = a} :: Group)
{-# DEPRECATED gARN "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | The path to the group. For more information about paths, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /IAM User Guide/ .
--
-- /Note:/ Consider using 'path' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gPath :: Lens.Lens' Group Lude.Text
gPath = Lens.lens (path :: Group -> Lude.Text) (\s a -> s {path = a} :: Group)
{-# DEPRECATED gPath "Use generic-lens or generic-optics with 'path' instead." #-}

-- | The date and time, in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format> , when the group was created.
--
-- /Note:/ Consider using 'createDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gCreateDate :: Lens.Lens' Group Lude.DateTime
gCreateDate = Lens.lens (createDate :: Group -> Lude.DateTime) (\s a -> s {createDate = a} :: Group)
{-# DEPRECATED gCreateDate "Use generic-lens or generic-optics with 'createDate' instead." #-}

-- | The stable and unique string identifying the group. For more information about IDs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html IAM Identifiers> in the /IAM User Guide/ .
--
-- /Note:/ Consider using 'groupId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gGroupId :: Lens.Lens' Group Lude.Text
gGroupId = Lens.lens (groupId :: Group -> Lude.Text) (\s a -> s {groupId = a} :: Group)
{-# DEPRECATED gGroupId "Use generic-lens or generic-optics with 'groupId' instead." #-}

-- | The friendly name that identifies the group.
--
-- /Note:/ Consider using 'groupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gGroupName :: Lens.Lens' Group Lude.Text
gGroupName = Lens.lens (groupName :: Group -> Lude.Text) (\s a -> s {groupName = a} :: Group)
{-# DEPRECATED gGroupName "Use generic-lens or generic-optics with 'groupName' instead." #-}

instance Lude.FromXML Group where
  parseXML x =
    Group'
      Lude.<$> (x Lude..@ "Arn")
      Lude.<*> (x Lude..@ "Path")
      Lude.<*> (x Lude..@ "CreateDate")
      Lude.<*> (x Lude..@ "GroupId")
      Lude.<*> (x Lude..@ "GroupName")