{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types.HealthStatusFilter
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.HealthStatusFilter
  ( HealthStatusFilter
      ( HealthStatusFilter',
        HSFHealthy,
        HSFUnhealthy,
        HSFAll
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype HealthStatusFilter = HealthStatusFilter' Lude.Text
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

pattern HSFHealthy :: HealthStatusFilter
pattern HSFHealthy = HealthStatusFilter' "HEALTHY"

pattern HSFUnhealthy :: HealthStatusFilter
pattern HSFUnhealthy = HealthStatusFilter' "UNHEALTHY"

pattern HSFAll :: HealthStatusFilter
pattern HSFAll = HealthStatusFilter' "ALL"

{-# COMPLETE
  HSFHealthy,
  HSFUnhealthy,
  HSFAll,
  HealthStatusFilter'
  #-}