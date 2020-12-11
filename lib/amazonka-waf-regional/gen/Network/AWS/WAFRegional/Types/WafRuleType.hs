-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAFRegional.Types.WafRuleType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAFRegional.Types.WafRuleType
  ( WafRuleType
      ( WafRuleType',
        Group,
        RateBased,
        Regular
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype WafRuleType = WafRuleType' Lude.Text
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype
    ( Lude.Hashable,
      Lude.NFData,
      Lude.ToJSONKey,
      Lude.FromJSONKey,
      Lude.ToJSON,
      Lude.FromJSON,
      Lude.ToXML,
      Lude.FromXML,
      Lude.ToText,
      Lude.FromText,
      Lude.ToByteString,
      Lude.ToQuery,
      Lude.ToHeader
    )

pattern Group :: WafRuleType
pattern Group = WafRuleType' "GROUP"

pattern RateBased :: WafRuleType
pattern RateBased = WafRuleType' "RATE_BASED"

pattern Regular :: WafRuleType
pattern Regular = WafRuleType' "REGULAR"

{-# COMPLETE
  Group,
  RateBased,
  Regular,
  WafRuleType'
  #-}
