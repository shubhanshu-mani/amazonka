-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.EBSOptimizedSupport
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.EBSOptimizedSupport
  ( EBSOptimizedSupport
      ( EBSOptimizedSupport',
        EOSDefault,
        EOSSupported,
        EOSUnsupported
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype EBSOptimizedSupport = EBSOptimizedSupport' Lude.Text
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

pattern EOSDefault :: EBSOptimizedSupport
pattern EOSDefault = EBSOptimizedSupport' "default"

pattern EOSSupported :: EBSOptimizedSupport
pattern EOSSupported = EBSOptimizedSupport' "supported"

pattern EOSUnsupported :: EBSOptimizedSupport
pattern EOSUnsupported = EBSOptimizedSupport' "unsupported"

{-# COMPLETE
  EOSDefault,
  EOSSupported,
  EOSUnsupported,
  EBSOptimizedSupport'
  #-}
