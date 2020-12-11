-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.APICachingBehavior
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.APICachingBehavior
  ( APICachingBehavior
      ( APICachingBehavior',
        FullRequestCaching,
        PerResolverCaching
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype APICachingBehavior = APICachingBehavior' Lude.Text
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

pattern FullRequestCaching :: APICachingBehavior
pattern FullRequestCaching = APICachingBehavior' "FULL_REQUEST_CACHING"

pattern PerResolverCaching :: APICachingBehavior
pattern PerResolverCaching = APICachingBehavior' "PER_RESOLVER_CACHING"

{-# COMPLETE
  FullRequestCaching,
  PerResolverCaching,
  APICachingBehavior'
  #-}
