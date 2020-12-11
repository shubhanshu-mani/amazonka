-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.TerminateRequest
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.TerminateRequest
  ( TerminateRequest (..),

    -- * Smart constructor
    mkTerminateRequest,

    -- * Lenses
    trWorkspaceId,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Describes the information used to terminate a WorkSpace.
--
-- /See:/ 'mkTerminateRequest' smart constructor.
newtype TerminateRequest = TerminateRequest'
  { workspaceId ::
      Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'TerminateRequest' with the minimum fields required to make a request.
--
-- * 'workspaceId' - The identifier of the WorkSpace.
mkTerminateRequest ::
  -- | 'workspaceId'
  Lude.Text ->
  TerminateRequest
mkTerminateRequest pWorkspaceId_ =
  TerminateRequest' {workspaceId = pWorkspaceId_}

-- | The identifier of the WorkSpace.
--
-- /Note:/ Consider using 'workspaceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
trWorkspaceId :: Lens.Lens' TerminateRequest Lude.Text
trWorkspaceId = Lens.lens (workspaceId :: TerminateRequest -> Lude.Text) (\s a -> s {workspaceId = a} :: TerminateRequest)
{-# DEPRECATED trWorkspaceId "Use generic-lens or generic-optics with 'workspaceId' instead." #-}

instance Lude.ToJSON TerminateRequest where
  toJSON TerminateRequest' {..} =
    Lude.object
      (Lude.catMaybes [Lude.Just ("WorkspaceId" Lude..= workspaceId)])
