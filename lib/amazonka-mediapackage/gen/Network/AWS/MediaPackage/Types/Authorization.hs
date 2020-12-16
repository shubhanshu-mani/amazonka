{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.Authorization
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.Authorization
  ( Authorization (..),

    -- * Smart constructor
    mkAuthorization,

    -- * Lenses
    aCdnIdentifierSecret,
    aSecretsRoleARN,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | CDN Authorization credentials
--
-- /See:/ 'mkAuthorization' smart constructor.
data Authorization = Authorization'
  { -- | The Amazon Resource Name (ARN) for the secret in Secrets Manager that your Content Distribution Network (CDN) uses for authorization to access your endpoint.
    cdnIdentifierSecret :: Lude.Text,
    -- | The Amazon Resource Name (ARN) for the IAM role that allows MediaPackage to communicate with AWS Secrets Manager.
    secretsRoleARN :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'Authorization' with the minimum fields required to make a request.
--
-- * 'cdnIdentifierSecret' - The Amazon Resource Name (ARN) for the secret in Secrets Manager that your Content Distribution Network (CDN) uses for authorization to access your endpoint.
-- * 'secretsRoleARN' - The Amazon Resource Name (ARN) for the IAM role that allows MediaPackage to communicate with AWS Secrets Manager.
mkAuthorization ::
  -- | 'cdnIdentifierSecret'
  Lude.Text ->
  -- | 'secretsRoleARN'
  Lude.Text ->
  Authorization
mkAuthorization pCdnIdentifierSecret_ pSecretsRoleARN_ =
  Authorization'
    { cdnIdentifierSecret = pCdnIdentifierSecret_,
      secretsRoleARN = pSecretsRoleARN_
    }

-- | The Amazon Resource Name (ARN) for the secret in Secrets Manager that your Content Distribution Network (CDN) uses for authorization to access your endpoint.
--
-- /Note:/ Consider using 'cdnIdentifierSecret' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aCdnIdentifierSecret :: Lens.Lens' Authorization Lude.Text
aCdnIdentifierSecret = Lens.lens (cdnIdentifierSecret :: Authorization -> Lude.Text) (\s a -> s {cdnIdentifierSecret = a} :: Authorization)
{-# DEPRECATED aCdnIdentifierSecret "Use generic-lens or generic-optics with 'cdnIdentifierSecret' instead." #-}

-- | The Amazon Resource Name (ARN) for the IAM role that allows MediaPackage to communicate with AWS Secrets Manager.
--
-- /Note:/ Consider using 'secretsRoleARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aSecretsRoleARN :: Lens.Lens' Authorization Lude.Text
aSecretsRoleARN = Lens.lens (secretsRoleARN :: Authorization -> Lude.Text) (\s a -> s {secretsRoleARN = a} :: Authorization)
{-# DEPRECATED aSecretsRoleARN "Use generic-lens or generic-optics with 'secretsRoleARN' instead." #-}

instance Lude.FromJSON Authorization where
  parseJSON =
    Lude.withObject
      "Authorization"
      ( \x ->
          Authorization'
            Lude.<$> (x Lude..: "cdnIdentifierSecret")
            Lude.<*> (x Lude..: "secretsRoleArn")
      )

instance Lude.ToJSON Authorization where
  toJSON Authorization' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("cdnIdentifierSecret" Lude..= cdnIdentifierSecret),
            Lude.Just ("secretsRoleArn" Lude..= secretsRoleARN)
          ]
      )