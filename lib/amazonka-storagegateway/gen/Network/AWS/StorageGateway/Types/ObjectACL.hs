{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.ObjectACL
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.ObjectACL
  ( ObjectACL
      ( ObjectACL',
        Private,
        PublicRead,
        PublicReadWrite,
        AuthenticatedRead,
        BucketOwnerRead,
        BucketOwnerFullControl,
        AWSExecRead
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

-- | A value that sets the access control list (ACL) permission for objects in the S3 bucket that a file gateway puts objects into. The default value is @private@ .
newtype ObjectACL = ObjectACL' Lude.Text
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

pattern Private :: ObjectACL
pattern Private = ObjectACL' "private"

pattern PublicRead :: ObjectACL
pattern PublicRead = ObjectACL' "public-read"

pattern PublicReadWrite :: ObjectACL
pattern PublicReadWrite = ObjectACL' "public-read-write"

pattern AuthenticatedRead :: ObjectACL
pattern AuthenticatedRead = ObjectACL' "authenticated-read"

pattern BucketOwnerRead :: ObjectACL
pattern BucketOwnerRead = ObjectACL' "bucket-owner-read"

pattern BucketOwnerFullControl :: ObjectACL
pattern BucketOwnerFullControl = ObjectACL' "bucket-owner-full-control"

pattern AWSExecRead :: ObjectACL
pattern AWSExecRead = ObjectACL' "aws-exec-read"

{-# COMPLETE
  Private,
  PublicRead,
  PublicReadWrite,
  AuthenticatedRead,
  BucketOwnerRead,
  BucketOwnerFullControl,
  AWSExecRead,
  ObjectACL'
  #-}