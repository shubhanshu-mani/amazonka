{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.StorageClass
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.StorageClass
  ( StorageClass
      ( StorageClass',
        Standard,
        ReducedRedundancy,
        StandardIA,
        OnezoneIA,
        IntelligentTiering,
        Glacier,
        DeepArchive,
        Outposts
      ),
  )
where

import qualified Network.AWS.Prelude as Lude
import Network.AWS.S3.Internal

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

pattern OnezoneIA :: StorageClass
pattern OnezoneIA = StorageClass' "ONEZONE_IA"

pattern IntelligentTiering :: StorageClass
pattern IntelligentTiering = StorageClass' "INTELLIGENT_TIERING"

pattern Glacier :: StorageClass
pattern Glacier = StorageClass' "GLACIER"

pattern DeepArchive :: StorageClass
pattern DeepArchive = StorageClass' "DEEP_ARCHIVE"

pattern Outposts :: StorageClass
pattern Outposts = StorageClass' "OUTPOSTS"

{-# COMPLETE
  Standard,
  ReducedRedundancy,
  StandardIA,
  OnezoneIA,
  IntelligentTiering,
  Glacier,
  DeepArchive,
  Outposts,
  StorageClass'
  #-}