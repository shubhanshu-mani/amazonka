-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.HlsH265PackagingType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsH265PackagingType
  ( HlsH265PackagingType
      ( HlsH265PackagingType',
        HEV1,
        HVC1
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | Hls H265 Packaging Type
newtype HlsH265PackagingType = HlsH265PackagingType' Lude.Text
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

pattern HEV1 :: HlsH265PackagingType
pattern HEV1 = HlsH265PackagingType' "HEV1"

pattern HVC1 :: HlsH265PackagingType
pattern HVC1 = HlsH265PackagingType' "HVC1"

{-# COMPLETE
  HEV1,
  HVC1,
  HlsH265PackagingType'
  #-}
