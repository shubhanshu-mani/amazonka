{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.CostCategory
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.CostCategory
  ( CostCategory (..),

    -- * Smart constructor
    mkCostCategory,

    -- * Lenses
    ccRuleVersion,
    ccRules,
    ccEffectiveStart,
    ccCostCategoryARN,
    ccProcessingStatus,
    ccName,
    ccEffectiveEnd,
  )
where

import Network.AWS.CostExplorer.Types.CostCategoryProcessingStatus
import Network.AWS.CostExplorer.Types.CostCategoryRule
import Network.AWS.CostExplorer.Types.CostCategoryRuleVersion
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | The structure of Cost Categories. This includes detailed metadata and the set of rules for the @CostCategory@ object.
--
-- /See:/ 'mkCostCategory' smart constructor.
data CostCategory = CostCategory'
  { ruleVersion :: CostCategoryRuleVersion,
    -- | Rules are processed in order. If there are multiple rules that match the line item, then the first rule to match is used to determine that Cost Category value.
    rules :: Lude.NonEmpty CostCategoryRule,
    -- | The Cost Category's effective start date.
    effectiveStart :: Lude.Text,
    -- | The unique identifier for your Cost Category.
    costCategoryARN :: Lude.Text,
    -- | The list of processing statuses for Cost Management products for a specific cost category.
    processingStatus :: Lude.Maybe [CostCategoryProcessingStatus],
    name :: Lude.Text,
    -- | The Cost Category's effective end date.
    effectiveEnd :: Lude.Maybe Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CostCategory' with the minimum fields required to make a request.
--
-- * 'ruleVersion' -
-- * 'rules' - Rules are processed in order. If there are multiple rules that match the line item, then the first rule to match is used to determine that Cost Category value.
-- * 'effectiveStart' - The Cost Category's effective start date.
-- * 'costCategoryARN' - The unique identifier for your Cost Category.
-- * 'processingStatus' - The list of processing statuses for Cost Management products for a specific cost category.
-- * 'name' -
-- * 'effectiveEnd' - The Cost Category's effective end date.
mkCostCategory ::
  -- | 'ruleVersion'
  CostCategoryRuleVersion ->
  -- | 'rules'
  Lude.NonEmpty CostCategoryRule ->
  -- | 'effectiveStart'
  Lude.Text ->
  -- | 'costCategoryARN'
  Lude.Text ->
  -- | 'name'
  Lude.Text ->
  CostCategory
mkCostCategory
  pRuleVersion_
  pRules_
  pEffectiveStart_
  pCostCategoryARN_
  pName_ =
    CostCategory'
      { ruleVersion = pRuleVersion_,
        rules = pRules_,
        effectiveStart = pEffectiveStart_,
        costCategoryARN = pCostCategoryARN_,
        processingStatus = Lude.Nothing,
        name = pName_,
        effectiveEnd = Lude.Nothing
      }

-- | Undocumented field.
--
-- /Note:/ Consider using 'ruleVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccRuleVersion :: Lens.Lens' CostCategory CostCategoryRuleVersion
ccRuleVersion = Lens.lens (ruleVersion :: CostCategory -> CostCategoryRuleVersion) (\s a -> s {ruleVersion = a} :: CostCategory)
{-# DEPRECATED ccRuleVersion "Use generic-lens or generic-optics with 'ruleVersion' instead." #-}

-- | Rules are processed in order. If there are multiple rules that match the line item, then the first rule to match is used to determine that Cost Category value.
--
-- /Note:/ Consider using 'rules' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccRules :: Lens.Lens' CostCategory (Lude.NonEmpty CostCategoryRule)
ccRules = Lens.lens (rules :: CostCategory -> Lude.NonEmpty CostCategoryRule) (\s a -> s {rules = a} :: CostCategory)
{-# DEPRECATED ccRules "Use generic-lens or generic-optics with 'rules' instead." #-}

-- | The Cost Category's effective start date.
--
-- /Note:/ Consider using 'effectiveStart' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccEffectiveStart :: Lens.Lens' CostCategory Lude.Text
ccEffectiveStart = Lens.lens (effectiveStart :: CostCategory -> Lude.Text) (\s a -> s {effectiveStart = a} :: CostCategory)
{-# DEPRECATED ccEffectiveStart "Use generic-lens or generic-optics with 'effectiveStart' instead." #-}

-- | The unique identifier for your Cost Category.
--
-- /Note:/ Consider using 'costCategoryARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccCostCategoryARN :: Lens.Lens' CostCategory Lude.Text
ccCostCategoryARN = Lens.lens (costCategoryARN :: CostCategory -> Lude.Text) (\s a -> s {costCategoryARN = a} :: CostCategory)
{-# DEPRECATED ccCostCategoryARN "Use generic-lens or generic-optics with 'costCategoryARN' instead." #-}

-- | The list of processing statuses for Cost Management products for a specific cost category.
--
-- /Note:/ Consider using 'processingStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccProcessingStatus :: Lens.Lens' CostCategory (Lude.Maybe [CostCategoryProcessingStatus])
ccProcessingStatus = Lens.lens (processingStatus :: CostCategory -> Lude.Maybe [CostCategoryProcessingStatus]) (\s a -> s {processingStatus = a} :: CostCategory)
{-# DEPRECATED ccProcessingStatus "Use generic-lens or generic-optics with 'processingStatus' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccName :: Lens.Lens' CostCategory Lude.Text
ccName = Lens.lens (name :: CostCategory -> Lude.Text) (\s a -> s {name = a} :: CostCategory)
{-# DEPRECATED ccName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The Cost Category's effective end date.
--
-- /Note:/ Consider using 'effectiveEnd' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ccEffectiveEnd :: Lens.Lens' CostCategory (Lude.Maybe Lude.Text)
ccEffectiveEnd = Lens.lens (effectiveEnd :: CostCategory -> Lude.Maybe Lude.Text) (\s a -> s {effectiveEnd = a} :: CostCategory)
{-# DEPRECATED ccEffectiveEnd "Use generic-lens or generic-optics with 'effectiveEnd' instead." #-}

instance Lude.FromJSON CostCategory where
  parseJSON =
    Lude.withObject
      "CostCategory"
      ( \x ->
          CostCategory'
            Lude.<$> (x Lude..: "RuleVersion")
            Lude.<*> (x Lude..: "Rules")
            Lude.<*> (x Lude..: "EffectiveStart")
            Lude.<*> (x Lude..: "CostCategoryArn")
            Lude.<*> (x Lude..:? "ProcessingStatus" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..: "Name")
            Lude.<*> (x Lude..:? "EffectiveEnd")
      )