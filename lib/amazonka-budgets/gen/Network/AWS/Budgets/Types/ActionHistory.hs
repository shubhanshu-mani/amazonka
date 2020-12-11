-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Budgets.Types.ActionHistory
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.ActionHistory
  ( ActionHistory (..),

    -- * Smart constructor
    mkActionHistory,

    -- * Lenses
    ahTimestamp,
    ahStatus,
    ahEventType,
    ahActionHistoryDetails,
  )
where

import Network.AWS.Budgets.Types.ActionHistoryDetails
import Network.AWS.Budgets.Types.ActionStatus
import Network.AWS.Budgets.Types.EventType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | The historical records for a budget action.
--
-- /See:/ 'mkActionHistory' smart constructor.
data ActionHistory = ActionHistory'
  { timestamp :: Lude.Timestamp,
    status :: ActionStatus,
    eventType :: EventType,
    actionHistoryDetails :: ActionHistoryDetails
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ActionHistory' with the minimum fields required to make a request.
--
-- * 'actionHistoryDetails' - The description of details of the event.
-- * 'eventType' - This distinguishes between whether the events are triggered by the user or generated by the system.
-- * 'status' - The status of action at the time of the event.
-- * 'timestamp' - Undocumented field.
mkActionHistory ::
  -- | 'timestamp'
  Lude.Timestamp ->
  -- | 'status'
  ActionStatus ->
  -- | 'eventType'
  EventType ->
  -- | 'actionHistoryDetails'
  ActionHistoryDetails ->
  ActionHistory
mkActionHistory
  pTimestamp_
  pStatus_
  pEventType_
  pActionHistoryDetails_ =
    ActionHistory'
      { timestamp = pTimestamp_,
        status = pStatus_,
        eventType = pEventType_,
        actionHistoryDetails = pActionHistoryDetails_
      }

-- | Undocumented field.
--
-- /Note:/ Consider using 'timestamp' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ahTimestamp :: Lens.Lens' ActionHistory Lude.Timestamp
ahTimestamp = Lens.lens (timestamp :: ActionHistory -> Lude.Timestamp) (\s a -> s {timestamp = a} :: ActionHistory)
{-# DEPRECATED ahTimestamp "Use generic-lens or generic-optics with 'timestamp' instead." #-}

-- | The status of action at the time of the event.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ahStatus :: Lens.Lens' ActionHistory ActionStatus
ahStatus = Lens.lens (status :: ActionHistory -> ActionStatus) (\s a -> s {status = a} :: ActionHistory)
{-# DEPRECATED ahStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | This distinguishes between whether the events are triggered by the user or generated by the system.
--
-- /Note:/ Consider using 'eventType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ahEventType :: Lens.Lens' ActionHistory EventType
ahEventType = Lens.lens (eventType :: ActionHistory -> EventType) (\s a -> s {eventType = a} :: ActionHistory)
{-# DEPRECATED ahEventType "Use generic-lens or generic-optics with 'eventType' instead." #-}

-- | The description of details of the event.
--
-- /Note:/ Consider using 'actionHistoryDetails' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ahActionHistoryDetails :: Lens.Lens' ActionHistory ActionHistoryDetails
ahActionHistoryDetails = Lens.lens (actionHistoryDetails :: ActionHistory -> ActionHistoryDetails) (\s a -> s {actionHistoryDetails = a} :: ActionHistory)
{-# DEPRECATED ahActionHistoryDetails "Use generic-lens or generic-optics with 'actionHistoryDetails' instead." #-}

instance Lude.FromJSON ActionHistory where
  parseJSON =
    Lude.withObject
      "ActionHistory"
      ( \x ->
          ActionHistory'
            Lude.<$> (x Lude..: "Timestamp")
            Lude.<*> (x Lude..: "Status")
            Lude.<*> (x Lude..: "EventType")
            Lude.<*> (x Lude..: "ActionHistoryDetails")
      )
