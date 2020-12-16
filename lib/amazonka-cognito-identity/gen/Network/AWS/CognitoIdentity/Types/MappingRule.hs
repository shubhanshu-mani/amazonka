{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentity.Types.MappingRule
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentity.Types.MappingRule
  ( MappingRule (..),

    -- * Smart constructor
    mkMappingRule,

    -- * Lenses
    mrMatchType,
    mrValue,
    mrClaim,
    mrRoleARN,
  )
where

import Network.AWS.CognitoIdentity.Types.MappingRuleMatchType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | A rule that maps a claim name, a claim value, and a match type to a role ARN.
--
-- /See:/ 'mkMappingRule' smart constructor.
data MappingRule = MappingRule'
  { -- | The match condition that specifies how closely the claim value in the IdP token must match @Value@ .
    matchType :: MappingRuleMatchType,
    -- | A brief string that the claim must match, for example, "paid" or "yes".
    value :: Lude.Text,
    -- | The claim name that must be present in the token, for example, "isAdmin" or "paid".
    claim :: Lude.Text,
    -- | The role ARN.
    roleARN :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'MappingRule' with the minimum fields required to make a request.
--
-- * 'matchType' - The match condition that specifies how closely the claim value in the IdP token must match @Value@ .
-- * 'value' - A brief string that the claim must match, for example, "paid" or "yes".
-- * 'claim' - The claim name that must be present in the token, for example, "isAdmin" or "paid".
-- * 'roleARN' - The role ARN.
mkMappingRule ::
  -- | 'matchType'
  MappingRuleMatchType ->
  -- | 'value'
  Lude.Text ->
  -- | 'claim'
  Lude.Text ->
  -- | 'roleARN'
  Lude.Text ->
  MappingRule
mkMappingRule pMatchType_ pValue_ pClaim_ pRoleARN_ =
  MappingRule'
    { matchType = pMatchType_,
      value = pValue_,
      claim = pClaim_,
      roleARN = pRoleARN_
    }

-- | The match condition that specifies how closely the claim value in the IdP token must match @Value@ .
--
-- /Note:/ Consider using 'matchType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mrMatchType :: Lens.Lens' MappingRule MappingRuleMatchType
mrMatchType = Lens.lens (matchType :: MappingRule -> MappingRuleMatchType) (\s a -> s {matchType = a} :: MappingRule)
{-# DEPRECATED mrMatchType "Use generic-lens or generic-optics with 'matchType' instead." #-}

-- | A brief string that the claim must match, for example, "paid" or "yes".
--
-- /Note:/ Consider using 'value' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mrValue :: Lens.Lens' MappingRule Lude.Text
mrValue = Lens.lens (value :: MappingRule -> Lude.Text) (\s a -> s {value = a} :: MappingRule)
{-# DEPRECATED mrValue "Use generic-lens or generic-optics with 'value' instead." #-}

-- | The claim name that must be present in the token, for example, "isAdmin" or "paid".
--
-- /Note:/ Consider using 'claim' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mrClaim :: Lens.Lens' MappingRule Lude.Text
mrClaim = Lens.lens (claim :: MappingRule -> Lude.Text) (\s a -> s {claim = a} :: MappingRule)
{-# DEPRECATED mrClaim "Use generic-lens or generic-optics with 'claim' instead." #-}

-- | The role ARN.
--
-- /Note:/ Consider using 'roleARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mrRoleARN :: Lens.Lens' MappingRule Lude.Text
mrRoleARN = Lens.lens (roleARN :: MappingRule -> Lude.Text) (\s a -> s {roleARN = a} :: MappingRule)
{-# DEPRECATED mrRoleARN "Use generic-lens or generic-optics with 'roleARN' instead." #-}

instance Lude.FromJSON MappingRule where
  parseJSON =
    Lude.withObject
      "MappingRule"
      ( \x ->
          MappingRule'
            Lude.<$> (x Lude..: "MatchType")
            Lude.<*> (x Lude..: "Value")
            Lude.<*> (x Lude..: "Claim")
            Lude.<*> (x Lude..: "RoleARN")
      )

instance Lude.ToJSON MappingRule where
  toJSON MappingRule' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("MatchType" Lude..= matchType),
            Lude.Just ("Value" Lude..= value),
            Lude.Just ("Claim" Lude..= claim),
            Lude.Just ("RoleARN" Lude..= roleARN)
          ]
      )