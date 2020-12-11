-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.AccessAdvisorUsageGranularityType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.AccessAdvisorUsageGranularityType
  ( AccessAdvisorUsageGranularityType
      ( AccessAdvisorUsageGranularityType',
        ActionLevel,
        ServiceLevel
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype AccessAdvisorUsageGranularityType = AccessAdvisorUsageGranularityType' Lude.Text
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

pattern ActionLevel :: AccessAdvisorUsageGranularityType
pattern ActionLevel = AccessAdvisorUsageGranularityType' "ACTION_LEVEL"

pattern ServiceLevel :: AccessAdvisorUsageGranularityType
pattern ServiceLevel = AccessAdvisorUsageGranularityType' "SERVICE_LEVEL"

{-# COMPLETE
  ActionLevel,
  ServiceLevel,
  AccessAdvisorUsageGranularityType'
  #-}
