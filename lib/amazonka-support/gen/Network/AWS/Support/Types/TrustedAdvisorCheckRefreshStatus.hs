-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Support.Types.TrustedAdvisorCheckRefreshStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Support.Types.TrustedAdvisorCheckRefreshStatus
  ( TrustedAdvisorCheckRefreshStatus (..),

    -- * Smart constructor
    mkTrustedAdvisorCheckRefreshStatus,

    -- * Lenses
    tacrsCheckId,
    tacrsStatus,
    tacrsMillisUntilNextRefreshable,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | The refresh status of a Trusted Advisor check.
--
-- /See:/ 'mkTrustedAdvisorCheckRefreshStatus' smart constructor.
data TrustedAdvisorCheckRefreshStatus = TrustedAdvisorCheckRefreshStatus'
  { checkId ::
      Lude.Text,
    status :: Lude.Text,
    millisUntilNextRefreshable ::
      Lude.Integer
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'TrustedAdvisorCheckRefreshStatus' with the minimum fields required to make a request.
--
-- * 'checkId' - The unique identifier for the Trusted Advisor check.
-- * 'millisUntilNextRefreshable' - The amount of time, in milliseconds, until the Trusted Advisor check is eligible for refresh.
-- * 'status' - The status of the Trusted Advisor check for which a refresh has been requested:
--
--
--     * @none:@ The check is not refreshed or the non-success status exceeds the timeout
--
--
--     * @enqueued:@ The check refresh requests has entered the refresh queue
--
--
--     * @processing:@ The check refresh request is picked up by the rule processing engine
--
--
--     * @success:@ The check is successfully refreshed
--
--
--     * @abandoned:@ The check refresh has failed
mkTrustedAdvisorCheckRefreshStatus ::
  -- | 'checkId'
  Lude.Text ->
  -- | 'status'
  Lude.Text ->
  -- | 'millisUntilNextRefreshable'
  Lude.Integer ->
  TrustedAdvisorCheckRefreshStatus
mkTrustedAdvisorCheckRefreshStatus
  pCheckId_
  pStatus_
  pMillisUntilNextRefreshable_ =
    TrustedAdvisorCheckRefreshStatus'
      { checkId = pCheckId_,
        status = pStatus_,
        millisUntilNextRefreshable = pMillisUntilNextRefreshable_
      }

-- | The unique identifier for the Trusted Advisor check.
--
-- /Note:/ Consider using 'checkId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tacrsCheckId :: Lens.Lens' TrustedAdvisorCheckRefreshStatus Lude.Text
tacrsCheckId = Lens.lens (checkId :: TrustedAdvisorCheckRefreshStatus -> Lude.Text) (\s a -> s {checkId = a} :: TrustedAdvisorCheckRefreshStatus)
{-# DEPRECATED tacrsCheckId "Use generic-lens or generic-optics with 'checkId' instead." #-}

-- | The status of the Trusted Advisor check for which a refresh has been requested:
--
--
--     * @none:@ The check is not refreshed or the non-success status exceeds the timeout
--
--
--     * @enqueued:@ The check refresh requests has entered the refresh queue
--
--
--     * @processing:@ The check refresh request is picked up by the rule processing engine
--
--
--     * @success:@ The check is successfully refreshed
--
--
--     * @abandoned:@ The check refresh has failed
--
--
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tacrsStatus :: Lens.Lens' TrustedAdvisorCheckRefreshStatus Lude.Text
tacrsStatus = Lens.lens (status :: TrustedAdvisorCheckRefreshStatus -> Lude.Text) (\s a -> s {status = a} :: TrustedAdvisorCheckRefreshStatus)
{-# DEPRECATED tacrsStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | The amount of time, in milliseconds, until the Trusted Advisor check is eligible for refresh.
--
-- /Note:/ Consider using 'millisUntilNextRefreshable' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tacrsMillisUntilNextRefreshable :: Lens.Lens' TrustedAdvisorCheckRefreshStatus Lude.Integer
tacrsMillisUntilNextRefreshable = Lens.lens (millisUntilNextRefreshable :: TrustedAdvisorCheckRefreshStatus -> Lude.Integer) (\s a -> s {millisUntilNextRefreshable = a} :: TrustedAdvisorCheckRefreshStatus)
{-# DEPRECATED tacrsMillisUntilNextRefreshable "Use generic-lens or generic-optics with 'millisUntilNextRefreshable' instead." #-}

instance Lude.FromJSON TrustedAdvisorCheckRefreshStatus where
  parseJSON =
    Lude.withObject
      "TrustedAdvisorCheckRefreshStatus"
      ( \x ->
          TrustedAdvisorCheckRefreshStatus'
            Lude.<$> (x Lude..: "checkId")
            Lude.<*> (x Lude..: "status")
            Lude.<*> (x Lude..: "millisUntilNextRefreshable")
      )
