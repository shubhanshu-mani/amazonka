{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.StartRequest
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.StartRequest
  ( StartRequest (..),

    -- * Smart constructor
    mkStartRequest,

    -- * Lenses
    sWorkspaceId,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Information used to start a WorkSpace.
--
-- /See:/ 'mkStartRequest' smart constructor.
newtype StartRequest = StartRequest'
  { -- | The identifier of the WorkSpace.
    workspaceId :: Lude.Maybe Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'StartRequest' with the minimum fields required to make a request.
--
-- * 'workspaceId' - The identifier of the WorkSpace.
mkStartRequest ::
  StartRequest
mkStartRequest = StartRequest' {workspaceId = Lude.Nothing}

-- | The identifier of the WorkSpace.
--
-- /Note:/ Consider using 'workspaceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sWorkspaceId :: Lens.Lens' StartRequest (Lude.Maybe Lude.Text)
sWorkspaceId = Lens.lens (workspaceId :: StartRequest -> Lude.Maybe Lude.Text) (\s a -> s {workspaceId = a} :: StartRequest)
{-# DEPRECATED sWorkspaceId "Use generic-lens or generic-optics with 'workspaceId' instead." #-}

instance Lude.ToJSON StartRequest where
  toJSON StartRequest' {..} =
    Lude.object
      (Lude.catMaybes [("WorkspaceId" Lude..=) Lude.<$> workspaceId])