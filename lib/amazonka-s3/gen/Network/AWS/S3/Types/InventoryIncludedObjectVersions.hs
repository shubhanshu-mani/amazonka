-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.InventoryIncludedObjectVersions
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.InventoryIncludedObjectVersions
  ( InventoryIncludedObjectVersions
      ( InventoryIncludedObjectVersions',
        All,
        Current
      ),
  )
where

import qualified Network.AWS.Prelude as Lude
import Network.AWS.S3.Internal

newtype InventoryIncludedObjectVersions = InventoryIncludedObjectVersions' Lude.Text
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

pattern All :: InventoryIncludedObjectVersions
pattern All = InventoryIncludedObjectVersions' "All"

pattern Current :: InventoryIncludedObjectVersions
pattern Current = InventoryIncludedObjectVersions' "Current"

{-# COMPLETE
  All,
  Current,
  InventoryIncludedObjectVersions'
  #-}
