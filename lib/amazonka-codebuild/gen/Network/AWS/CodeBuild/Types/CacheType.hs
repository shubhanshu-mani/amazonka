-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.CacheType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.CacheType
  ( CacheType
      ( CacheType',
        CTLocal,
        CTNoCache,
        CTS3
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype CacheType = CacheType' Lude.Text
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

pattern CTLocal :: CacheType
pattern CTLocal = CacheType' "LOCAL"

pattern CTNoCache :: CacheType
pattern CTNoCache = CacheType' "NO_CACHE"

pattern CTS3 :: CacheType
pattern CTS3 = CacheType' "S3"

{-# COMPLETE
  CTLocal,
  CTNoCache,
  CTS3,
  CacheType'
  #-}
