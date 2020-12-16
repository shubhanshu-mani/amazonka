{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.SortKeyType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.SortKeyType
  ( SortKeyType
      ( SortKeyType',
        ServiceNamespaceAscending,
        ServiceNamespaceDescending,
        LastAuthenticatedTimeAscending,
        LastAuthenticatedTimeDescending
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype SortKeyType = SortKeyType' Lude.Text
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

pattern ServiceNamespaceAscending :: SortKeyType
pattern ServiceNamespaceAscending = SortKeyType' "SERVICE_NAMESPACE_ASCENDING"

pattern ServiceNamespaceDescending :: SortKeyType
pattern ServiceNamespaceDescending = SortKeyType' "SERVICE_NAMESPACE_DESCENDING"

pattern LastAuthenticatedTimeAscending :: SortKeyType
pattern LastAuthenticatedTimeAscending = SortKeyType' "LAST_AUTHENTICATED_TIME_ASCENDING"

pattern LastAuthenticatedTimeDescending :: SortKeyType
pattern LastAuthenticatedTimeDescending = SortKeyType' "LAST_AUTHENTICATED_TIME_DESCENDING"

{-# COMPLETE
  ServiceNamespaceAscending,
  ServiceNamespaceDescending,
  LastAuthenticatedTimeAscending,
  LastAuthenticatedTimeDescending,
  SortKeyType'
  #-}