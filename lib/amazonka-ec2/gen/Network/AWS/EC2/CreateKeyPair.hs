{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.CreateKeyPair
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a 2048-bit RSA key pair with the specified name. Amazon EC2 stores the public key and displays the private key for you to save to a file. The private key is returned as an unencrypted PEM encoded PKCS#1 private key. If a key with the specified name already exists, Amazon EC2 returns an error.
--
-- You can have up to five thousand key pairs per Region.
-- The key pair returned to you is available only in the Region in which you create it. If you prefer, you can create your own key pair using a third-party tool and upload it to any Region using 'ImportKeyPair' .
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html Key Pairs> in the /Amazon Elastic Compute Cloud User Guide/ .
module Network.AWS.EC2.CreateKeyPair
  ( -- * Creating a request
    CreateKeyPair (..),
    mkCreateKeyPair,

    -- ** Request lenses
    ckpTagSpecifications,
    ckpDryRun,
    ckpKeyName,

    -- * Destructuring the response
    CreateKeyPairResponse (..),
    mkCreateKeyPairResponse,

    -- ** Response lenses
    ckprsKeyPairId,
    ckprsTags,
    ckprsResponseStatus,
    ckprsKeyName,
    ckprsKeyFingerprint,
    ckprsKeyMaterial,
  )
where

import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkCreateKeyPair' smart constructor.
data CreateKeyPair = CreateKeyPair'
  { tagSpecifications ::
      Lude.Maybe [TagSpecification],
    dryRun :: Lude.Maybe Lude.Bool,
    keyName :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateKeyPair' with the minimum fields required to make a request.
--
-- * 'dryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
-- * 'keyName' - A unique name for the key pair.
--
-- Constraints: Up to 255 ASCII characters
-- * 'tagSpecifications' - The tags to apply to the new key pair.
mkCreateKeyPair ::
  -- | 'keyName'
  Lude.Text ->
  CreateKeyPair
mkCreateKeyPair pKeyName_ =
  CreateKeyPair'
    { tagSpecifications = Lude.Nothing,
      dryRun = Lude.Nothing,
      keyName = pKeyName_
    }

-- | The tags to apply to the new key pair.
--
-- /Note:/ Consider using 'tagSpecifications' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ckpTagSpecifications :: Lens.Lens' CreateKeyPair (Lude.Maybe [TagSpecification])
ckpTagSpecifications = Lens.lens (tagSpecifications :: CreateKeyPair -> Lude.Maybe [TagSpecification]) (\s a -> s {tagSpecifications = a} :: CreateKeyPair)
{-# DEPRECATED ckpTagSpecifications "Use generic-lens or generic-optics with 'tagSpecifications' instead." #-}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ckpDryRun :: Lens.Lens' CreateKeyPair (Lude.Maybe Lude.Bool)
ckpDryRun = Lens.lens (dryRun :: CreateKeyPair -> Lude.Maybe Lude.Bool) (\s a -> s {dryRun = a} :: CreateKeyPair)
{-# DEPRECATED ckpDryRun "Use generic-lens or generic-optics with 'dryRun' instead." #-}

-- | A unique name for the key pair.
--
-- Constraints: Up to 255 ASCII characters
--
-- /Note:/ Consider using 'keyName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ckpKeyName :: Lens.Lens' CreateKeyPair Lude.Text
ckpKeyName = Lens.lens (keyName :: CreateKeyPair -> Lude.Text) (\s a -> s {keyName = a} :: CreateKeyPair)
{-# DEPRECATED ckpKeyName "Use generic-lens or generic-optics with 'keyName' instead." #-}

instance Lude.AWSRequest CreateKeyPair where
  type Rs CreateKeyPair = CreateKeyPairResponse
  request = Req.postQuery ec2Service
  response =
    Res.receiveXML
      ( \s h x ->
          CreateKeyPairResponse'
            Lude.<$> (x Lude..@? "keyPairId")
            Lude.<*> ( x Lude..@? "tagSet" Lude..!@ Lude.mempty
                         Lude.>>= Lude.may (Lude.parseXMLList "item")
                     )
            Lude.<*> (Lude.pure (Lude.fromEnum s))
            Lude.<*> (x Lude..@ "keyName")
            Lude.<*> (x Lude..@ "keyFingerprint")
            Lude.<*> (x Lude..@ "keyMaterial")
      )

instance Lude.ToHeaders CreateKeyPair where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToPath CreateKeyPair where
  toPath = Lude.const "/"

instance Lude.ToQuery CreateKeyPair where
  toQuery CreateKeyPair' {..} =
    Lude.mconcat
      [ "Action" Lude.=: ("CreateKeyPair" :: Lude.ByteString),
        "Version" Lude.=: ("2016-11-15" :: Lude.ByteString),
        Lude.toQuery
          (Lude.toQueryList "TagSpecification" Lude.<$> tagSpecifications),
        "DryRun" Lude.=: dryRun,
        "KeyName" Lude.=: keyName
      ]

-- | Describes a key pair.
--
-- /See:/ 'mkCreateKeyPairResponse' smart constructor.
data CreateKeyPairResponse = CreateKeyPairResponse'
  { keyPairId ::
      Lude.Maybe Lude.Text,
    tags :: Lude.Maybe [Tag],
    responseStatus :: Lude.Int,
    keyName :: Lude.Text,
    keyFingerprint :: Lude.Text,
    keyMaterial :: Lude.Sensitive Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateKeyPairResponse' with the minimum fields required to make a request.
--
-- * 'keyFingerprint' - The SHA-1 digest of the DER encoded private key.
-- * 'keyMaterial' - An unencrypted PEM encoded RSA private key.
-- * 'keyName' - The name of the key pair.
-- * 'keyPairId' - The ID of the key pair.
-- * 'responseStatus' - The response status code.
-- * 'tags' - Any tags applied to the key pair.
mkCreateKeyPairResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  -- | 'keyName'
  Lude.Text ->
  -- | 'keyFingerprint'
  Lude.Text ->
  -- | 'keyMaterial'
  Lude.Sensitive Lude.Text ->
  CreateKeyPairResponse
mkCreateKeyPairResponse
  pResponseStatus_
  pKeyName_
  pKeyFingerprint_
  pKeyMaterial_ =
    CreateKeyPairResponse'
      { keyPairId = Lude.Nothing,
        tags = Lude.Nothing,
        responseStatus = pResponseStatus_,
        keyName = pKeyName_,
        keyFingerprint = pKeyFingerprint_,
        keyMaterial = pKeyMaterial_
      }

-- | The ID of the key pair.
--
-- /Note:/ Consider using 'keyPairId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ckprsKeyPairId :: Lens.Lens' CreateKeyPairResponse (Lude.Maybe Lude.Text)
ckprsKeyPairId = Lens.lens (keyPairId :: CreateKeyPairResponse -> Lude.Maybe Lude.Text) (\s a -> s {keyPairId = a} :: CreateKeyPairResponse)
{-# DEPRECATED ckprsKeyPairId "Use generic-lens or generic-optics with 'keyPairId' instead." #-}

-- | Any tags applied to the key pair.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ckprsTags :: Lens.Lens' CreateKeyPairResponse (Lude.Maybe [Tag])
ckprsTags = Lens.lens (tags :: CreateKeyPairResponse -> Lude.Maybe [Tag]) (\s a -> s {tags = a} :: CreateKeyPairResponse)
{-# DEPRECATED ckprsTags "Use generic-lens or generic-optics with 'tags' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ckprsResponseStatus :: Lens.Lens' CreateKeyPairResponse Lude.Int
ckprsResponseStatus = Lens.lens (responseStatus :: CreateKeyPairResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: CreateKeyPairResponse)
{-# DEPRECATED ckprsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}

-- | The name of the key pair.
--
-- /Note:/ Consider using 'keyName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ckprsKeyName :: Lens.Lens' CreateKeyPairResponse Lude.Text
ckprsKeyName = Lens.lens (keyName :: CreateKeyPairResponse -> Lude.Text) (\s a -> s {keyName = a} :: CreateKeyPairResponse)
{-# DEPRECATED ckprsKeyName "Use generic-lens or generic-optics with 'keyName' instead." #-}

-- | The SHA-1 digest of the DER encoded private key.
--
-- /Note:/ Consider using 'keyFingerprint' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ckprsKeyFingerprint :: Lens.Lens' CreateKeyPairResponse Lude.Text
ckprsKeyFingerprint = Lens.lens (keyFingerprint :: CreateKeyPairResponse -> Lude.Text) (\s a -> s {keyFingerprint = a} :: CreateKeyPairResponse)
{-# DEPRECATED ckprsKeyFingerprint "Use generic-lens or generic-optics with 'keyFingerprint' instead." #-}

-- | An unencrypted PEM encoded RSA private key.
--
-- /Note:/ Consider using 'keyMaterial' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ckprsKeyMaterial :: Lens.Lens' CreateKeyPairResponse (Lude.Sensitive Lude.Text)
ckprsKeyMaterial = Lens.lens (keyMaterial :: CreateKeyPairResponse -> Lude.Sensitive Lude.Text) (\s a -> s {keyMaterial = a} :: CreateKeyPairResponse)
{-# DEPRECATED ckprsKeyMaterial "Use generic-lens or generic-optics with 'keyMaterial' instead." #-}
