{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.Types.TaskSubmittedEventDetails
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.TaskSubmittedEventDetails
  ( TaskSubmittedEventDetails (..),

    -- * Smart constructor
    mkTaskSubmittedEventDetails,

    -- * Lenses
    tResourceType,
    tOutput,
    tResource,
    tOutputDetails,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.StepFunctions.Types.HistoryEventExecutionDataDetails

-- | Contains details about a task submitted to a resource .
--
-- /See:/ 'mkTaskSubmittedEventDetails' smart constructor.
data TaskSubmittedEventDetails = TaskSubmittedEventDetails'
  { -- | The action of the resource called by a task state.
    resourceType :: Lude.Text,
    -- | The response from a resource when a task has started. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
    output :: Lude.Maybe (Lude.Sensitive Lude.Text),
    -- | The service name of the resource in a task state.
    resource :: Lude.Text,
    -- | Contains details about the output of an execution history event.
    outputDetails :: Lude.Maybe HistoryEventExecutionDataDetails
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'TaskSubmittedEventDetails' with the minimum fields required to make a request.
--
-- * 'resourceType' - The action of the resource called by a task state.
-- * 'output' - The response from a resource when a task has started. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
-- * 'resource' - The service name of the resource in a task state.
-- * 'outputDetails' - Contains details about the output of an execution history event.
mkTaskSubmittedEventDetails ::
  -- | 'resourceType'
  Lude.Text ->
  -- | 'resource'
  Lude.Text ->
  TaskSubmittedEventDetails
mkTaskSubmittedEventDetails pResourceType_ pResource_ =
  TaskSubmittedEventDetails'
    { resourceType = pResourceType_,
      output = Lude.Nothing,
      resource = pResource_,
      outputDetails = Lude.Nothing
    }

-- | The action of the resource called by a task state.
--
-- /Note:/ Consider using 'resourceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tResourceType :: Lens.Lens' TaskSubmittedEventDetails Lude.Text
tResourceType = Lens.lens (resourceType :: TaskSubmittedEventDetails -> Lude.Text) (\s a -> s {resourceType = a} :: TaskSubmittedEventDetails)
{-# DEPRECATED tResourceType "Use generic-lens or generic-optics with 'resourceType' instead." #-}

-- | The response from a resource when a task has started. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
--
-- /Note:/ Consider using 'output' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tOutput :: Lens.Lens' TaskSubmittedEventDetails (Lude.Maybe (Lude.Sensitive Lude.Text))
tOutput = Lens.lens (output :: TaskSubmittedEventDetails -> Lude.Maybe (Lude.Sensitive Lude.Text)) (\s a -> s {output = a} :: TaskSubmittedEventDetails)
{-# DEPRECATED tOutput "Use generic-lens or generic-optics with 'output' instead." #-}

-- | The service name of the resource in a task state.
--
-- /Note:/ Consider using 'resource' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tResource :: Lens.Lens' TaskSubmittedEventDetails Lude.Text
tResource = Lens.lens (resource :: TaskSubmittedEventDetails -> Lude.Text) (\s a -> s {resource = a} :: TaskSubmittedEventDetails)
{-# DEPRECATED tResource "Use generic-lens or generic-optics with 'resource' instead." #-}

-- | Contains details about the output of an execution history event.
--
-- /Note:/ Consider using 'outputDetails' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tOutputDetails :: Lens.Lens' TaskSubmittedEventDetails (Lude.Maybe HistoryEventExecutionDataDetails)
tOutputDetails = Lens.lens (outputDetails :: TaskSubmittedEventDetails -> Lude.Maybe HistoryEventExecutionDataDetails) (\s a -> s {outputDetails = a} :: TaskSubmittedEventDetails)
{-# DEPRECATED tOutputDetails "Use generic-lens or generic-optics with 'outputDetails' instead." #-}

instance Lude.FromJSON TaskSubmittedEventDetails where
  parseJSON =
    Lude.withObject
      "TaskSubmittedEventDetails"
      ( \x ->
          TaskSubmittedEventDetails'
            Lude.<$> (x Lude..: "resourceType")
            Lude.<*> (x Lude..:? "output")
            Lude.<*> (x Lude..: "resource")
            Lude.<*> (x Lude..:? "outputDetails")
      )