{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Support.Types.TrustedAdvisorCheckResult
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Support.Types.TrustedAdvisorCheckResult
  ( TrustedAdvisorCheckResult (..),

    -- * Smart constructor
    mkTrustedAdvisorCheckResult,

    -- * Lenses
    tacrCategorySpecificSummary,
    tacrStatus,
    tacrCheckId,
    tacrFlaggedResources,
    tacrResourcesSummary,
    tacrTimestamp,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.Support.Types.TrustedAdvisorCategorySpecificSummary
import Network.AWS.Support.Types.TrustedAdvisorResourceDetail
import Network.AWS.Support.Types.TrustedAdvisorResourcesSummary

-- | The results of a Trusted Advisor check returned by 'DescribeTrustedAdvisorCheckResult' .
--
-- /See:/ 'mkTrustedAdvisorCheckResult' smart constructor.
data TrustedAdvisorCheckResult = TrustedAdvisorCheckResult'
  { -- | Summary information that relates to the category of the check. Cost Optimizing is the only category that is currently supported.
    categorySpecificSummary :: TrustedAdvisorCategorySpecificSummary,
    -- | The alert status of the check: "ok" (green), "warning" (yellow), "error" (red), or "not_available".
    status :: Lude.Text,
    -- | The unique identifier for the Trusted Advisor check.
    checkId :: Lude.Text,
    -- | The details about each resource listed in the check result.
    flaggedResources :: [TrustedAdvisorResourceDetail],
    resourcesSummary :: TrustedAdvisorResourcesSummary,
    -- | The time of the last refresh of the check.
    timestamp :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'TrustedAdvisorCheckResult' with the minimum fields required to make a request.
--
-- * 'categorySpecificSummary' - Summary information that relates to the category of the check. Cost Optimizing is the only category that is currently supported.
-- * 'status' - The alert status of the check: "ok" (green), "warning" (yellow), "error" (red), or "not_available".
-- * 'checkId' - The unique identifier for the Trusted Advisor check.
-- * 'flaggedResources' - The details about each resource listed in the check result.
-- * 'resourcesSummary' -
-- * 'timestamp' - The time of the last refresh of the check.
mkTrustedAdvisorCheckResult ::
  -- | 'categorySpecificSummary'
  TrustedAdvisorCategorySpecificSummary ->
  -- | 'status'
  Lude.Text ->
  -- | 'checkId'
  Lude.Text ->
  -- | 'resourcesSummary'
  TrustedAdvisorResourcesSummary ->
  -- | 'timestamp'
  Lude.Text ->
  TrustedAdvisorCheckResult
mkTrustedAdvisorCheckResult
  pCategorySpecificSummary_
  pStatus_
  pCheckId_
  pResourcesSummary_
  pTimestamp_ =
    TrustedAdvisorCheckResult'
      { categorySpecificSummary =
          pCategorySpecificSummary_,
        status = pStatus_,
        checkId = pCheckId_,
        flaggedResources = Lude.mempty,
        resourcesSummary = pResourcesSummary_,
        timestamp = pTimestamp_
      }

-- | Summary information that relates to the category of the check. Cost Optimizing is the only category that is currently supported.
--
-- /Note:/ Consider using 'categorySpecificSummary' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tacrCategorySpecificSummary :: Lens.Lens' TrustedAdvisorCheckResult TrustedAdvisorCategorySpecificSummary
tacrCategorySpecificSummary = Lens.lens (categorySpecificSummary :: TrustedAdvisorCheckResult -> TrustedAdvisorCategorySpecificSummary) (\s a -> s {categorySpecificSummary = a} :: TrustedAdvisorCheckResult)
{-# DEPRECATED tacrCategorySpecificSummary "Use generic-lens or generic-optics with 'categorySpecificSummary' instead." #-}

-- | The alert status of the check: "ok" (green), "warning" (yellow), "error" (red), or "not_available".
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tacrStatus :: Lens.Lens' TrustedAdvisorCheckResult Lude.Text
tacrStatus = Lens.lens (status :: TrustedAdvisorCheckResult -> Lude.Text) (\s a -> s {status = a} :: TrustedAdvisorCheckResult)
{-# DEPRECATED tacrStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | The unique identifier for the Trusted Advisor check.
--
-- /Note:/ Consider using 'checkId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tacrCheckId :: Lens.Lens' TrustedAdvisorCheckResult Lude.Text
tacrCheckId = Lens.lens (checkId :: TrustedAdvisorCheckResult -> Lude.Text) (\s a -> s {checkId = a} :: TrustedAdvisorCheckResult)
{-# DEPRECATED tacrCheckId "Use generic-lens or generic-optics with 'checkId' instead." #-}

-- | The details about each resource listed in the check result.
--
-- /Note:/ Consider using 'flaggedResources' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tacrFlaggedResources :: Lens.Lens' TrustedAdvisorCheckResult [TrustedAdvisorResourceDetail]
tacrFlaggedResources = Lens.lens (flaggedResources :: TrustedAdvisorCheckResult -> [TrustedAdvisorResourceDetail]) (\s a -> s {flaggedResources = a} :: TrustedAdvisorCheckResult)
{-# DEPRECATED tacrFlaggedResources "Use generic-lens or generic-optics with 'flaggedResources' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'resourcesSummary' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tacrResourcesSummary :: Lens.Lens' TrustedAdvisorCheckResult TrustedAdvisorResourcesSummary
tacrResourcesSummary = Lens.lens (resourcesSummary :: TrustedAdvisorCheckResult -> TrustedAdvisorResourcesSummary) (\s a -> s {resourcesSummary = a} :: TrustedAdvisorCheckResult)
{-# DEPRECATED tacrResourcesSummary "Use generic-lens or generic-optics with 'resourcesSummary' instead." #-}

-- | The time of the last refresh of the check.
--
-- /Note:/ Consider using 'timestamp' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tacrTimestamp :: Lens.Lens' TrustedAdvisorCheckResult Lude.Text
tacrTimestamp = Lens.lens (timestamp :: TrustedAdvisorCheckResult -> Lude.Text) (\s a -> s {timestamp = a} :: TrustedAdvisorCheckResult)
{-# DEPRECATED tacrTimestamp "Use generic-lens or generic-optics with 'timestamp' instead." #-}

instance Lude.FromJSON TrustedAdvisorCheckResult where
  parseJSON =
    Lude.withObject
      "TrustedAdvisorCheckResult"
      ( \x ->
          TrustedAdvisorCheckResult'
            Lude.<$> (x Lude..: "categorySpecificSummary")
            Lude.<*> (x Lude..: "status")
            Lude.<*> (x Lude..: "checkId")
            Lude.<*> (x Lude..:? "flaggedResources" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..: "resourcesSummary")
            Lude.<*> (x Lude..: "timestamp")
      )