{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.AssociationStatusCode
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AssociationStatusCode
  ( AssociationStatusCode
      ( AssociationStatusCode',
        ASCAssociating,
        ASCAssociated,
        ASCAssociationFailed,
        ASCDisassociating,
        ASCDisassociated
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype AssociationStatusCode = AssociationStatusCode' Lude.Text
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

pattern ASCAssociating :: AssociationStatusCode
pattern ASCAssociating = AssociationStatusCode' "associating"

pattern ASCAssociated :: AssociationStatusCode
pattern ASCAssociated = AssociationStatusCode' "associated"

pattern ASCAssociationFailed :: AssociationStatusCode
pattern ASCAssociationFailed = AssociationStatusCode' "association-failed"

pattern ASCDisassociating :: AssociationStatusCode
pattern ASCDisassociating = AssociationStatusCode' "disassociating"

pattern ASCDisassociated :: AssociationStatusCode
pattern ASCDisassociated = AssociationStatusCode' "disassociated"

{-# COMPLETE
  ASCAssociating,
  ASCAssociated,
  ASCAssociationFailed,
  ASCDisassociating,
  ASCDisassociated,
  AssociationStatusCode'
  #-}