{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TargetPlatformArch
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TargetPlatformArch
  ( TargetPlatformArch
      ( TargetPlatformArch',
        X86_64,
        X86,
        ARM64,
        ArmEabi,
        ArmEabihf
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype TargetPlatformArch = TargetPlatformArch' Lude.Text
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

pattern X86_64 :: TargetPlatformArch
pattern X86_64 = TargetPlatformArch' "X86_64"

pattern X86 :: TargetPlatformArch
pattern X86 = TargetPlatformArch' "X86"

pattern ARM64 :: TargetPlatformArch
pattern ARM64 = TargetPlatformArch' "ARM64"

pattern ArmEabi :: TargetPlatformArch
pattern ArmEabi = TargetPlatformArch' "ARM_EABI"

pattern ArmEabihf :: TargetPlatformArch
pattern ArmEabihf = TargetPlatformArch' "ARM_EABIHF"

{-# COMPLETE
  X86_64,
  X86,
  ARM64,
  ArmEabi,
  ArmEabihf,
  TargetPlatformArch'
  #-}