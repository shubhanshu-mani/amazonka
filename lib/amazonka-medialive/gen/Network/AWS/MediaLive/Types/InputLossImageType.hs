-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputLossImageType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputLossImageType
  ( InputLossImageType
      ( InputLossImageType',
        Color,
        Slate
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | Input Loss Image Type
newtype InputLossImageType = InputLossImageType' Lude.Text
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

pattern Color :: InputLossImageType
pattern Color = InputLossImageType' "COLOR"

pattern Slate :: InputLossImageType
pattern Slate = InputLossImageType' "SLATE"

{-# COMPLETE
  Color,
  Slate,
  InputLossImageType'
  #-}
