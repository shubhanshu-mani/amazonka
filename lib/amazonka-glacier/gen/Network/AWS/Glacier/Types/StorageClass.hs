{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glacier.Types.StorageClass
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types.StorageClass
  ( StorageClass
      ( StorageClass',
        Standard,
        ReducedRedundancy,
        StandardIA
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype StorageClass = StorageClass' Lude.Text
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

pattern Standard :: StorageClass
pattern Standard = StorageClass' "STANDARD"

pattern ReducedRedundancy :: StorageClass
pattern ReducedRedundancy = StorageClass' "REDUCED_REDUNDANCY"

pattern StandardIA :: StorageClass
pattern StandardIA = StorageClass' "STANDARD_IA"

{-# COMPLETE
  Standard,
  ReducedRedundancy,
  StandardIA,
  StorageClass'
  #-}