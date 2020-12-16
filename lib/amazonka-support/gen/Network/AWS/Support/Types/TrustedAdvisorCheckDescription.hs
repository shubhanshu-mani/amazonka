{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Support.Types.TrustedAdvisorCheckDescription
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Support.Types.TrustedAdvisorCheckDescription
  ( TrustedAdvisorCheckDescription (..),

    -- * Smart constructor
    mkTrustedAdvisorCheckDescription,

    -- * Lenses
    tacdCategory,
    tacdName,
    tacdMetadata,
    tacdId,
    tacdDescription,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | The description and metadata for a Trusted Advisor check.
--
-- /See:/ 'mkTrustedAdvisorCheckDescription' smart constructor.
data TrustedAdvisorCheckDescription = TrustedAdvisorCheckDescription'
  { -- | The category of the Trusted Advisor check.
    category :: Lude.Text,
    -- | The display name for the Trusted Advisor check.
    name :: Lude.Text,
    -- | The column headings for the data returned by the Trusted Advisor check. The order of the headings corresponds to the order of the data in the __Metadata__ element of the 'TrustedAdvisorResourceDetail' for the check. __Metadata__ contains all the data that is shown in the Excel download, even in those cases where the UI shows just summary data.
    metadata :: [Lude.Text],
    -- | The unique identifier for the Trusted Advisor check.
    id :: Lude.Text,
    -- | The description of the Trusted Advisor check, which includes the alert criteria and recommended operations (contains HTML markup).
    description :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'TrustedAdvisorCheckDescription' with the minimum fields required to make a request.
--
-- * 'category' - The category of the Trusted Advisor check.
-- * 'name' - The display name for the Trusted Advisor check.
-- * 'metadata' - The column headings for the data returned by the Trusted Advisor check. The order of the headings corresponds to the order of the data in the __Metadata__ element of the 'TrustedAdvisorResourceDetail' for the check. __Metadata__ contains all the data that is shown in the Excel download, even in those cases where the UI shows just summary data.
-- * 'id' - The unique identifier for the Trusted Advisor check.
-- * 'description' - The description of the Trusted Advisor check, which includes the alert criteria and recommended operations (contains HTML markup).
mkTrustedAdvisorCheckDescription ::
  -- | 'category'
  Lude.Text ->
  -- | 'name'
  Lude.Text ->
  -- | 'id'
  Lude.Text ->
  -- | 'description'
  Lude.Text ->
  TrustedAdvisorCheckDescription
mkTrustedAdvisorCheckDescription
  pCategory_
  pName_
  pId_
  pDescription_ =
    TrustedAdvisorCheckDescription'
      { category = pCategory_,
        name = pName_,
        metadata = Lude.mempty,
        id = pId_,
        description = pDescription_
      }

-- | The category of the Trusted Advisor check.
--
-- /Note:/ Consider using 'category' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tacdCategory :: Lens.Lens' TrustedAdvisorCheckDescription Lude.Text
tacdCategory = Lens.lens (category :: TrustedAdvisorCheckDescription -> Lude.Text) (\s a -> s {category = a} :: TrustedAdvisorCheckDescription)
{-# DEPRECATED tacdCategory "Use generic-lens or generic-optics with 'category' instead." #-}

-- | The display name for the Trusted Advisor check.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tacdName :: Lens.Lens' TrustedAdvisorCheckDescription Lude.Text
tacdName = Lens.lens (name :: TrustedAdvisorCheckDescription -> Lude.Text) (\s a -> s {name = a} :: TrustedAdvisorCheckDescription)
{-# DEPRECATED tacdName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The column headings for the data returned by the Trusted Advisor check. The order of the headings corresponds to the order of the data in the __Metadata__ element of the 'TrustedAdvisorResourceDetail' for the check. __Metadata__ contains all the data that is shown in the Excel download, even in those cases where the UI shows just summary data.
--
-- /Note:/ Consider using 'metadata' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tacdMetadata :: Lens.Lens' TrustedAdvisorCheckDescription [Lude.Text]
tacdMetadata = Lens.lens (metadata :: TrustedAdvisorCheckDescription -> [Lude.Text]) (\s a -> s {metadata = a} :: TrustedAdvisorCheckDescription)
{-# DEPRECATED tacdMetadata "Use generic-lens or generic-optics with 'metadata' instead." #-}

-- | The unique identifier for the Trusted Advisor check.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tacdId :: Lens.Lens' TrustedAdvisorCheckDescription Lude.Text
tacdId = Lens.lens (id :: TrustedAdvisorCheckDescription -> Lude.Text) (\s a -> s {id = a} :: TrustedAdvisorCheckDescription)
{-# DEPRECATED tacdId "Use generic-lens or generic-optics with 'id' instead." #-}

-- | The description of the Trusted Advisor check, which includes the alert criteria and recommended operations (contains HTML markup).
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tacdDescription :: Lens.Lens' TrustedAdvisorCheckDescription Lude.Text
tacdDescription = Lens.lens (description :: TrustedAdvisorCheckDescription -> Lude.Text) (\s a -> s {description = a} :: TrustedAdvisorCheckDescription)
{-# DEPRECATED tacdDescription "Use generic-lens or generic-optics with 'description' instead." #-}

instance Lude.FromJSON TrustedAdvisorCheckDescription where
  parseJSON =
    Lude.withObject
      "TrustedAdvisorCheckDescription"
      ( \x ->
          TrustedAdvisorCheckDescription'
            Lude.<$> (x Lude..: "category")
            Lude.<*> (x Lude..: "name")
            Lude.<*> (x Lude..:? "metadata" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..: "id")
            Lude.<*> (x Lude..: "description")
      )