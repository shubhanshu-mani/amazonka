-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.DirectoryType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.DirectoryType
  ( DirectoryType
      ( DirectoryType',
        ConnectManaged,
        ExistingDirectory,
        Saml
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype DirectoryType = DirectoryType' Lude.Text
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

pattern ConnectManaged :: DirectoryType
pattern ConnectManaged = DirectoryType' "CONNECT_MANAGED"

pattern ExistingDirectory :: DirectoryType
pattern ExistingDirectory = DirectoryType' "EXISTING_DIRECTORY"

pattern Saml :: DirectoryType
pattern Saml = DirectoryType' "SAML"

{-# COMPLETE
  ConnectManaged,
  ExistingDirectory,
  Saml,
  DirectoryType'
  #-}
