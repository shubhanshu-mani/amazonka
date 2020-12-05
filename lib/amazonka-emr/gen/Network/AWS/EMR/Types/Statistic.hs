{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.Statistic
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.Statistic where

import Network.AWS.Prelude

data Statistic
  = Average
  | Maximum
  | Minimum
  | SampleCount
  | Sum
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Enum,
      Bounded,
      Data,
      Typeable,
      Generic
    )

instance FromText Statistic where
  parser =
    takeLowerText >>= \case
      "average" -> pure Average
      "maximum" -> pure Maximum
      "minimum" -> pure Minimum
      "sample_count" -> pure SampleCount
      "sum" -> pure Sum
      e ->
        fromTextError $
          "Failure parsing Statistic from value: '" <> e
            <> "'. Accepted values: average, maximum, minimum, sample_count, sum"

instance ToText Statistic where
  toText = \case
    Average -> "AVERAGE"
    Maximum -> "MAXIMUM"
    Minimum -> "MINIMUM"
    SampleCount -> "SAMPLE_COUNT"
    Sum -> "SUM"

instance Hashable Statistic

instance NFData Statistic

instance ToByteString Statistic

instance ToQuery Statistic

instance ToHeader Statistic

instance ToJSON Statistic where
  toJSON = toJSONText

instance FromJSON Statistic where
  parseJSON = parseJSONText "Statistic"