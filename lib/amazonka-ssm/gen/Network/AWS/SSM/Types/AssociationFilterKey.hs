{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.AssociationFilterKey
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AssociationFilterKey
  ( AssociationFilterKey
      ( AssociationFilterKey',
        AFKInstanceId,
        AFKName,
        AFKAssociationId,
        AFKAssociationStatusName,
        AFKLastExecutedBefore,
        AFKLastExecutedAfter,
        AFKAssociationName,
        AFKResourceGroupName
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype AssociationFilterKey = AssociationFilterKey' Lude.Text
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

pattern AFKInstanceId :: AssociationFilterKey
pattern AFKInstanceId = AssociationFilterKey' "InstanceId"

pattern AFKName :: AssociationFilterKey
pattern AFKName = AssociationFilterKey' "Name"

pattern AFKAssociationId :: AssociationFilterKey
pattern AFKAssociationId = AssociationFilterKey' "AssociationId"

pattern AFKAssociationStatusName :: AssociationFilterKey
pattern AFKAssociationStatusName = AssociationFilterKey' "AssociationStatusName"

pattern AFKLastExecutedBefore :: AssociationFilterKey
pattern AFKLastExecutedBefore = AssociationFilterKey' "LastExecutedBefore"

pattern AFKLastExecutedAfter :: AssociationFilterKey
pattern AFKLastExecutedAfter = AssociationFilterKey' "LastExecutedAfter"

pattern AFKAssociationName :: AssociationFilterKey
pattern AFKAssociationName = AssociationFilterKey' "AssociationName"

pattern AFKResourceGroupName :: AssociationFilterKey
pattern AFKResourceGroupName = AssociationFilterKey' "ResourceGroupName"

{-# COMPLETE
  AFKInstanceId,
  AFKName,
  AFKAssociationId,
  AFKAssociationStatusName,
  AFKLastExecutedBefore,
  AFKLastExecutedAfter,
  AFKAssociationName,
  AFKResourceGroupName,
  AssociationFilterKey'
  #-}