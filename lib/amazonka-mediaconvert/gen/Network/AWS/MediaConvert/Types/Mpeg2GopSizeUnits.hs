{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2GopSizeUnits
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2GopSizeUnits
  ( Mpeg2GopSizeUnits
      ( Mpeg2GopSizeUnits',
        MGSUFrames,
        MGSUSeconds
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | Indicates if the GOP Size in MPEG2 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time.
newtype Mpeg2GopSizeUnits = Mpeg2GopSizeUnits' Lude.Text
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

pattern MGSUFrames :: Mpeg2GopSizeUnits
pattern MGSUFrames = Mpeg2GopSizeUnits' "FRAMES"

pattern MGSUSeconds :: Mpeg2GopSizeUnits
pattern MGSUSeconds = Mpeg2GopSizeUnits' "SECONDS"

{-# COMPLETE
  MGSUFrames,
  MGSUSeconds,
  Mpeg2GopSizeUnits'
  #-}