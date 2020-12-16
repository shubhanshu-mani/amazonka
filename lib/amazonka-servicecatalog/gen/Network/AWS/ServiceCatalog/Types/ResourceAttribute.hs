{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ResourceAttribute
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ResourceAttribute
  ( ResourceAttribute
      ( ResourceAttribute',
        Properties,
        Metadata,
        Creationpolicy,
        Updatepolicy,
        Deletionpolicy,
        Tags
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ResourceAttribute = ResourceAttribute' Lude.Text
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

pattern Properties :: ResourceAttribute
pattern Properties = ResourceAttribute' "PROPERTIES"

pattern Metadata :: ResourceAttribute
pattern Metadata = ResourceAttribute' "METADATA"

pattern Creationpolicy :: ResourceAttribute
pattern Creationpolicy = ResourceAttribute' "CREATIONPOLICY"

pattern Updatepolicy :: ResourceAttribute
pattern Updatepolicy = ResourceAttribute' "UPDATEPOLICY"

pattern Deletionpolicy :: ResourceAttribute
pattern Deletionpolicy = ResourceAttribute' "DELETIONPOLICY"

pattern Tags :: ResourceAttribute
pattern Tags = ResourceAttribute' "TAGS"

{-# COMPLETE
  Properties,
  Metadata,
  Creationpolicy,
  Updatepolicy,
  Deletionpolicy,
  Tags,
  ResourceAttribute'
  #-}