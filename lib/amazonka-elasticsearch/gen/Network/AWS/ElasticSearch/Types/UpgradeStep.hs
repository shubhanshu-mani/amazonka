-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.UpgradeStep
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.UpgradeStep
  ( UpgradeStep
      ( UpgradeStep',
        PreUpgradeCheck,
        Snapshot,
        Upgrade
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype UpgradeStep = UpgradeStep' Lude.Text
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

pattern PreUpgradeCheck :: UpgradeStep
pattern PreUpgradeCheck = UpgradeStep' "PRE_UPGRADE_CHECK"

pattern Snapshot :: UpgradeStep
pattern Snapshot = UpgradeStep' "SNAPSHOT"

pattern Upgrade :: UpgradeStep
pattern Upgrade = UpgradeStep' "UPGRADE"

{-# COMPLETE
  PreUpgradeCheck,
  Snapshot,
  Upgrade,
  UpgradeStep'
  #-}
