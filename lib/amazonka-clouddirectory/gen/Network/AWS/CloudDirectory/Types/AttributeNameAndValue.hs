{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.AttributeNameAndValue
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.AttributeNameAndValue
  ( AttributeNameAndValue (..),

    -- * Smart constructor
    mkAttributeNameAndValue,

    -- * Lenses
    anavValue,
    anavAttributeName,
  )
where

import Network.AWS.CloudDirectory.Types.TypedAttributeValue
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Identifies the attribute name and value for a typed link.
--
-- /See:/ 'mkAttributeNameAndValue' smart constructor.
data AttributeNameAndValue = AttributeNameAndValue'
  { -- | The value for the typed link.
    value :: TypedAttributeValue,
    -- | The attribute name of the typed link.
    attributeName :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'AttributeNameAndValue' with the minimum fields required to make a request.
--
-- * 'value' - The value for the typed link.
-- * 'attributeName' - The attribute name of the typed link.
mkAttributeNameAndValue ::
  -- | 'value'
  TypedAttributeValue ->
  -- | 'attributeName'
  Lude.Text ->
  AttributeNameAndValue
mkAttributeNameAndValue pValue_ pAttributeName_ =
  AttributeNameAndValue'
    { value = pValue_,
      attributeName = pAttributeName_
    }

-- | The value for the typed link.
--
-- /Note:/ Consider using 'value' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
anavValue :: Lens.Lens' AttributeNameAndValue TypedAttributeValue
anavValue = Lens.lens (value :: AttributeNameAndValue -> TypedAttributeValue) (\s a -> s {value = a} :: AttributeNameAndValue)
{-# DEPRECATED anavValue "Use generic-lens or generic-optics with 'value' instead." #-}

-- | The attribute name of the typed link.
--
-- /Note:/ Consider using 'attributeName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
anavAttributeName :: Lens.Lens' AttributeNameAndValue Lude.Text
anavAttributeName = Lens.lens (attributeName :: AttributeNameAndValue -> Lude.Text) (\s a -> s {attributeName = a} :: AttributeNameAndValue)
{-# DEPRECATED anavAttributeName "Use generic-lens or generic-optics with 'attributeName' instead." #-}

instance Lude.FromJSON AttributeNameAndValue where
  parseJSON =
    Lude.withObject
      "AttributeNameAndValue"
      ( \x ->
          AttributeNameAndValue'
            Lude.<$> (x Lude..: "Value") Lude.<*> (x Lude..: "AttributeName")
      )

instance Lude.ToJSON AttributeNameAndValue where
  toJSON AttributeNameAndValue' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("Value" Lude..= value),
            Lude.Just ("AttributeName" Lude..= attributeName)
          ]
      )