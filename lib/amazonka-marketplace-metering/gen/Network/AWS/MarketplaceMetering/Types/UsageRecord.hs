{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MarketplaceMetering.Types.UsageRecord
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MarketplaceMetering.Types.UsageRecord
  ( UsageRecord (..),

    -- * Smart constructor
    mkUsageRecord,

    -- * Lenses
    urDimension,
    urQuantity,
    urCustomerIdentifier,
    urUsageAllocations,
    urTimestamp,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.MarketplaceMetering.Types.UsageAllocation
import qualified Network.AWS.Prelude as Lude

-- | A UsageRecord indicates a quantity of usage for a given product, customer, dimension and time.
--
-- Multiple requests with the same UsageRecords as input will be deduplicated to prevent double charges.
--
-- /See:/ 'mkUsageRecord' smart constructor.
data UsageRecord = UsageRecord'
  { -- | During the process of registering a product on AWS Marketplace, up to eight dimensions are specified. These represent different units of value in your application.
    dimension :: Lude.Text,
    -- | The quantity of usage consumed by the customer for the given dimension and time. Defaults to @0@ if not specified.
    quantity :: Lude.Maybe Lude.Natural,
    -- | The CustomerIdentifier is obtained through the ResolveCustomer operation and represents an individual buyer in your application.
    customerIdentifier :: Lude.Text,
    -- | The set of UsageAllocations to submit. The sum of all UsageAllocation quantities must equal the Quantity of the UsageRecord.
    usageAllocations :: Lude.Maybe (Lude.NonEmpty UsageAllocation),
    -- | Timestamp, in UTC, for which the usage is being reported.
    --
    -- Your application can meter usage for up to one hour in the past. Make sure the timestamp value is not before the start of the software usage.
    timestamp :: Lude.Timestamp
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'UsageRecord' with the minimum fields required to make a request.
--
-- * 'dimension' - During the process of registering a product on AWS Marketplace, up to eight dimensions are specified. These represent different units of value in your application.
-- * 'quantity' - The quantity of usage consumed by the customer for the given dimension and time. Defaults to @0@ if not specified.
-- * 'customerIdentifier' - The CustomerIdentifier is obtained through the ResolveCustomer operation and represents an individual buyer in your application.
-- * 'usageAllocations' - The set of UsageAllocations to submit. The sum of all UsageAllocation quantities must equal the Quantity of the UsageRecord.
-- * 'timestamp' - Timestamp, in UTC, for which the usage is being reported.
--
-- Your application can meter usage for up to one hour in the past. Make sure the timestamp value is not before the start of the software usage.
mkUsageRecord ::
  -- | 'dimension'
  Lude.Text ->
  -- | 'customerIdentifier'
  Lude.Text ->
  -- | 'timestamp'
  Lude.Timestamp ->
  UsageRecord
mkUsageRecord pDimension_ pCustomerIdentifier_ pTimestamp_ =
  UsageRecord'
    { dimension = pDimension_,
      quantity = Lude.Nothing,
      customerIdentifier = pCustomerIdentifier_,
      usageAllocations = Lude.Nothing,
      timestamp = pTimestamp_
    }

-- | During the process of registering a product on AWS Marketplace, up to eight dimensions are specified. These represent different units of value in your application.
--
-- /Note:/ Consider using 'dimension' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urDimension :: Lens.Lens' UsageRecord Lude.Text
urDimension = Lens.lens (dimension :: UsageRecord -> Lude.Text) (\s a -> s {dimension = a} :: UsageRecord)
{-# DEPRECATED urDimension "Use generic-lens or generic-optics with 'dimension' instead." #-}

-- | The quantity of usage consumed by the customer for the given dimension and time. Defaults to @0@ if not specified.
--
-- /Note:/ Consider using 'quantity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urQuantity :: Lens.Lens' UsageRecord (Lude.Maybe Lude.Natural)
urQuantity = Lens.lens (quantity :: UsageRecord -> Lude.Maybe Lude.Natural) (\s a -> s {quantity = a} :: UsageRecord)
{-# DEPRECATED urQuantity "Use generic-lens or generic-optics with 'quantity' instead." #-}

-- | The CustomerIdentifier is obtained through the ResolveCustomer operation and represents an individual buyer in your application.
--
-- /Note:/ Consider using 'customerIdentifier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urCustomerIdentifier :: Lens.Lens' UsageRecord Lude.Text
urCustomerIdentifier = Lens.lens (customerIdentifier :: UsageRecord -> Lude.Text) (\s a -> s {customerIdentifier = a} :: UsageRecord)
{-# DEPRECATED urCustomerIdentifier "Use generic-lens or generic-optics with 'customerIdentifier' instead." #-}

-- | The set of UsageAllocations to submit. The sum of all UsageAllocation quantities must equal the Quantity of the UsageRecord.
--
-- /Note:/ Consider using 'usageAllocations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urUsageAllocations :: Lens.Lens' UsageRecord (Lude.Maybe (Lude.NonEmpty UsageAllocation))
urUsageAllocations = Lens.lens (usageAllocations :: UsageRecord -> Lude.Maybe (Lude.NonEmpty UsageAllocation)) (\s a -> s {usageAllocations = a} :: UsageRecord)
{-# DEPRECATED urUsageAllocations "Use generic-lens or generic-optics with 'usageAllocations' instead." #-}

-- | Timestamp, in UTC, for which the usage is being reported.
--
-- Your application can meter usage for up to one hour in the past. Make sure the timestamp value is not before the start of the software usage.
--
-- /Note:/ Consider using 'timestamp' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urTimestamp :: Lens.Lens' UsageRecord Lude.Timestamp
urTimestamp = Lens.lens (timestamp :: UsageRecord -> Lude.Timestamp) (\s a -> s {timestamp = a} :: UsageRecord)
{-# DEPRECATED urTimestamp "Use generic-lens or generic-optics with 'timestamp' instead." #-}

instance Lude.FromJSON UsageRecord where
  parseJSON =
    Lude.withObject
      "UsageRecord"
      ( \x ->
          UsageRecord'
            Lude.<$> (x Lude..: "Dimension")
            Lude.<*> (x Lude..:? "Quantity")
            Lude.<*> (x Lude..: "CustomerIdentifier")
            Lude.<*> (x Lude..:? "UsageAllocations")
            Lude.<*> (x Lude..: "Timestamp")
      )

instance Lude.ToJSON UsageRecord where
  toJSON UsageRecord' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("Dimension" Lude..= dimension),
            ("Quantity" Lude..=) Lude.<$> quantity,
            Lude.Just ("CustomerIdentifier" Lude..= customerIdentifier),
            ("UsageAllocations" Lude..=) Lude.<$> usageAllocations,
            Lude.Just ("Timestamp" Lude..= timestamp)
          ]
      )