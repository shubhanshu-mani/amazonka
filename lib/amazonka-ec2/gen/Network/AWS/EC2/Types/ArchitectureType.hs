{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ArchitectureType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ArchitectureType
  ( ArchitectureType
      ( ArchitectureType',
        ATI386,
        ATX86_64,
        ATARM64
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ArchitectureType = ArchitectureType' Lude.Text
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

pattern ATI386 :: ArchitectureType
pattern ATI386 = ArchitectureType' "i386"

pattern ATX86_64 :: ArchitectureType
pattern ATX86_64 = ArchitectureType' "x86_64"

pattern ATARM64 :: ArchitectureType
pattern ATARM64 = ArchitectureType' "arm64"

{-# COMPLETE
  ATI386,
  ATX86_64,
  ATARM64,
  ArchitectureType'
  #-}