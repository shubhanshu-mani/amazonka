{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.DeviceRegistryEnrichActivity
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.DeviceRegistryEnrichActivity
  ( DeviceRegistryEnrichActivity (..),

    -- * Smart constructor
    mkDeviceRegistryEnrichActivity,

    -- * Lenses
    dreaAttribute,
    dreaNext,
    dreaName,
    dreaThingName,
    dreaRoleARN,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | An activity that adds data from the AWS IoT device registry to your message.
--
-- /See:/ 'mkDeviceRegistryEnrichActivity' smart constructor.
data DeviceRegistryEnrichActivity = DeviceRegistryEnrichActivity'
  { -- | The name of the attribute that is added to the message.
    attribute :: Lude.Text,
    -- | The next activity in the pipeline.
    next :: Lude.Maybe Lude.Text,
    -- | The name of the @deviceRegistryEnrich@ activity.
    name :: Lude.Text,
    -- | The name of the IoT device whose registry information is added to the message.
    thingName :: Lude.Text,
    -- | The ARN of the role that allows access to the device's registry information.
    roleARN :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DeviceRegistryEnrichActivity' with the minimum fields required to make a request.
--
-- * 'attribute' - The name of the attribute that is added to the message.
-- * 'next' - The next activity in the pipeline.
-- * 'name' - The name of the @deviceRegistryEnrich@ activity.
-- * 'thingName' - The name of the IoT device whose registry information is added to the message.
-- * 'roleARN' - The ARN of the role that allows access to the device's registry information.
mkDeviceRegistryEnrichActivity ::
  -- | 'attribute'
  Lude.Text ->
  -- | 'name'
  Lude.Text ->
  -- | 'thingName'
  Lude.Text ->
  -- | 'roleARN'
  Lude.Text ->
  DeviceRegistryEnrichActivity
mkDeviceRegistryEnrichActivity
  pAttribute_
  pName_
  pThingName_
  pRoleARN_ =
    DeviceRegistryEnrichActivity'
      { attribute = pAttribute_,
        next = Lude.Nothing,
        name = pName_,
        thingName = pThingName_,
        roleARN = pRoleARN_
      }

-- | The name of the attribute that is added to the message.
--
-- /Note:/ Consider using 'attribute' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dreaAttribute :: Lens.Lens' DeviceRegistryEnrichActivity Lude.Text
dreaAttribute = Lens.lens (attribute :: DeviceRegistryEnrichActivity -> Lude.Text) (\s a -> s {attribute = a} :: DeviceRegistryEnrichActivity)
{-# DEPRECATED dreaAttribute "Use generic-lens or generic-optics with 'attribute' instead." #-}

-- | The next activity in the pipeline.
--
-- /Note:/ Consider using 'next' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dreaNext :: Lens.Lens' DeviceRegistryEnrichActivity (Lude.Maybe Lude.Text)
dreaNext = Lens.lens (next :: DeviceRegistryEnrichActivity -> Lude.Maybe Lude.Text) (\s a -> s {next = a} :: DeviceRegistryEnrichActivity)
{-# DEPRECATED dreaNext "Use generic-lens or generic-optics with 'next' instead." #-}

-- | The name of the @deviceRegistryEnrich@ activity.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dreaName :: Lens.Lens' DeviceRegistryEnrichActivity Lude.Text
dreaName = Lens.lens (name :: DeviceRegistryEnrichActivity -> Lude.Text) (\s a -> s {name = a} :: DeviceRegistryEnrichActivity)
{-# DEPRECATED dreaName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The name of the IoT device whose registry information is added to the message.
--
-- /Note:/ Consider using 'thingName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dreaThingName :: Lens.Lens' DeviceRegistryEnrichActivity Lude.Text
dreaThingName = Lens.lens (thingName :: DeviceRegistryEnrichActivity -> Lude.Text) (\s a -> s {thingName = a} :: DeviceRegistryEnrichActivity)
{-# DEPRECATED dreaThingName "Use generic-lens or generic-optics with 'thingName' instead." #-}

-- | The ARN of the role that allows access to the device's registry information.
--
-- /Note:/ Consider using 'roleARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dreaRoleARN :: Lens.Lens' DeviceRegistryEnrichActivity Lude.Text
dreaRoleARN = Lens.lens (roleARN :: DeviceRegistryEnrichActivity -> Lude.Text) (\s a -> s {roleARN = a} :: DeviceRegistryEnrichActivity)
{-# DEPRECATED dreaRoleARN "Use generic-lens or generic-optics with 'roleARN' instead." #-}

instance Lude.FromJSON DeviceRegistryEnrichActivity where
  parseJSON =
    Lude.withObject
      "DeviceRegistryEnrichActivity"
      ( \x ->
          DeviceRegistryEnrichActivity'
            Lude.<$> (x Lude..: "attribute")
            Lude.<*> (x Lude..:? "next")
            Lude.<*> (x Lude..: "name")
            Lude.<*> (x Lude..: "thingName")
            Lude.<*> (x Lude..: "roleArn")
      )

instance Lude.ToJSON DeviceRegistryEnrichActivity where
  toJSON DeviceRegistryEnrichActivity' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("attribute" Lude..= attribute),
            ("next" Lude..=) Lude.<$> next,
            Lude.Just ("name" Lude..= name),
            Lude.Just ("thingName" Lude..= thingName),
            Lude.Just ("roleArn" Lude..= roleARN)
          ]
      )