-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.CACertificateStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.CACertificateStatus
  ( CACertificateStatus
      ( CACertificateStatus',
        CACSActive,
        CACSInactive
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype CACertificateStatus = CACertificateStatus' Lude.Text
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

pattern CACSActive :: CACertificateStatus
pattern CACSActive = CACertificateStatus' "ACTIVE"

pattern CACSInactive :: CACertificateStatus
pattern CACSInactive = CACertificateStatus' "INACTIVE"

{-# COMPLETE
  CACSActive,
  CACSInactive,
  CACertificateStatus'
  #-}
