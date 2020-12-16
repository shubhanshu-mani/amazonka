{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAFRegional.Types.SizeConstraintSet
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAFRegional.Types.SizeConstraintSet
  ( SizeConstraintSet (..),

    -- * Smart constructor
    mkSizeConstraintSet,

    -- * Lenses
    scsSizeConstraintSetId,
    scsSizeConstraints,
    scsName,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.WAFRegional.Types.SizeConstraint

-- | A complex type that contains @SizeConstraint@ objects, which specify the parts of web requests that you want AWS WAF to inspect the size of. If a @SizeConstraintSet@ contains more than one @SizeConstraint@ object, a request only needs to match one constraint to be considered a match.
--
-- /See:/ 'mkSizeConstraintSet' smart constructor.
data SizeConstraintSet = SizeConstraintSet'
  { -- | A unique identifier for a @SizeConstraintSet@ . You use @SizeConstraintSetId@ to get information about a @SizeConstraintSet@ (see 'GetSizeConstraintSet' ), update a @SizeConstraintSet@ (see 'UpdateSizeConstraintSet' ), insert a @SizeConstraintSet@ into a @Rule@ or delete one from a @Rule@ (see 'UpdateRule' ), and delete a @SizeConstraintSet@ from AWS WAF (see 'DeleteSizeConstraintSet' ).
    --
    -- @SizeConstraintSetId@ is returned by 'CreateSizeConstraintSet' and by 'ListSizeConstraintSets' .
    sizeConstraintSetId :: Lude.Text,
    -- | Specifies the parts of web requests that you want to inspect the size of.
    sizeConstraints :: [SizeConstraint],
    -- | The name, if any, of the @SizeConstraintSet@ .
    name :: Lude.Maybe Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'SizeConstraintSet' with the minimum fields required to make a request.
--
-- * 'sizeConstraintSetId' - A unique identifier for a @SizeConstraintSet@ . You use @SizeConstraintSetId@ to get information about a @SizeConstraintSet@ (see 'GetSizeConstraintSet' ), update a @SizeConstraintSet@ (see 'UpdateSizeConstraintSet' ), insert a @SizeConstraintSet@ into a @Rule@ or delete one from a @Rule@ (see 'UpdateRule' ), and delete a @SizeConstraintSet@ from AWS WAF (see 'DeleteSizeConstraintSet' ).
--
-- @SizeConstraintSetId@ is returned by 'CreateSizeConstraintSet' and by 'ListSizeConstraintSets' .
-- * 'sizeConstraints' - Specifies the parts of web requests that you want to inspect the size of.
-- * 'name' - The name, if any, of the @SizeConstraintSet@ .
mkSizeConstraintSet ::
  -- | 'sizeConstraintSetId'
  Lude.Text ->
  SizeConstraintSet
mkSizeConstraintSet pSizeConstraintSetId_ =
  SizeConstraintSet'
    { sizeConstraintSetId = pSizeConstraintSetId_,
      sizeConstraints = Lude.mempty,
      name = Lude.Nothing
    }

-- | A unique identifier for a @SizeConstraintSet@ . You use @SizeConstraintSetId@ to get information about a @SizeConstraintSet@ (see 'GetSizeConstraintSet' ), update a @SizeConstraintSet@ (see 'UpdateSizeConstraintSet' ), insert a @SizeConstraintSet@ into a @Rule@ or delete one from a @Rule@ (see 'UpdateRule' ), and delete a @SizeConstraintSet@ from AWS WAF (see 'DeleteSizeConstraintSet' ).
--
-- @SizeConstraintSetId@ is returned by 'CreateSizeConstraintSet' and by 'ListSizeConstraintSets' .
--
-- /Note:/ Consider using 'sizeConstraintSetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scsSizeConstraintSetId :: Lens.Lens' SizeConstraintSet Lude.Text
scsSizeConstraintSetId = Lens.lens (sizeConstraintSetId :: SizeConstraintSet -> Lude.Text) (\s a -> s {sizeConstraintSetId = a} :: SizeConstraintSet)
{-# DEPRECATED scsSizeConstraintSetId "Use generic-lens or generic-optics with 'sizeConstraintSetId' instead." #-}

-- | Specifies the parts of web requests that you want to inspect the size of.
--
-- /Note:/ Consider using 'sizeConstraints' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scsSizeConstraints :: Lens.Lens' SizeConstraintSet [SizeConstraint]
scsSizeConstraints = Lens.lens (sizeConstraints :: SizeConstraintSet -> [SizeConstraint]) (\s a -> s {sizeConstraints = a} :: SizeConstraintSet)
{-# DEPRECATED scsSizeConstraints "Use generic-lens or generic-optics with 'sizeConstraints' instead." #-}

-- | The name, if any, of the @SizeConstraintSet@ .
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
scsName :: Lens.Lens' SizeConstraintSet (Lude.Maybe Lude.Text)
scsName = Lens.lens (name :: SizeConstraintSet -> Lude.Maybe Lude.Text) (\s a -> s {name = a} :: SizeConstraintSet)
{-# DEPRECATED scsName "Use generic-lens or generic-optics with 'name' instead." #-}

instance Lude.FromJSON SizeConstraintSet where
  parseJSON =
    Lude.withObject
      "SizeConstraintSet"
      ( \x ->
          SizeConstraintSet'
            Lude.<$> (x Lude..: "SizeConstraintSetId")
            Lude.<*> (x Lude..:? "SizeConstraints" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..:? "Name")
      )