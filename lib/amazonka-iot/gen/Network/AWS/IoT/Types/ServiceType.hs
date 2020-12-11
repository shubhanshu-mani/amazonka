-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.ServiceType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ServiceType
  ( ServiceType
      ( ServiceType',
        CredentialProvider,
        Data,
        Jobs
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ServiceType = ServiceType' Lude.Text
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

pattern CredentialProvider :: ServiceType
pattern CredentialProvider = ServiceType' "CREDENTIAL_PROVIDER"

pattern Data :: ServiceType
pattern Data = ServiceType' "DATA"

pattern Jobs :: ServiceType
pattern Jobs = ServiceType' "JOBS"

{-# COMPLETE
  CredentialProvider,
  Data,
  Jobs,
  ServiceType'
  #-}
