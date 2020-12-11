-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.StackSetDriftStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackSetDriftStatus
  ( StackSetDriftStatus
      ( StackSetDriftStatus',
        Drifted,
        InSync,
        NotChecked
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype StackSetDriftStatus = StackSetDriftStatus' Lude.Text
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

pattern Drifted :: StackSetDriftStatus
pattern Drifted = StackSetDriftStatus' "DRIFTED"

pattern InSync :: StackSetDriftStatus
pattern InSync = StackSetDriftStatus' "IN_SYNC"

pattern NotChecked :: StackSetDriftStatus
pattern NotChecked = StackSetDriftStatus' "NOT_CHECKED"

{-# COMPLETE
  Drifted,
  InSync,
  NotChecked,
  StackSetDriftStatus'
  #-}
