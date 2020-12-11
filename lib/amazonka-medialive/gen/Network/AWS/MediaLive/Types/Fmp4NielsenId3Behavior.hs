-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Fmp4NielsenId3Behavior
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Fmp4NielsenId3Behavior
  ( Fmp4NielsenId3Behavior
      ( Fmp4NielsenId3Behavior',
        FNIBNoPassthrough,
        FNIBPassthrough
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | Fmp4 Nielsen Id3 Behavior
newtype Fmp4NielsenId3Behavior = Fmp4NielsenId3Behavior' Lude.Text
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

pattern FNIBNoPassthrough :: Fmp4NielsenId3Behavior
pattern FNIBNoPassthrough = Fmp4NielsenId3Behavior' "NO_PASSTHROUGH"

pattern FNIBPassthrough :: Fmp4NielsenId3Behavior
pattern FNIBPassthrough = Fmp4NielsenId3Behavior' "PASSTHROUGH"

{-# COMPLETE
  FNIBNoPassthrough,
  FNIBPassthrough,
  Fmp4NielsenId3Behavior'
  #-}
