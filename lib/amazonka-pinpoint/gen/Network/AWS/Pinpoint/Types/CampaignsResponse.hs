{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.CampaignsResponse
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.CampaignsResponse
  ( CampaignsResponse (..),

    -- * Smart constructor
    mkCampaignsResponse,

    -- * Lenses
    cNextToken,
    cItem,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types.CampaignResponse
import qualified Network.AWS.Prelude as Lude

-- | Provides information about the configuration and other settings for all the campaigns that are associated with an application.
--
-- /See:/ 'mkCampaignsResponse' smart constructor.
data CampaignsResponse = CampaignsResponse'
  { -- | The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.
    nextToken :: Lude.Maybe Lude.Text,
    -- | An array of responses, one for each campaign that's associated with the application.
    item :: [CampaignResponse]
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CampaignsResponse' with the minimum fields required to make a request.
--
-- * 'nextToken' - The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.
-- * 'item' - An array of responses, one for each campaign that's associated with the application.
mkCampaignsResponse ::
  CampaignsResponse
mkCampaignsResponse =
  CampaignsResponse' {nextToken = Lude.Nothing, item = Lude.mempty}

-- | The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cNextToken :: Lens.Lens' CampaignsResponse (Lude.Maybe Lude.Text)
cNextToken = Lens.lens (nextToken :: CampaignsResponse -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: CampaignsResponse)
{-# DEPRECATED cNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | An array of responses, one for each campaign that's associated with the application.
--
-- /Note:/ Consider using 'item' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cItem :: Lens.Lens' CampaignsResponse [CampaignResponse]
cItem = Lens.lens (item :: CampaignsResponse -> [CampaignResponse]) (\s a -> s {item = a} :: CampaignsResponse)
{-# DEPRECATED cItem "Use generic-lens or generic-optics with 'item' instead." #-}

instance Lude.FromJSON CampaignsResponse where
  parseJSON =
    Lude.withObject
      "CampaignsResponse"
      ( \x ->
          CampaignsResponse'
            Lude.<$> (x Lude..:? "NextToken")
            Lude.<*> (x Lude..:? "Item" Lude..!= Lude.mempty)
      )