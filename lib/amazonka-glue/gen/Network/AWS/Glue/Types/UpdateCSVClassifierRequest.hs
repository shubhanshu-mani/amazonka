-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.UpdateCSVClassifierRequest
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.UpdateCSVClassifierRequest
  ( UpdateCSVClassifierRequest (..),

    -- * Smart constructor
    mkUpdateCSVClassifierRequest,

    -- * Lenses
    uccrQuoteSymbol,
    uccrContainsHeader,
    uccrDisableValueTrimming,
    uccrHeader,
    uccrAllowSingleColumn,
    uccrDelimiter,
    uccrName,
  )
where

import Network.AWS.Glue.Types.CSVHeaderOption
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Specifies a custom CSV classifier to be updated.
--
-- /See:/ 'mkUpdateCSVClassifierRequest' smart constructor.
data UpdateCSVClassifierRequest = UpdateCSVClassifierRequest'
  { quoteSymbol ::
      Lude.Maybe Lude.Text,
    containsHeader ::
      Lude.Maybe CSVHeaderOption,
    disableValueTrimming ::
      Lude.Maybe Lude.Bool,
    header :: Lude.Maybe [Lude.Text],
    allowSingleColumn ::
      Lude.Maybe Lude.Bool,
    delimiter :: Lude.Maybe Lude.Text,
    name :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'UpdateCSVClassifierRequest' with the minimum fields required to make a request.
--
-- * 'allowSingleColumn' - Enables the processing of files that contain only one column.
-- * 'containsHeader' - Indicates whether the CSV file contains a header.
-- * 'delimiter' - A custom symbol to denote what separates each column entry in the row.
-- * 'disableValueTrimming' - Specifies not to trim values before identifying the type of column values. The default value is true.
-- * 'header' - A list of strings representing column names.
-- * 'name' - The name of the classifier.
-- * 'quoteSymbol' - A custom symbol to denote what combines content into a single column value. It must be different from the column delimiter.
mkUpdateCSVClassifierRequest ::
  -- | 'name'
  Lude.Text ->
  UpdateCSVClassifierRequest
mkUpdateCSVClassifierRequest pName_ =
  UpdateCSVClassifierRequest'
    { quoteSymbol = Lude.Nothing,
      containsHeader = Lude.Nothing,
      disableValueTrimming = Lude.Nothing,
      header = Lude.Nothing,
      allowSingleColumn = Lude.Nothing,
      delimiter = Lude.Nothing,
      name = pName_
    }

-- | A custom symbol to denote what combines content into a single column value. It must be different from the column delimiter.
--
-- /Note:/ Consider using 'quoteSymbol' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uccrQuoteSymbol :: Lens.Lens' UpdateCSVClassifierRequest (Lude.Maybe Lude.Text)
uccrQuoteSymbol = Lens.lens (quoteSymbol :: UpdateCSVClassifierRequest -> Lude.Maybe Lude.Text) (\s a -> s {quoteSymbol = a} :: UpdateCSVClassifierRequest)
{-# DEPRECATED uccrQuoteSymbol "Use generic-lens or generic-optics with 'quoteSymbol' instead." #-}

-- | Indicates whether the CSV file contains a header.
--
-- /Note:/ Consider using 'containsHeader' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uccrContainsHeader :: Lens.Lens' UpdateCSVClassifierRequest (Lude.Maybe CSVHeaderOption)
uccrContainsHeader = Lens.lens (containsHeader :: UpdateCSVClassifierRequest -> Lude.Maybe CSVHeaderOption) (\s a -> s {containsHeader = a} :: UpdateCSVClassifierRequest)
{-# DEPRECATED uccrContainsHeader "Use generic-lens or generic-optics with 'containsHeader' instead." #-}

-- | Specifies not to trim values before identifying the type of column values. The default value is true.
--
-- /Note:/ Consider using 'disableValueTrimming' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uccrDisableValueTrimming :: Lens.Lens' UpdateCSVClassifierRequest (Lude.Maybe Lude.Bool)
uccrDisableValueTrimming = Lens.lens (disableValueTrimming :: UpdateCSVClassifierRequest -> Lude.Maybe Lude.Bool) (\s a -> s {disableValueTrimming = a} :: UpdateCSVClassifierRequest)
{-# DEPRECATED uccrDisableValueTrimming "Use generic-lens or generic-optics with 'disableValueTrimming' instead." #-}

-- | A list of strings representing column names.
--
-- /Note:/ Consider using 'header' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uccrHeader :: Lens.Lens' UpdateCSVClassifierRequest (Lude.Maybe [Lude.Text])
uccrHeader = Lens.lens (header :: UpdateCSVClassifierRequest -> Lude.Maybe [Lude.Text]) (\s a -> s {header = a} :: UpdateCSVClassifierRequest)
{-# DEPRECATED uccrHeader "Use generic-lens or generic-optics with 'header' instead." #-}

-- | Enables the processing of files that contain only one column.
--
-- /Note:/ Consider using 'allowSingleColumn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uccrAllowSingleColumn :: Lens.Lens' UpdateCSVClassifierRequest (Lude.Maybe Lude.Bool)
uccrAllowSingleColumn = Lens.lens (allowSingleColumn :: UpdateCSVClassifierRequest -> Lude.Maybe Lude.Bool) (\s a -> s {allowSingleColumn = a} :: UpdateCSVClassifierRequest)
{-# DEPRECATED uccrAllowSingleColumn "Use generic-lens or generic-optics with 'allowSingleColumn' instead." #-}

-- | A custom symbol to denote what separates each column entry in the row.
--
-- /Note:/ Consider using 'delimiter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uccrDelimiter :: Lens.Lens' UpdateCSVClassifierRequest (Lude.Maybe Lude.Text)
uccrDelimiter = Lens.lens (delimiter :: UpdateCSVClassifierRequest -> Lude.Maybe Lude.Text) (\s a -> s {delimiter = a} :: UpdateCSVClassifierRequest)
{-# DEPRECATED uccrDelimiter "Use generic-lens or generic-optics with 'delimiter' instead." #-}

-- | The name of the classifier.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uccrName :: Lens.Lens' UpdateCSVClassifierRequest Lude.Text
uccrName = Lens.lens (name :: UpdateCSVClassifierRequest -> Lude.Text) (\s a -> s {name = a} :: UpdateCSVClassifierRequest)
{-# DEPRECATED uccrName "Use generic-lens or generic-optics with 'name' instead." #-}

instance Lude.ToJSON UpdateCSVClassifierRequest where
  toJSON UpdateCSVClassifierRequest' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("QuoteSymbol" Lude..=) Lude.<$> quoteSymbol,
            ("ContainsHeader" Lude..=) Lude.<$> containsHeader,
            ("DisableValueTrimming" Lude..=) Lude.<$> disableValueTrimming,
            ("Header" Lude..=) Lude.<$> header,
            ("AllowSingleColumn" Lude..=) Lude.<$> allowSingleColumn,
            ("Delimiter" Lude..=) Lude.<$> delimiter,
            Lude.Just ("Name" Lude..= name)
          ]
      )
