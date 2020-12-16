{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.Types.ExecutionListItem
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.ExecutionListItem
  ( ExecutionListItem (..),

    -- * Smart constructor
    mkExecutionListItem,

    -- * Lenses
    eliStopDate,
    eliStatus,
    eliStartDate,
    eliName,
    eliStateMachineARN,
    eliExecutionARN,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.StepFunctions.Types.ExecutionStatus

-- | Contains details about an execution.
--
-- /See:/ 'mkExecutionListItem' smart constructor.
data ExecutionListItem = ExecutionListItem'
  { -- | If the execution already ended, the date the execution stopped.
    stopDate :: Lude.Maybe Lude.Timestamp,
    -- | The current status of the execution.
    status :: ExecutionStatus,
    -- | The date the execution started.
    startDate :: Lude.Timestamp,
    -- | The name of the execution.
    --
    -- A name must /not/ contain:
    --
    --     * white space
    --
    --
    --     * brackets @< > { } [ ]@
    --
    --
    --     * wildcard characters @? *@
    --
    --
    --     * special characters @" # % \ ^ | ~ ` $ & , ; : /@
    --
    --
    --     * control characters (@U+0000-001F@ , @U+007F-009F@ )
    --
    --
    -- To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.
    name :: Lude.Text,
    -- | The Amazon Resource Name (ARN) of the executed state machine.
    stateMachineARN :: Lude.Text,
    -- | The Amazon Resource Name (ARN) that identifies the execution.
    executionARN :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ExecutionListItem' with the minimum fields required to make a request.
--
-- * 'stopDate' - If the execution already ended, the date the execution stopped.
-- * 'status' - The current status of the execution.
-- * 'startDate' - The date the execution started.
-- * 'name' - The name of the execution.
--
-- A name must /not/ contain:
--
--     * white space
--
--
--     * brackets @< > { } [ ]@
--
--
--     * wildcard characters @? *@
--
--
--     * special characters @" # % \ ^ | ~ ` $ & , ; : /@
--
--
--     * control characters (@U+0000-001F@ , @U+007F-009F@ )
--
--
-- To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.
-- * 'stateMachineARN' - The Amazon Resource Name (ARN) of the executed state machine.
-- * 'executionARN' - The Amazon Resource Name (ARN) that identifies the execution.
mkExecutionListItem ::
  -- | 'status'
  ExecutionStatus ->
  -- | 'startDate'
  Lude.Timestamp ->
  -- | 'name'
  Lude.Text ->
  -- | 'stateMachineARN'
  Lude.Text ->
  -- | 'executionARN'
  Lude.Text ->
  ExecutionListItem
mkExecutionListItem
  pStatus_
  pStartDate_
  pName_
  pStateMachineARN_
  pExecutionARN_ =
    ExecutionListItem'
      { stopDate = Lude.Nothing,
        status = pStatus_,
        startDate = pStartDate_,
        name = pName_,
        stateMachineARN = pStateMachineARN_,
        executionARN = pExecutionARN_
      }

-- | If the execution already ended, the date the execution stopped.
--
-- /Note:/ Consider using 'stopDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eliStopDate :: Lens.Lens' ExecutionListItem (Lude.Maybe Lude.Timestamp)
eliStopDate = Lens.lens (stopDate :: ExecutionListItem -> Lude.Maybe Lude.Timestamp) (\s a -> s {stopDate = a} :: ExecutionListItem)
{-# DEPRECATED eliStopDate "Use generic-lens or generic-optics with 'stopDate' instead." #-}

-- | The current status of the execution.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eliStatus :: Lens.Lens' ExecutionListItem ExecutionStatus
eliStatus = Lens.lens (status :: ExecutionListItem -> ExecutionStatus) (\s a -> s {status = a} :: ExecutionListItem)
{-# DEPRECATED eliStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | The date the execution started.
--
-- /Note:/ Consider using 'startDate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eliStartDate :: Lens.Lens' ExecutionListItem Lude.Timestamp
eliStartDate = Lens.lens (startDate :: ExecutionListItem -> Lude.Timestamp) (\s a -> s {startDate = a} :: ExecutionListItem)
{-# DEPRECATED eliStartDate "Use generic-lens or generic-optics with 'startDate' instead." #-}

-- | The name of the execution.
--
-- A name must /not/ contain:
--
--     * white space
--
--
--     * brackets @< > { } [ ]@
--
--
--     * wildcard characters @? *@
--
--
--     * special characters @" # % \ ^ | ~ ` $ & , ; : /@
--
--
--     * control characters (@U+0000-001F@ , @U+007F-009F@ )
--
--
-- To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eliName :: Lens.Lens' ExecutionListItem Lude.Text
eliName = Lens.lens (name :: ExecutionListItem -> Lude.Text) (\s a -> s {name = a} :: ExecutionListItem)
{-# DEPRECATED eliName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The Amazon Resource Name (ARN) of the executed state machine.
--
-- /Note:/ Consider using 'stateMachineARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eliStateMachineARN :: Lens.Lens' ExecutionListItem Lude.Text
eliStateMachineARN = Lens.lens (stateMachineARN :: ExecutionListItem -> Lude.Text) (\s a -> s {stateMachineARN = a} :: ExecutionListItem)
{-# DEPRECATED eliStateMachineARN "Use generic-lens or generic-optics with 'stateMachineARN' instead." #-}

-- | The Amazon Resource Name (ARN) that identifies the execution.
--
-- /Note:/ Consider using 'executionARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
eliExecutionARN :: Lens.Lens' ExecutionListItem Lude.Text
eliExecutionARN = Lens.lens (executionARN :: ExecutionListItem -> Lude.Text) (\s a -> s {executionARN = a} :: ExecutionListItem)
{-# DEPRECATED eliExecutionARN "Use generic-lens or generic-optics with 'executionARN' instead." #-}

instance Lude.FromJSON ExecutionListItem where
  parseJSON =
    Lude.withObject
      "ExecutionListItem"
      ( \x ->
          ExecutionListItem'
            Lude.<$> (x Lude..:? "stopDate")
            Lude.<*> (x Lude..: "status")
            Lude.<*> (x Lude..: "startDate")
            Lude.<*> (x Lude..: "name")
            Lude.<*> (x Lude..: "stateMachineArn")
            Lude.<*> (x Lude..: "executionArn")
      )