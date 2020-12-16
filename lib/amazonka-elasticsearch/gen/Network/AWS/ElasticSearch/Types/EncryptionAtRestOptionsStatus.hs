{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.EncryptionAtRestOptionsStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.EncryptionAtRestOptionsStatus
  ( EncryptionAtRestOptionsStatus (..),

    -- * Smart constructor
    mkEncryptionAtRestOptionsStatus,

    -- * Lenses
    earosStatus,
    earosOptions,
  )
where

import Network.AWS.ElasticSearch.Types.EncryptionAtRestOptions
import Network.AWS.ElasticSearch.Types.OptionStatus
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Status of the Encryption At Rest options for the specified Elasticsearch domain.
--
-- /See:/ 'mkEncryptionAtRestOptionsStatus' smart constructor.
data EncryptionAtRestOptionsStatus = EncryptionAtRestOptionsStatus'
  { -- | Specifies the status of the Encryption At Rest options for the specified Elasticsearch domain.
    status :: OptionStatus,
    -- | Specifies the Encryption At Rest options for the specified Elasticsearch domain.
    options :: EncryptionAtRestOptions
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'EncryptionAtRestOptionsStatus' with the minimum fields required to make a request.
--
-- * 'status' - Specifies the status of the Encryption At Rest options for the specified Elasticsearch domain.
-- * 'options' - Specifies the Encryption At Rest options for the specified Elasticsearch domain.
mkEncryptionAtRestOptionsStatus ::
  -- | 'status'
  OptionStatus ->
  -- | 'options'
  EncryptionAtRestOptions ->
  EncryptionAtRestOptionsStatus
mkEncryptionAtRestOptionsStatus pStatus_ pOptions_ =
  EncryptionAtRestOptionsStatus'
    { status = pStatus_,
      options = pOptions_
    }

-- | Specifies the status of the Encryption At Rest options for the specified Elasticsearch domain.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
earosStatus :: Lens.Lens' EncryptionAtRestOptionsStatus OptionStatus
earosStatus = Lens.lens (status :: EncryptionAtRestOptionsStatus -> OptionStatus) (\s a -> s {status = a} :: EncryptionAtRestOptionsStatus)
{-# DEPRECATED earosStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | Specifies the Encryption At Rest options for the specified Elasticsearch domain.
--
-- /Note:/ Consider using 'options' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
earosOptions :: Lens.Lens' EncryptionAtRestOptionsStatus EncryptionAtRestOptions
earosOptions = Lens.lens (options :: EncryptionAtRestOptionsStatus -> EncryptionAtRestOptions) (\s a -> s {options = a} :: EncryptionAtRestOptionsStatus)
{-# DEPRECATED earosOptions "Use generic-lens or generic-optics with 'options' instead." #-}

instance Lude.FromJSON EncryptionAtRestOptionsStatus where
  parseJSON =
    Lude.withObject
      "EncryptionAtRestOptionsStatus"
      ( \x ->
          EncryptionAtRestOptionsStatus'
            Lude.<$> (x Lude..: "Status") Lude.<*> (x Lude..: "Options")
      )