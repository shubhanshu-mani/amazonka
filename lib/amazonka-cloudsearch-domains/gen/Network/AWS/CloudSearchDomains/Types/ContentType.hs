-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearchDomains.Types.ContentType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearchDomains.Types.ContentType
  ( ContentType
      ( ContentType',
        ApplicationJSON,
        ApplicationXML
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ContentType = ContentType' Lude.Text
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

pattern ApplicationJSON :: ContentType
pattern ApplicationJSON = ContentType' "application/json"

pattern ApplicationXML :: ContentType
pattern ApplicationXML = ContentType' "application/xml"

{-# COMPLETE
  ApplicationJSON,
  ApplicationXML,
  ContentType'
  #-}
