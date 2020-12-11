-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.DeviceCgroupPermission
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.DeviceCgroupPermission
  ( DeviceCgroupPermission
      ( DeviceCgroupPermission',
        Mknod,
        Read,
        Write
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype DeviceCgroupPermission = DeviceCgroupPermission' Lude.Text
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

pattern Mknod :: DeviceCgroupPermission
pattern Mknod = DeviceCgroupPermission' "mknod"

pattern Read :: DeviceCgroupPermission
pattern Read = DeviceCgroupPermission' "read"

pattern Write :: DeviceCgroupPermission
pattern Write = DeviceCgroupPermission' "write"

{-# COMPLETE
  Mknod,
  Read,
  Write,
  DeviceCgroupPermission'
  #-}
