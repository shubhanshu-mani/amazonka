{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.OriginRequestPolicyHeaderBehavior
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.OriginRequestPolicyHeaderBehavior
  ( OriginRequestPolicyHeaderBehavior
      ( OriginRequestPolicyHeaderBehavior',
        ORPHBNone,
        ORPHBWhitelist,
        ORPHBAllViewer,
        ORPHBAllViewerAndWhitelistCloudFront
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype OriginRequestPolicyHeaderBehavior = OriginRequestPolicyHeaderBehavior' Lude.Text
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

pattern ORPHBNone :: OriginRequestPolicyHeaderBehavior
pattern ORPHBNone = OriginRequestPolicyHeaderBehavior' "none"

pattern ORPHBWhitelist :: OriginRequestPolicyHeaderBehavior
pattern ORPHBWhitelist = OriginRequestPolicyHeaderBehavior' "whitelist"

pattern ORPHBAllViewer :: OriginRequestPolicyHeaderBehavior
pattern ORPHBAllViewer = OriginRequestPolicyHeaderBehavior' "allViewer"

pattern ORPHBAllViewerAndWhitelistCloudFront :: OriginRequestPolicyHeaderBehavior
pattern ORPHBAllViewerAndWhitelistCloudFront = OriginRequestPolicyHeaderBehavior' "allViewerAndWhitelistCloudFront"

{-# COMPLETE
  ORPHBNone,
  ORPHBWhitelist,
  ORPHBAllViewer,
  ORPHBAllViewerAndWhitelistCloudFront,
  OriginRequestPolicyHeaderBehavior'
  #-}