{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.Types.Activity
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.Activity
  ( Activity (..),

    -- * Smart constructor
    mkActivity,

    -- * Lenses
    aProgress,
    aStartTime,
    aActivityId,
    aCause,
    aStatusMessage,
    aAutoScalingGroupName,
    aEndTime,
    aDetails,
    aDescription,
    aStatusCode,
  )
where

import Network.AWS.AutoScaling.Types.ScalingActivityStatusCode
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Describes scaling activity, which is a long-running process that represents a change to your Auto Scaling group, such as changing its size or replacing an instance.
--
-- /See:/ 'mkActivity' smart constructor.
data Activity = Activity'
  { -- | A value between 0 and 100 that indicates the progress of the activity.
    progress :: Lude.Maybe Lude.Int,
    -- | The start time of the activity.
    startTime :: Lude.DateTime,
    -- | The ID of the activity.
    activityId :: Lude.Text,
    -- | The reason the activity began.
    cause :: Lude.Text,
    -- | A friendly, more verbose description of the activity status.
    statusMessage :: Lude.Maybe Lude.Text,
    -- | The name of the Auto Scaling group.
    autoScalingGroupName :: Lude.Text,
    -- | The end time of the activity.
    endTime :: Lude.Maybe Lude.DateTime,
    -- | The details about the activity.
    details :: Lude.Maybe Lude.Text,
    -- | A friendly, more verbose description of the activity.
    description :: Lude.Maybe Lude.Text,
    -- | The current status of the activity.
    statusCode :: ScalingActivityStatusCode
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'Activity' with the minimum fields required to make a request.
--
-- * 'progress' - A value between 0 and 100 that indicates the progress of the activity.
-- * 'startTime' - The start time of the activity.
-- * 'activityId' - The ID of the activity.
-- * 'cause' - The reason the activity began.
-- * 'statusMessage' - A friendly, more verbose description of the activity status.
-- * 'autoScalingGroupName' - The name of the Auto Scaling group.
-- * 'endTime' - The end time of the activity.
-- * 'details' - The details about the activity.
-- * 'description' - A friendly, more verbose description of the activity.
-- * 'statusCode' - The current status of the activity.
mkActivity ::
  -- | 'startTime'
  Lude.DateTime ->
  -- | 'activityId'
  Lude.Text ->
  -- | 'cause'
  Lude.Text ->
  -- | 'autoScalingGroupName'
  Lude.Text ->
  -- | 'statusCode'
  ScalingActivityStatusCode ->
  Activity
mkActivity
  pStartTime_
  pActivityId_
  pCause_
  pAutoScalingGroupName_
  pStatusCode_ =
    Activity'
      { progress = Lude.Nothing,
        startTime = pStartTime_,
        activityId = pActivityId_,
        cause = pCause_,
        statusMessage = Lude.Nothing,
        autoScalingGroupName = pAutoScalingGroupName_,
        endTime = Lude.Nothing,
        details = Lude.Nothing,
        description = Lude.Nothing,
        statusCode = pStatusCode_
      }

-- | A value between 0 and 100 that indicates the progress of the activity.
--
-- /Note:/ Consider using 'progress' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aProgress :: Lens.Lens' Activity (Lude.Maybe Lude.Int)
aProgress = Lens.lens (progress :: Activity -> Lude.Maybe Lude.Int) (\s a -> s {progress = a} :: Activity)
{-# DEPRECATED aProgress "Use generic-lens or generic-optics with 'progress' instead." #-}

-- | The start time of the activity.
--
-- /Note:/ Consider using 'startTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aStartTime :: Lens.Lens' Activity Lude.DateTime
aStartTime = Lens.lens (startTime :: Activity -> Lude.DateTime) (\s a -> s {startTime = a} :: Activity)
{-# DEPRECATED aStartTime "Use generic-lens or generic-optics with 'startTime' instead." #-}

-- | The ID of the activity.
--
-- /Note:/ Consider using 'activityId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aActivityId :: Lens.Lens' Activity Lude.Text
aActivityId = Lens.lens (activityId :: Activity -> Lude.Text) (\s a -> s {activityId = a} :: Activity)
{-# DEPRECATED aActivityId "Use generic-lens or generic-optics with 'activityId' instead." #-}

-- | The reason the activity began.
--
-- /Note:/ Consider using 'cause' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aCause :: Lens.Lens' Activity Lude.Text
aCause = Lens.lens (cause :: Activity -> Lude.Text) (\s a -> s {cause = a} :: Activity)
{-# DEPRECATED aCause "Use generic-lens or generic-optics with 'cause' instead." #-}

-- | A friendly, more verbose description of the activity status.
--
-- /Note:/ Consider using 'statusMessage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aStatusMessage :: Lens.Lens' Activity (Lude.Maybe Lude.Text)
aStatusMessage = Lens.lens (statusMessage :: Activity -> Lude.Maybe Lude.Text) (\s a -> s {statusMessage = a} :: Activity)
{-# DEPRECATED aStatusMessage "Use generic-lens or generic-optics with 'statusMessage' instead." #-}

-- | The name of the Auto Scaling group.
--
-- /Note:/ Consider using 'autoScalingGroupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aAutoScalingGroupName :: Lens.Lens' Activity Lude.Text
aAutoScalingGroupName = Lens.lens (autoScalingGroupName :: Activity -> Lude.Text) (\s a -> s {autoScalingGroupName = a} :: Activity)
{-# DEPRECATED aAutoScalingGroupName "Use generic-lens or generic-optics with 'autoScalingGroupName' instead." #-}

-- | The end time of the activity.
--
-- /Note:/ Consider using 'endTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aEndTime :: Lens.Lens' Activity (Lude.Maybe Lude.DateTime)
aEndTime = Lens.lens (endTime :: Activity -> Lude.Maybe Lude.DateTime) (\s a -> s {endTime = a} :: Activity)
{-# DEPRECATED aEndTime "Use generic-lens or generic-optics with 'endTime' instead." #-}

-- | The details about the activity.
--
-- /Note:/ Consider using 'details' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aDetails :: Lens.Lens' Activity (Lude.Maybe Lude.Text)
aDetails = Lens.lens (details :: Activity -> Lude.Maybe Lude.Text) (\s a -> s {details = a} :: Activity)
{-# DEPRECATED aDetails "Use generic-lens or generic-optics with 'details' instead." #-}

-- | A friendly, more verbose description of the activity.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aDescription :: Lens.Lens' Activity (Lude.Maybe Lude.Text)
aDescription = Lens.lens (description :: Activity -> Lude.Maybe Lude.Text) (\s a -> s {description = a} :: Activity)
{-# DEPRECATED aDescription "Use generic-lens or generic-optics with 'description' instead." #-}

-- | The current status of the activity.
--
-- /Note:/ Consider using 'statusCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aStatusCode :: Lens.Lens' Activity ScalingActivityStatusCode
aStatusCode = Lens.lens (statusCode :: Activity -> ScalingActivityStatusCode) (\s a -> s {statusCode = a} :: Activity)
{-# DEPRECATED aStatusCode "Use generic-lens or generic-optics with 'statusCode' instead." #-}

instance Lude.FromXML Activity where
  parseXML x =
    Activity'
      Lude.<$> (x Lude..@? "Progress")
      Lude.<*> (x Lude..@ "StartTime")
      Lude.<*> (x Lude..@ "ActivityId")
      Lude.<*> (x Lude..@ "Cause")
      Lude.<*> (x Lude..@? "StatusMessage")
      Lude.<*> (x Lude..@ "AutoScalingGroupName")
      Lude.<*> (x Lude..@? "EndTime")
      Lude.<*> (x Lude..@? "Details")
      Lude.<*> (x Lude..@? "Description")
      Lude.<*> (x Lude..@ "StatusCode")