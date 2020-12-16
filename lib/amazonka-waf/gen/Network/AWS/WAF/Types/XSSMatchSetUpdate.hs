{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAF.Types.XSSMatchSetUpdate
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAF.Types.XSSMatchSetUpdate
  ( XSSMatchSetUpdate (..),

    -- * Smart constructor
    mkXSSMatchSetUpdate,

    -- * Lenses
    xmsuXSSMatchTuple,
    xmsuAction,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.WAF.Types.ChangeAction
import Network.AWS.WAF.Types.XSSMatchTuple

-- | Specifies the part of a web request that you want to inspect for cross-site scripting attacks and indicates whether you want to add the specification to an 'XssMatchSet' or delete it from an @XssMatchSet@ .
--
-- /See:/ 'mkXSSMatchSetUpdate' smart constructor.
data XSSMatchSetUpdate = XSSMatchSetUpdate'
  { -- | Specifies the part of a web request that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header.
    xssMatchTuple :: XSSMatchTuple,
    -- | Specify @INSERT@ to add an 'XssMatchSetUpdate' to an 'XssMatchSet' . Use @DELETE@ to remove an @XssMatchSetUpdate@ from an @XssMatchSet@ .
    action :: ChangeAction
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'XSSMatchSetUpdate' with the minimum fields required to make a request.
--
-- * 'xssMatchTuple' - Specifies the part of a web request that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header.
-- * 'action' - Specify @INSERT@ to add an 'XssMatchSetUpdate' to an 'XssMatchSet' . Use @DELETE@ to remove an @XssMatchSetUpdate@ from an @XssMatchSet@ .
mkXSSMatchSetUpdate ::
  -- | 'xssMatchTuple'
  XSSMatchTuple ->
  -- | 'action'
  ChangeAction ->
  XSSMatchSetUpdate
mkXSSMatchSetUpdate pXSSMatchTuple_ pAction_ =
  XSSMatchSetUpdate'
    { xssMatchTuple = pXSSMatchTuple_,
      action = pAction_
    }

-- | Specifies the part of a web request that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header.
--
-- /Note:/ Consider using 'xssMatchTuple' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
xmsuXSSMatchTuple :: Lens.Lens' XSSMatchSetUpdate XSSMatchTuple
xmsuXSSMatchTuple = Lens.lens (xssMatchTuple :: XSSMatchSetUpdate -> XSSMatchTuple) (\s a -> s {xssMatchTuple = a} :: XSSMatchSetUpdate)
{-# DEPRECATED xmsuXSSMatchTuple "Use generic-lens or generic-optics with 'xssMatchTuple' instead." #-}

-- | Specify @INSERT@ to add an 'XssMatchSetUpdate' to an 'XssMatchSet' . Use @DELETE@ to remove an @XssMatchSetUpdate@ from an @XssMatchSet@ .
--
-- /Note:/ Consider using 'action' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
xmsuAction :: Lens.Lens' XSSMatchSetUpdate ChangeAction
xmsuAction = Lens.lens (action :: XSSMatchSetUpdate -> ChangeAction) (\s a -> s {action = a} :: XSSMatchSetUpdate)
{-# DEPRECATED xmsuAction "Use generic-lens or generic-optics with 'action' instead." #-}

instance Lude.ToJSON XSSMatchSetUpdate where
  toJSON XSSMatchSetUpdate' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("XssMatchTuple" Lude..= xssMatchTuple),
            Lude.Just ("Action" Lude..= action)
          ]
      )