{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Translate.Types.EncryptionKey
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Translate.Types.EncryptionKey
  ( EncryptionKey (..),

    -- * Smart constructor
    mkEncryptionKey,

    -- * Lenses
    ekId,
    ekType,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.Translate.Types.EncryptionKeyType

-- | The encryption key used to encrypt this object.
--
-- /See:/ 'mkEncryptionKey' smart constructor.
data EncryptionKey = EncryptionKey'
  { -- | The Amazon Resource Name (ARN) of the encryption key being used to encrypt the custom terminology.
    id :: Lude.Text,
    -- | The type of encryption key used by Amazon Translate to encrypt custom terminologies.
    type' :: EncryptionKeyType
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'EncryptionKey' with the minimum fields required to make a request.
--
-- * 'id' - The Amazon Resource Name (ARN) of the encryption key being used to encrypt the custom terminology.
-- * 'type'' - The type of encryption key used by Amazon Translate to encrypt custom terminologies.
mkEncryptionKey ::
  -- | 'id'
  Lude.Text ->
  -- | 'type''
  EncryptionKeyType ->
  EncryptionKey
mkEncryptionKey pId_ pType_ =
  EncryptionKey' {id = pId_, type' = pType_}

-- | The Amazon Resource Name (ARN) of the encryption key being used to encrypt the custom terminology.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ekId :: Lens.Lens' EncryptionKey Lude.Text
ekId = Lens.lens (id :: EncryptionKey -> Lude.Text) (\s a -> s {id = a} :: EncryptionKey)
{-# DEPRECATED ekId "Use generic-lens or generic-optics with 'id' instead." #-}

-- | The type of encryption key used by Amazon Translate to encrypt custom terminologies.
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ekType :: Lens.Lens' EncryptionKey EncryptionKeyType
ekType = Lens.lens (type' :: EncryptionKey -> EncryptionKeyType) (\s a -> s {type' = a} :: EncryptionKey)
{-# DEPRECATED ekType "Use generic-lens or generic-optics with 'type'' instead." #-}

instance Lude.FromJSON EncryptionKey where
  parseJSON =
    Lude.withObject
      "EncryptionKey"
      ( \x ->
          EncryptionKey'
            Lude.<$> (x Lude..: "Id") Lude.<*> (x Lude..: "Type")
      )

instance Lude.ToJSON EncryptionKey where
  toJSON EncryptionKey' {..} =
    Lude.object
      ( Lude.catMaybes
          [Lude.Just ("Id" Lude..= id), Lude.Just ("Type" Lude..= type')]
      )