-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.NodeConfigurationOptionsFilter
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.NodeConfigurationOptionsFilter
  ( NodeConfigurationOptionsFilter (..),

    -- * Smart constructor
    mkNodeConfigurationOptionsFilter,

    -- * Lenses
    ncofValues,
    ncofOperator,
    ncofName,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.NodeConfigurationOptionsFilterName
import Network.AWS.Redshift.Types.OperatorType

-- | A set of elements to filter the returned node configurations.
--
-- /See:/ 'mkNodeConfigurationOptionsFilter' smart constructor.
data NodeConfigurationOptionsFilter = NodeConfigurationOptionsFilter'
  { values ::
      Lude.Maybe [Lude.Text],
    operator ::
      Lude.Maybe OperatorType,
    name ::
      Lude.Maybe
        NodeConfigurationOptionsFilterName
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'NodeConfigurationOptionsFilter' with the minimum fields required to make a request.
--
-- * 'name' - The name of the element to filter.
-- * 'operator' - The filter operator. If filter Name is NodeType only the 'in' operator is supported. Provide one value to evaluate for 'eq', 'lt', 'le', 'gt', and 'ge'. Provide two values to evaluate for 'between'. Provide a list of values for 'in'.
-- * 'values' - List of values. Compare Name using Operator to Values. If filter Name is NumberOfNodes, then values can range from 0 to 200. If filter Name is EstimatedDiskUtilizationPercent, then values can range from 0 to 100. For example, filter NumberOfNodes (name) GT (operator) 3 (values).
mkNodeConfigurationOptionsFilter ::
  NodeConfigurationOptionsFilter
mkNodeConfigurationOptionsFilter =
  NodeConfigurationOptionsFilter'
    { values = Lude.Nothing,
      operator = Lude.Nothing,
      name = Lude.Nothing
    }

-- | List of values. Compare Name using Operator to Values. If filter Name is NumberOfNodes, then values can range from 0 to 200. If filter Name is EstimatedDiskUtilizationPercent, then values can range from 0 to 100. For example, filter NumberOfNodes (name) GT (operator) 3 (values).
--
-- /Note:/ Consider using 'values' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ncofValues :: Lens.Lens' NodeConfigurationOptionsFilter (Lude.Maybe [Lude.Text])
ncofValues = Lens.lens (values :: NodeConfigurationOptionsFilter -> Lude.Maybe [Lude.Text]) (\s a -> s {values = a} :: NodeConfigurationOptionsFilter)
{-# DEPRECATED ncofValues "Use generic-lens or generic-optics with 'values' instead." #-}

-- | The filter operator. If filter Name is NodeType only the 'in' operator is supported. Provide one value to evaluate for 'eq', 'lt', 'le', 'gt', and 'ge'. Provide two values to evaluate for 'between'. Provide a list of values for 'in'.
--
-- /Note:/ Consider using 'operator' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ncofOperator :: Lens.Lens' NodeConfigurationOptionsFilter (Lude.Maybe OperatorType)
ncofOperator = Lens.lens (operator :: NodeConfigurationOptionsFilter -> Lude.Maybe OperatorType) (\s a -> s {operator = a} :: NodeConfigurationOptionsFilter)
{-# DEPRECATED ncofOperator "Use generic-lens or generic-optics with 'operator' instead." #-}

-- | The name of the element to filter.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ncofName :: Lens.Lens' NodeConfigurationOptionsFilter (Lude.Maybe NodeConfigurationOptionsFilterName)
ncofName = Lens.lens (name :: NodeConfigurationOptionsFilter -> Lude.Maybe NodeConfigurationOptionsFilterName) (\s a -> s {name = a} :: NodeConfigurationOptionsFilter)
{-# DEPRECATED ncofName "Use generic-lens or generic-optics with 'name' instead." #-}

instance Lude.ToQuery NodeConfigurationOptionsFilter where
  toQuery NodeConfigurationOptionsFilter' {..} =
    Lude.mconcat
      [ "Value"
          Lude.=: Lude.toQuery (Lude.toQueryList "item" Lude.<$> values),
        "Operator" Lude.=: operator,
        "Name" Lude.=: name
      ]
