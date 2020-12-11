-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.PiiEntitiesDetectionMaskMode
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.PiiEntitiesDetectionMaskMode
  ( PiiEntitiesDetectionMaskMode
      ( PiiEntitiesDetectionMaskMode',
        Mask,
        ReplaceWithPiiEntityType
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype PiiEntitiesDetectionMaskMode = PiiEntitiesDetectionMaskMode' Lude.Text
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

pattern Mask :: PiiEntitiesDetectionMaskMode
pattern Mask = PiiEntitiesDetectionMaskMode' "MASK"

pattern ReplaceWithPiiEntityType :: PiiEntitiesDetectionMaskMode
pattern ReplaceWithPiiEntityType = PiiEntitiesDetectionMaskMode' "REPLACE_WITH_PII_ENTITY_TYPE"

{-# COMPLETE
  Mask,
  ReplaceWithPiiEntityType,
  PiiEntitiesDetectionMaskMode'
  #-}
