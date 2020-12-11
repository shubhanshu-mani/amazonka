-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.AccessKeyInfo
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.AccessKeyInfo
  ( AccessKeyInfo (..),

    -- * Smart constructor
    mkAccessKeyInfo,

    -- * Lenses
    akiCreateDate,
    akiUserName,
    akiAccessKeyId,
    akiStatus,
    akiSecretAccessKey,
  )
where

import Network.AWS.IAM.Types.StatusType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Contains information about an AWS access key.
--
-- This data type is used as a response element in the 'CreateAccessKey' and 'ListAccessKeys' operations.
--
-- /See:/ 'mkAccessKeyInfo' smart constructor.
data AccessKeyInfo = AccessKeyInfo'
  { createDate ::
      Lude.Maybe Lude.ISO8601,
    userName :: Lude.Text,
    accessKeyId :: AccessKey,
    status :: StatusType,
    secretAccessKey :: Lude.Sensitive Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'AccessKeyInfo' with the minimum fields required to make a request.
--
-- * 'accessKeyId' - The ID for this access key.
-- * 'createDate' - The date when the access key was created.
-- * 'secretAccessKey' - The secret key used to sign requests.
-- * 'status' - The status of the access key. @Active@ means that the key is valid for API calls, while @Inactive@ means it is not.
-- * 'userName' - The name of the IAM user that the access key is associated with.
mkAccessKeyInfo ::
  -- | 'userName'
  Lude.Text ->
  -- | 'accessKeyId'
  AccessKey ->
  -- | 'status'
  StatusType ->
  -- | 'secretAccessKey'
  Lude.Sensitive Lude.Text ->
  AccessKeyInfo
mkAccessKeyInfo pUserName_ pAccessKeyId_ pStatus_ pSecretAccessKey_ =
  AccessKeyInfo'
    { createDate = Lude.Nothing,
      userName = pUserName_,
      accessKeyId = pAccessKeyId_,
      status = pStatus_,
      secretAccessKey = pSecretAccessKey_
    }

-- | The date when the access key was created.
--
-- /Note:/ Consider using 'createDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
akiCreateDate :: Lens.Lens' AccessKeyInfo (Lude.Maybe Lude.ISO8601)
akiCreateDate = Lens.lens (createDate :: AccessKeyInfo -> Lude.Maybe Lude.ISO8601) (\s a -> s {createDate = a} :: AccessKeyInfo)
{-# DEPRECATED akiCreateDate "Use generic-lens or generic-optics with 'createDate' instead." #-}

-- | The name of the IAM user that the access key is associated with.
--
-- /Note:/ Consider using 'userName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
akiUserName :: Lens.Lens' AccessKeyInfo Lude.Text
akiUserName = Lens.lens (userName :: AccessKeyInfo -> Lude.Text) (\s a -> s {userName = a} :: AccessKeyInfo)
{-# DEPRECATED akiUserName "Use generic-lens or generic-optics with 'userName' instead." #-}

-- | The ID for this access key.
--
-- /Note:/ Consider using 'accessKeyId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
akiAccessKeyId :: Lens.Lens' AccessKeyInfo AccessKey
akiAccessKeyId = Lens.lens (accessKeyId :: AccessKeyInfo -> AccessKey) (\s a -> s {accessKeyId = a} :: AccessKeyInfo)
{-# DEPRECATED akiAccessKeyId "Use generic-lens or generic-optics with 'accessKeyId' instead." #-}

-- | The status of the access key. @Active@ means that the key is valid for API calls, while @Inactive@ means it is not.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
akiStatus :: Lens.Lens' AccessKeyInfo StatusType
akiStatus = Lens.lens (status :: AccessKeyInfo -> StatusType) (\s a -> s {status = a} :: AccessKeyInfo)
{-# DEPRECATED akiStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | The secret key used to sign requests.
--
-- /Note:/ Consider using 'secretAccessKey' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
akiSecretAccessKey :: Lens.Lens' AccessKeyInfo (Lude.Sensitive Lude.Text)
akiSecretAccessKey = Lens.lens (secretAccessKey :: AccessKeyInfo -> Lude.Sensitive Lude.Text) (\s a -> s {secretAccessKey = a} :: AccessKeyInfo)
{-# DEPRECATED akiSecretAccessKey "Use generic-lens or generic-optics with 'secretAccessKey' instead." #-}

instance Lude.FromXML AccessKeyInfo where
  parseXML x =
    AccessKeyInfo'
      Lude.<$> (x Lude..@? "CreateDate")
      Lude.<*> (x Lude..@ "UserName")
      Lude.<*> (x Lude..@ "AccessKeyId")
      Lude.<*> (x Lude..@ "Status")
      Lude.<*> (x Lude..@ "SecretAccessKey")
