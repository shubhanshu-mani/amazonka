{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ProvisionedProductStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProvisionedProductStatus
  ( ProvisionedProductStatus
      ( ProvisionedProductStatus',
        PPSAvailable,
        PPSUnderChange,
        PPSTainted,
        PPSError,
        PPSPlanInProgress
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ProvisionedProductStatus = ProvisionedProductStatus' Lude.Text
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

pattern PPSAvailable :: ProvisionedProductStatus
pattern PPSAvailable = ProvisionedProductStatus' "AVAILABLE"

pattern PPSUnderChange :: ProvisionedProductStatus
pattern PPSUnderChange = ProvisionedProductStatus' "UNDER_CHANGE"

pattern PPSTainted :: ProvisionedProductStatus
pattern PPSTainted = ProvisionedProductStatus' "TAINTED"

pattern PPSError :: ProvisionedProductStatus
pattern PPSError = ProvisionedProductStatus' "ERROR"

pattern PPSPlanInProgress :: ProvisionedProductStatus
pattern PPSPlanInProgress = ProvisionedProductStatus' "PLAN_IN_PROGRESS"

{-# COMPLETE
  PPSAvailable,
  PPSUnderChange,
  PPSTainted,
  PPSError,
  PPSPlanInProgress,
  ProvisionedProductStatus'
  #-}