{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.ActionType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ActionType
  ( ActionType
      ( ActionType',
        ATRestoreCluster,
        ATRecommendNodeConfig,
        ATResizeCluster
      ),
  )
where

import qualified Network.AWS.Prelude as Lude
import Network.AWS.Redshift.Internal

newtype ActionType = ActionType' Lude.Text
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

pattern ATRestoreCluster :: ActionType
pattern ATRestoreCluster = ActionType' "restore-cluster"

pattern ATRecommendNodeConfig :: ActionType
pattern ATRecommendNodeConfig = ActionType' "recommend-node-config"

pattern ATResizeCluster :: ActionType
pattern ATResizeCluster = ActionType' "resize-cluster"

{-# COMPLETE
  ATRestoreCluster,
  ATRecommendNodeConfig,
  ATResizeCluster,
  ActionType'
  #-}