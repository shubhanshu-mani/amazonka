-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Budgets.Types.NotificationType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.NotificationType
  ( NotificationType
      ( NotificationType',
        Actual,
        Forecasted
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | The type of a notification. It must be ACTUAL or FORECASTED.
newtype NotificationType = NotificationType' Lude.Text
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

pattern Actual :: NotificationType
pattern Actual = NotificationType' "ACTUAL"

pattern Forecasted :: NotificationType
pattern Forecasted = NotificationType' "FORECASTED"

{-# COMPLETE
  Actual,
  Forecasted,
  NotificationType'
  #-}
