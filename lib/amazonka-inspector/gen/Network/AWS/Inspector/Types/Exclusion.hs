{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.Exclusion
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.Exclusion
  ( Exclusion (..),

    -- * Smart constructor
    mkExclusion,

    -- * Lenses
    eArn,
    eScopes,
    eAttributes,
    eTitle,
    eDescription,
    eRecommendation,
  )
where

import Network.AWS.Inspector.Types.Attribute
import Network.AWS.Inspector.Types.Scope
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Contains information about what was excluded from an assessment run.
--
-- /See:/ 'mkExclusion' smart constructor.
data Exclusion = Exclusion'
  { -- | The ARN that specifies the exclusion.
    arn :: Lude.Text,
    -- | The AWS resources for which the exclusion pertains.
    scopes :: Lude.NonEmpty Scope,
    -- | The system-defined attributes for the exclusion.
    attributes :: Lude.Maybe [Attribute],
    -- | The name of the exclusion.
    title :: Lude.Text,
    -- | The description of the exclusion.
    description :: Lude.Text,
    -- | The recommendation for the exclusion.
    recommendation :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'Exclusion' with the minimum fields required to make a request.
--
-- * 'arn' - The ARN that specifies the exclusion.
-- * 'scopes' - The AWS resources for which the exclusion pertains.
-- * 'attributes' - The system-defined attributes for the exclusion.
-- * 'title' - The name of the exclusion.
-- * 'description' - The description of the exclusion.
-- * 'recommendation' - The recommendation for the exclusion.
mkExclusion ::
  -- | 'arn'
  Lude.Text ->
  -- | 'scopes'
  Lude.NonEmpty Scope ->
  -- | 'title'
  Lude.Text ->
  -- | 'description'
  Lude.Text ->
  -- | 'recommendation'
  Lude.Text ->
  Exclusion
mkExclusion pArn_ pScopes_ pTitle_ pDescription_ pRecommendation_ =
  Exclusion'
    { arn = pArn_,
      scopes = pScopes_,
      attributes = Lude.Nothing,
      title = pTitle_,
      description = pDescription_,
      recommendation = pRecommendation_
    }

-- | The ARN that specifies the exclusion.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eArn :: Lens.Lens' Exclusion Lude.Text
eArn = Lens.lens (arn :: Exclusion -> Lude.Text) (\s a -> s {arn = a} :: Exclusion)
{-# DEPRECATED eArn "Use generic-lens or generic-optics with 'arn' instead." #-}

-- | The AWS resources for which the exclusion pertains.
--
-- /Note:/ Consider using 'scopes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eScopes :: Lens.Lens' Exclusion (Lude.NonEmpty Scope)
eScopes = Lens.lens (scopes :: Exclusion -> Lude.NonEmpty Scope) (\s a -> s {scopes = a} :: Exclusion)
{-# DEPRECATED eScopes "Use generic-lens or generic-optics with 'scopes' instead." #-}

-- | The system-defined attributes for the exclusion.
--
-- /Note:/ Consider using 'attributes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eAttributes :: Lens.Lens' Exclusion (Lude.Maybe [Attribute])
eAttributes = Lens.lens (attributes :: Exclusion -> Lude.Maybe [Attribute]) (\s a -> s {attributes = a} :: Exclusion)
{-# DEPRECATED eAttributes "Use generic-lens or generic-optics with 'attributes' instead." #-}

-- | The name of the exclusion.
--
-- /Note:/ Consider using 'title' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eTitle :: Lens.Lens' Exclusion Lude.Text
eTitle = Lens.lens (title :: Exclusion -> Lude.Text) (\s a -> s {title = a} :: Exclusion)
{-# DEPRECATED eTitle "Use generic-lens or generic-optics with 'title' instead." #-}

-- | The description of the exclusion.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eDescription :: Lens.Lens' Exclusion Lude.Text
eDescription = Lens.lens (description :: Exclusion -> Lude.Text) (\s a -> s {description = a} :: Exclusion)
{-# DEPRECATED eDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | The recommendation for the exclusion.
--
-- /Note:/ Consider using 'recommendation' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eRecommendation :: Lens.Lens' Exclusion Lude.Text
eRecommendation = Lens.lens (recommendation :: Exclusion -> Lude.Text) (\s a -> s {recommendation = a} :: Exclusion)
{-# DEPRECATED eRecommendation "Use generic-lens or generic-optics with 'recommendation' instead." #-}

instance Lude.FromJSON Exclusion where
  parseJSON =
    Lude.withObject
      "Exclusion"
      ( \x ->
          Exclusion'
            Lude.<$> (x Lude..: "arn")
            Lude.<*> (x Lude..: "scopes")
            Lude.<*> (x Lude..:? "attributes" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..: "title")
            Lude.<*> (x Lude..: "description")
            Lude.<*> (x Lude..: "recommendation")
      )