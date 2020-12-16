{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroups.Types.ResourceFilter
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroups.Types.ResourceFilter
  ( ResourceFilter (..),

    -- * Smart constructor
    mkResourceFilter,

    -- * Lenses
    rfValues,
    rfName,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.ResourceGroups.Types.ResourceFilterName

-- | A filter name and value pair that is used to obtain more specific results from a list of resources.
--
-- /See:/ 'mkResourceFilter' smart constructor.
data ResourceFilter = ResourceFilter'
  { -- | One or more filter values. Allowed filter values vary by resource filter name, and are case-sensitive.
    values :: Lude.NonEmpty Lude.Text,
    -- | The name of the filter. Filter names are case-sensitive.
    name :: ResourceFilterName
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ResourceFilter' with the minimum fields required to make a request.
--
-- * 'values' - One or more filter values. Allowed filter values vary by resource filter name, and are case-sensitive.
-- * 'name' - The name of the filter. Filter names are case-sensitive.
mkResourceFilter ::
  -- | 'values'
  Lude.NonEmpty Lude.Text ->
  -- | 'name'
  ResourceFilterName ->
  ResourceFilter
mkResourceFilter pValues_ pName_ =
  ResourceFilter' {values = pValues_, name = pName_}

-- | One or more filter values. Allowed filter values vary by resource filter name, and are case-sensitive.
--
-- /Note:/ Consider using 'values' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rfValues :: Lens.Lens' ResourceFilter (Lude.NonEmpty Lude.Text)
rfValues = Lens.lens (values :: ResourceFilter -> Lude.NonEmpty Lude.Text) (\s a -> s {values = a} :: ResourceFilter)
{-# DEPRECATED rfValues "Use generic-lens or generic-optics with 'values' instead." #-}

-- | The name of the filter. Filter names are case-sensitive.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rfName :: Lens.Lens' ResourceFilter ResourceFilterName
rfName = Lens.lens (name :: ResourceFilter -> ResourceFilterName) (\s a -> s {name = a} :: ResourceFilter)
{-# DEPRECATED rfName "Use generic-lens or generic-optics with 'name' instead." #-}

instance Lude.ToJSON ResourceFilter where
  toJSON ResourceFilter' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("Values" Lude..= values),
            Lude.Just ("Name" Lude..= name)
          ]
      )