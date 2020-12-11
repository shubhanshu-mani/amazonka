-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.EnableIOTLoggingParams
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.EnableIOTLoggingParams
  ( EnableIOTLoggingParams (..),

    -- * Smart constructor
    mkEnableIOTLoggingParams,

    -- * Lenses
    eiotlpRoleARNForLogging,
    eiotlpLogLevel,
  )
where

import Network.AWS.IoT.Types.LogLevel
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Parameters used when defining a mitigation action that enable AWS IoT logging.
--
-- /See:/ 'mkEnableIOTLoggingParams' smart constructor.
data EnableIOTLoggingParams = EnableIOTLoggingParams'
  { roleARNForLogging ::
      Lude.Text,
    logLevel :: LogLevel
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'EnableIOTLoggingParams' with the minimum fields required to make a request.
--
-- * 'logLevel' - Specifies the types of information to be logged.
-- * 'roleARNForLogging' - The ARN of the IAM role used for logging.
mkEnableIOTLoggingParams ::
  -- | 'roleARNForLogging'
  Lude.Text ->
  -- | 'logLevel'
  LogLevel ->
  EnableIOTLoggingParams
mkEnableIOTLoggingParams pRoleARNForLogging_ pLogLevel_ =
  EnableIOTLoggingParams'
    { roleARNForLogging = pRoleARNForLogging_,
      logLevel = pLogLevel_
    }

-- | The ARN of the IAM role used for logging.
--
-- /Note:/ Consider using 'roleARNForLogging' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eiotlpRoleARNForLogging :: Lens.Lens' EnableIOTLoggingParams Lude.Text
eiotlpRoleARNForLogging = Lens.lens (roleARNForLogging :: EnableIOTLoggingParams -> Lude.Text) (\s a -> s {roleARNForLogging = a} :: EnableIOTLoggingParams)
{-# DEPRECATED eiotlpRoleARNForLogging "Use generic-lens or generic-optics with 'roleARNForLogging' instead." #-}

-- | Specifies the types of information to be logged.
--
-- /Note:/ Consider using 'logLevel' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eiotlpLogLevel :: Lens.Lens' EnableIOTLoggingParams LogLevel
eiotlpLogLevel = Lens.lens (logLevel :: EnableIOTLoggingParams -> LogLevel) (\s a -> s {logLevel = a} :: EnableIOTLoggingParams)
{-# DEPRECATED eiotlpLogLevel "Use generic-lens or generic-optics with 'logLevel' instead." #-}

instance Lude.FromJSON EnableIOTLoggingParams where
  parseJSON =
    Lude.withObject
      "EnableIOTLoggingParams"
      ( \x ->
          EnableIOTLoggingParams'
            Lude.<$> (x Lude..: "roleArnForLogging") Lude.<*> (x Lude..: "logLevel")
      )

instance Lude.ToJSON EnableIOTLoggingParams where
  toJSON EnableIOTLoggingParams' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("roleArnForLogging" Lude..= roleARNForLogging),
            Lude.Just ("logLevel" Lude..= logLevel)
          ]
      )
