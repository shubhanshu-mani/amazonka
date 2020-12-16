{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.ParameterizedStatement
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ParameterizedStatement
  ( ParameterizedStatement (..),

    -- * Smart constructor
    mkParameterizedStatement,

    -- * Lenses
    psStatement,
    psParameters,
  )
where

import Network.AWS.DynamoDB.Types.AttributeValue
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Represents a PartiQL statment that uses parameters.
--
-- /See:/ 'mkParameterizedStatement' smart constructor.
data ParameterizedStatement = ParameterizedStatement'
  { -- | A PartiQL statment that uses parameters.
    statement :: Lude.Text,
    -- | The parameter values.
    parameters :: Lude.Maybe (Lude.NonEmpty AttributeValue)
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ParameterizedStatement' with the minimum fields required to make a request.
--
-- * 'statement' - A PartiQL statment that uses parameters.
-- * 'parameters' - The parameter values.
mkParameterizedStatement ::
  -- | 'statement'
  Lude.Text ->
  ParameterizedStatement
mkParameterizedStatement pStatement_ =
  ParameterizedStatement'
    { statement = pStatement_,
      parameters = Lude.Nothing
    }

-- | A PartiQL statment that uses parameters.
--
-- /Note:/ Consider using 'statement' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psStatement :: Lens.Lens' ParameterizedStatement Lude.Text
psStatement = Lens.lens (statement :: ParameterizedStatement -> Lude.Text) (\s a -> s {statement = a} :: ParameterizedStatement)
{-# DEPRECATED psStatement "Use generic-lens or generic-optics with 'statement' instead." #-}

-- | The parameter values.
--
-- /Note:/ Consider using 'parameters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
psParameters :: Lens.Lens' ParameterizedStatement (Lude.Maybe (Lude.NonEmpty AttributeValue))
psParameters = Lens.lens (parameters :: ParameterizedStatement -> Lude.Maybe (Lude.NonEmpty AttributeValue)) (\s a -> s {parameters = a} :: ParameterizedStatement)
{-# DEPRECATED psParameters "Use generic-lens or generic-optics with 'parameters' instead." #-}

instance Lude.ToJSON ParameterizedStatement where
  toJSON ParameterizedStatement' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("Statement" Lude..= statement),
            ("Parameters" Lude..=) Lude.<$> parameters
          ]
      )