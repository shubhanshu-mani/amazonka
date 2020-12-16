{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ImageAttributeName
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ImageAttributeName
  ( ImageAttributeName
      ( ImageAttributeName',
        Description,
        Kernel,
        RAMDisk,
        LaunchPermission,
        ProductCodes,
        BlockDeviceMapping,
        SRIOVNetSupport
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ImageAttributeName = ImageAttributeName' Lude.Text
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype
    ( Lude.Hashable,
      Lude.NFData,
      Lude.ToJSONKey,
      Lude.FromJSONKey,
      Lude.ToJSON,
      Lude.FromJSON,
      Lude.ToXML,
      Lude.FromXML,
      Lude.ToText,
      Lude.FromText,
      Lude.ToByteString,
      Lude.ToQuery,
      Lude.ToHeader
    )

pattern Description :: ImageAttributeName
pattern Description = ImageAttributeName' "description"

pattern Kernel :: ImageAttributeName
pattern Kernel = ImageAttributeName' "kernel"

pattern RAMDisk :: ImageAttributeName
pattern RAMDisk = ImageAttributeName' "ramdisk"

pattern LaunchPermission :: ImageAttributeName
pattern LaunchPermission = ImageAttributeName' "launchPermission"

pattern ProductCodes :: ImageAttributeName
pattern ProductCodes = ImageAttributeName' "productCodes"

pattern BlockDeviceMapping :: ImageAttributeName
pattern BlockDeviceMapping = ImageAttributeName' "blockDeviceMapping"

pattern SRIOVNetSupport :: ImageAttributeName
pattern SRIOVNetSupport = ImageAttributeName' "sriovNetSupport"

{-# COMPLETE
  Description,
  Kernel,
  RAMDisk,
  LaunchPermission,
  ProductCodes,
  BlockDeviceMapping,
  SRIOVNetSupport,
  ImageAttributeName'
  #-}