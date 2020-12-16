{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.TeletextSourceSettings
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.TeletextSourceSettings
  ( TeletextSourceSettings (..),

    -- * Smart constructor
    mkTeletextSourceSettings,

    -- * Lenses
    tssPageNumber,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Teletext Source Settings
--
-- /See:/ 'mkTeletextSourceSettings' smart constructor.
newtype TeletextSourceSettings = TeletextSourceSettings'
  { -- | Specifies the teletext page number within the data stream from which to extract captions. Range of 0x100 (256) to 0x8FF (2303). Unused for passthrough. Should be specified as a hexadecimal string with no "0x" prefix.
    pageNumber :: Lude.Maybe Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'TeletextSourceSettings' with the minimum fields required to make a request.
--
-- * 'pageNumber' - Specifies the teletext page number within the data stream from which to extract captions. Range of 0x100 (256) to 0x8FF (2303). Unused for passthrough. Should be specified as a hexadecimal string with no "0x" prefix.
mkTeletextSourceSettings ::
  TeletextSourceSettings
mkTeletextSourceSettings =
  TeletextSourceSettings' {pageNumber = Lude.Nothing}

-- | Specifies the teletext page number within the data stream from which to extract captions. Range of 0x100 (256) to 0x8FF (2303). Unused for passthrough. Should be specified as a hexadecimal string with no "0x" prefix.
--
-- /Note:/ Consider using 'pageNumber' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tssPageNumber :: Lens.Lens' TeletextSourceSettings (Lude.Maybe Lude.Text)
tssPageNumber = Lens.lens (pageNumber :: TeletextSourceSettings -> Lude.Maybe Lude.Text) (\s a -> s {pageNumber = a} :: TeletextSourceSettings)
{-# DEPRECATED tssPageNumber "Use generic-lens or generic-optics with 'pageNumber' instead." #-}

instance Lude.FromJSON TeletextSourceSettings where
  parseJSON =
    Lude.withObject
      "TeletextSourceSettings"
      (\x -> TeletextSourceSettings' Lude.<$> (x Lude..:? "pageNumber"))

instance Lude.ToJSON TeletextSourceSettings where
  toJSON TeletextSourceSettings' {..} =
    Lude.object
      (Lude.catMaybes [("pageNumber" Lude..=) Lude.<$> pageNumber])