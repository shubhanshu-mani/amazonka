{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.WatermarkingStrength
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.WatermarkingStrength
  ( WatermarkingStrength
      ( WatermarkingStrength',
        WSLightest,
        WSLighter,
        WSDefault,
        WSStronger,
        WSStrongest
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | Optional. Ignore this setting unless Nagra support directs you to specify a value. When you don't specify a value here, the Nagra NexGuard library uses its default value.
newtype WatermarkingStrength = WatermarkingStrength' Lude.Text
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

pattern WSLightest :: WatermarkingStrength
pattern WSLightest = WatermarkingStrength' "LIGHTEST"

pattern WSLighter :: WatermarkingStrength
pattern WSLighter = WatermarkingStrength' "LIGHTER"

pattern WSDefault :: WatermarkingStrength
pattern WSDefault = WatermarkingStrength' "DEFAULT"

pattern WSStronger :: WatermarkingStrength
pattern WSStronger = WatermarkingStrength' "STRONGER"

pattern WSStrongest :: WatermarkingStrength
pattern WSStrongest = WatermarkingStrength' "STRONGEST"

{-# COMPLETE
  WSLightest,
  WSLighter,
  WSDefault,
  WSStronger,
  WSStrongest,
  WatermarkingStrength'
  #-}