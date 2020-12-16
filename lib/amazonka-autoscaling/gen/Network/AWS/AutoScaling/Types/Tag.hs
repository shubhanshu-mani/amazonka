{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.Types.Tag
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.Tag
  ( Tag (..),

    -- * Smart constructor
    mkTag,

    -- * Lenses
    tResourceId,
    tResourceType,
    tValue,
    tKey,
    tPropagateAtLaunch,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Describes a tag for an Auto Scaling group.
--
-- /See:/ 'mkTag' smart constructor.
data Tag = Tag'
  { -- | The name of the group.
    resourceId :: Lude.Text,
    -- | The type of resource. The only supported value is @auto-scaling-group@ .
    resourceType :: Lude.Text,
    -- | The tag value.
    value :: Lude.Text,
    -- | The tag key.
    key :: Lude.Text,
    -- | Determines whether the tag is added to new instances as they are launched in the group.
    propagateAtLaunch :: Lude.Bool
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'Tag' with the minimum fields required to make a request.
--
-- * 'resourceId' - The name of the group.
-- * 'resourceType' - The type of resource. The only supported value is @auto-scaling-group@ .
-- * 'value' - The tag value.
-- * 'key' - The tag key.
-- * 'propagateAtLaunch' - Determines whether the tag is added to new instances as they are launched in the group.
mkTag ::
  -- | 'resourceId'
  Lude.Text ->
  -- | 'resourceType'
  Lude.Text ->
  -- | 'value'
  Lude.Text ->
  -- | 'key'
  Lude.Text ->
  -- | 'propagateAtLaunch'
  Lude.Bool ->
  Tag
mkTag pResourceId_ pResourceType_ pValue_ pKey_ pPropagateAtLaunch_ =
  Tag'
    { resourceId = pResourceId_,
      resourceType = pResourceType_,
      value = pValue_,
      key = pKey_,
      propagateAtLaunch = pPropagateAtLaunch_
    }

-- | The name of the group.
--
-- /Note:/ Consider using 'resourceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tResourceId :: Lens.Lens' Tag Lude.Text
tResourceId = Lens.lens (resourceId :: Tag -> Lude.Text) (\s a -> s {resourceId = a} :: Tag)
{-# DEPRECATED tResourceId "Use generic-lens or generic-optics with 'resourceId' instead." #-}

-- | The type of resource. The only supported value is @auto-scaling-group@ .
--
-- /Note:/ Consider using 'resourceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tResourceType :: Lens.Lens' Tag Lude.Text
tResourceType = Lens.lens (resourceType :: Tag -> Lude.Text) (\s a -> s {resourceType = a} :: Tag)
{-# DEPRECATED tResourceType "Use generic-lens or generic-optics with 'resourceType' instead." #-}

-- | The tag value.
--
-- /Note:/ Consider using 'value' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tValue :: Lens.Lens' Tag Lude.Text
tValue = Lens.lens (value :: Tag -> Lude.Text) (\s a -> s {value = a} :: Tag)
{-# DEPRECATED tValue "Use generic-lens or generic-optics with 'value' instead." #-}

-- | The tag key.
--
-- /Note:/ Consider using 'key' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tKey :: Lens.Lens' Tag Lude.Text
tKey = Lens.lens (key :: Tag -> Lude.Text) (\s a -> s {key = a} :: Tag)
{-# DEPRECATED tKey "Use generic-lens or generic-optics with 'key' instead." #-}

-- | Determines whether the tag is added to new instances as they are launched in the group.
--
-- /Note:/ Consider using 'propagateAtLaunch' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tPropagateAtLaunch :: Lens.Lens' Tag Lude.Bool
tPropagateAtLaunch = Lens.lens (propagateAtLaunch :: Tag -> Lude.Bool) (\s a -> s {propagateAtLaunch = a} :: Tag)
{-# DEPRECATED tPropagateAtLaunch "Use generic-lens or generic-optics with 'propagateAtLaunch' instead." #-}

instance Lude.ToQuery Tag where
  toQuery Tag' {..} =
    Lude.mconcat
      [ "ResourceId" Lude.=: resourceId,
        "ResourceType" Lude.=: resourceType,
        "Value" Lude.=: value,
        "Key" Lude.=: key,
        "PropagateAtLaunch" Lude.=: propagateAtLaunch
      ]