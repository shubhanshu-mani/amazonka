-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScalingPlans.Types.ForecastDataType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types.ForecastDataType
  ( ForecastDataType
      ( ForecastDataType',
        CapacityForecast,
        LoadForecast,
        ScheduledActionMaxCapacity,
        ScheduledActionMinCapacity
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ForecastDataType = ForecastDataType' Lude.Text
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

pattern CapacityForecast :: ForecastDataType
pattern CapacityForecast = ForecastDataType' "CapacityForecast"

pattern LoadForecast :: ForecastDataType
pattern LoadForecast = ForecastDataType' "LoadForecast"

pattern ScheduledActionMaxCapacity :: ForecastDataType
pattern ScheduledActionMaxCapacity = ForecastDataType' "ScheduledActionMaxCapacity"

pattern ScheduledActionMinCapacity :: ForecastDataType
pattern ScheduledActionMinCapacity = ForecastDataType' "ScheduledActionMinCapacity"

{-# COMPLETE
  CapacityForecast,
  LoadForecast,
  ScheduledActionMaxCapacity,
  ScheduledActionMinCapacity,
  ForecastDataType'
  #-}
