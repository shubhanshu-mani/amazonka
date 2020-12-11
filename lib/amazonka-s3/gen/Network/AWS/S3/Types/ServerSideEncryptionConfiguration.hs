-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.ServerSideEncryptionConfiguration
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ServerSideEncryptionConfiguration
  ( ServerSideEncryptionConfiguration (..),

    -- * Smart constructor
    mkServerSideEncryptionConfiguration,

    -- * Lenses
    ssecRules,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.ServerSideEncryptionRule

-- | Specifies the default server-side-encryption configuration.
--
-- /See:/ 'mkServerSideEncryptionConfiguration' smart constructor.
newtype ServerSideEncryptionConfiguration = ServerSideEncryptionConfiguration'
  { rules ::
      [ServerSideEncryptionRule]
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ServerSideEncryptionConfiguration' with the minimum fields required to make a request.
--
-- * 'rules' - Container for information about a particular server-side encryption configuration rule.
mkServerSideEncryptionConfiguration ::
  ServerSideEncryptionConfiguration
mkServerSideEncryptionConfiguration =
  ServerSideEncryptionConfiguration' {rules = Lude.mempty}

-- | Container for information about a particular server-side encryption configuration rule.
--
-- /Note:/ Consider using 'rules' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssecRules :: Lens.Lens' ServerSideEncryptionConfiguration [ServerSideEncryptionRule]
ssecRules = Lens.lens (rules :: ServerSideEncryptionConfiguration -> [ServerSideEncryptionRule]) (\s a -> s {rules = a} :: ServerSideEncryptionConfiguration)
{-# DEPRECATED ssecRules "Use generic-lens or generic-optics with 'rules' instead." #-}

instance Lude.FromXML ServerSideEncryptionConfiguration where
  parseXML x =
    ServerSideEncryptionConfiguration'
      Lude.<$> (Lude.parseXMLList "Rule" x)

instance Lude.ToXML ServerSideEncryptionConfiguration where
  toXML ServerSideEncryptionConfiguration' {..} =
    Lude.mconcat [Lude.toXMLList "Rule" rules]
