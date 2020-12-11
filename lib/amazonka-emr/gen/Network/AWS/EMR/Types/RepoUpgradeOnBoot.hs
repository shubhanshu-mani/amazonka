-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.RepoUpgradeOnBoot
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.RepoUpgradeOnBoot
  ( RepoUpgradeOnBoot
      ( RepoUpgradeOnBoot',
        RUOBNone,
        RUOBSecurity
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype RepoUpgradeOnBoot = RepoUpgradeOnBoot' Lude.Text
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

pattern RUOBNone :: RepoUpgradeOnBoot
pattern RUOBNone = RepoUpgradeOnBoot' "NONE"

pattern RUOBSecurity :: RepoUpgradeOnBoot
pattern RUOBSecurity = RepoUpgradeOnBoot' "SECURITY"

{-# COMPLETE
  RUOBNone,
  RUOBSecurity,
  RepoUpgradeOnBoot'
  #-}
