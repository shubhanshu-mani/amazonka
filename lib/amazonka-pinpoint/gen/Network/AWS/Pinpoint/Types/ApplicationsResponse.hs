{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ApplicationsResponse
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.ApplicationsResponse
  ( ApplicationsResponse (..),

    -- * Smart constructor
    mkApplicationsResponse,

    -- * Lenses
    afNextToken,
    afItem,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types.ApplicationResponse
import qualified Network.AWS.Prelude as Lude

-- | Provides information about all of your applications.
--
-- /See:/ 'mkApplicationsResponse' smart constructor.
data ApplicationsResponse = ApplicationsResponse'
  { -- | The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.
    nextToken :: Lude.Maybe Lude.Text,
    -- | An array of responses, one for each application that was returned.
    item :: Lude.Maybe [ApplicationResponse]
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ApplicationsResponse' with the minimum fields required to make a request.
--
-- * 'nextToken' - The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.
-- * 'item' - An array of responses, one for each application that was returned.
mkApplicationsResponse ::
  ApplicationsResponse
mkApplicationsResponse =
  ApplicationsResponse'
    { nextToken = Lude.Nothing,
      item = Lude.Nothing
    }

-- | The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
afNextToken :: Lens.Lens' ApplicationsResponse (Lude.Maybe Lude.Text)
afNextToken = Lens.lens (nextToken :: ApplicationsResponse -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: ApplicationsResponse)
{-# DEPRECATED afNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | An array of responses, one for each application that was returned.
--
-- /Note:/ Consider using 'item' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
afItem :: Lens.Lens' ApplicationsResponse (Lude.Maybe [ApplicationResponse])
afItem = Lens.lens (item :: ApplicationsResponse -> Lude.Maybe [ApplicationResponse]) (\s a -> s {item = a} :: ApplicationsResponse)
{-# DEPRECATED afItem "Use generic-lens or generic-optics with 'item' instead." #-}

instance Lude.FromJSON ApplicationsResponse where
  parseJSON =
    Lude.withObject
      "ApplicationsResponse"
      ( \x ->
          ApplicationsResponse'
            Lude.<$> (x Lude..:? "NextToken")
            Lude.<*> (x Lude..:? "Item" Lude..!= Lude.mempty)
      )