{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.AssessmentRunAgent
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.AssessmentRunAgent
  ( AssessmentRunAgent (..),

    -- * Smart constructor
    mkAssessmentRunAgent,

    -- * Lenses
    araAutoScalingGroup,
    araAgentHealthCode,
    araAgentId,
    araAgentHealthDetails,
    araTelemetryMetadata,
    araAssessmentRunARN,
    araAgentHealth,
  )
where

import Network.AWS.Inspector.Types.AgentHealth
import Network.AWS.Inspector.Types.AgentHealthCode
import Network.AWS.Inspector.Types.TelemetryMetadata
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Contains information about an Amazon Inspector agent. This data type is used as a response element in the 'ListAssessmentRunAgents' action.
--
-- /See:/ 'mkAssessmentRunAgent' smart constructor.
data AssessmentRunAgent = AssessmentRunAgent'
  { -- | The Auto Scaling group of the EC2 instance that is specified by the agent ID.
    autoScalingGroup :: Lude.Maybe Lude.Text,
    -- | The detailed health state of the agent.
    agentHealthCode :: AgentHealthCode,
    -- | The AWS account of the EC2 instance where the agent is installed.
    agentId :: Lude.Text,
    -- | The description for the agent health code.
    agentHealthDetails :: Lude.Maybe Lude.Text,
    -- | The Amazon Inspector application data metrics that are collected by the agent.
    telemetryMetadata :: [TelemetryMetadata],
    -- | The ARN of the assessment run that is associated with the agent.
    assessmentRunARN :: Lude.Text,
    -- | The current health state of the agent.
    agentHealth :: AgentHealth
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'AssessmentRunAgent' with the minimum fields required to make a request.
--
-- * 'autoScalingGroup' - The Auto Scaling group of the EC2 instance that is specified by the agent ID.
-- * 'agentHealthCode' - The detailed health state of the agent.
-- * 'agentId' - The AWS account of the EC2 instance where the agent is installed.
-- * 'agentHealthDetails' - The description for the agent health code.
-- * 'telemetryMetadata' - The Amazon Inspector application data metrics that are collected by the agent.
-- * 'assessmentRunARN' - The ARN of the assessment run that is associated with the agent.
-- * 'agentHealth' - The current health state of the agent.
mkAssessmentRunAgent ::
  -- | 'agentHealthCode'
  AgentHealthCode ->
  -- | 'agentId'
  Lude.Text ->
  -- | 'assessmentRunARN'
  Lude.Text ->
  -- | 'agentHealth'
  AgentHealth ->
  AssessmentRunAgent
mkAssessmentRunAgent
  pAgentHealthCode_
  pAgentId_
  pAssessmentRunARN_
  pAgentHealth_ =
    AssessmentRunAgent'
      { autoScalingGroup = Lude.Nothing,
        agentHealthCode = pAgentHealthCode_,
        agentId = pAgentId_,
        agentHealthDetails = Lude.Nothing,
        telemetryMetadata = Lude.mempty,
        assessmentRunARN = pAssessmentRunARN_,
        agentHealth = pAgentHealth_
      }

-- | The Auto Scaling group of the EC2 instance that is specified by the agent ID.
--
-- /Note:/ Consider using 'autoScalingGroup' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
araAutoScalingGroup :: Lens.Lens' AssessmentRunAgent (Lude.Maybe Lude.Text)
araAutoScalingGroup = Lens.lens (autoScalingGroup :: AssessmentRunAgent -> Lude.Maybe Lude.Text) (\s a -> s {autoScalingGroup = a} :: AssessmentRunAgent)
{-# DEPRECATED araAutoScalingGroup "Use generic-lens or generic-optics with 'autoScalingGroup' instead." #-}

-- | The detailed health state of the agent.
--
-- /Note:/ Consider using 'agentHealthCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
araAgentHealthCode :: Lens.Lens' AssessmentRunAgent AgentHealthCode
araAgentHealthCode = Lens.lens (agentHealthCode :: AssessmentRunAgent -> AgentHealthCode) (\s a -> s {agentHealthCode = a} :: AssessmentRunAgent)
{-# DEPRECATED araAgentHealthCode "Use generic-lens or generic-optics with 'agentHealthCode' instead." #-}

-- | The AWS account of the EC2 instance where the agent is installed.
--
-- /Note:/ Consider using 'agentId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
araAgentId :: Lens.Lens' AssessmentRunAgent Lude.Text
araAgentId = Lens.lens (agentId :: AssessmentRunAgent -> Lude.Text) (\s a -> s {agentId = a} :: AssessmentRunAgent)
{-# DEPRECATED araAgentId "Use generic-lens or generic-optics with 'agentId' instead." #-}

-- | The description for the agent health code.
--
-- /Note:/ Consider using 'agentHealthDetails' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
araAgentHealthDetails :: Lens.Lens' AssessmentRunAgent (Lude.Maybe Lude.Text)
araAgentHealthDetails = Lens.lens (agentHealthDetails :: AssessmentRunAgent -> Lude.Maybe Lude.Text) (\s a -> s {agentHealthDetails = a} :: AssessmentRunAgent)
{-# DEPRECATED araAgentHealthDetails "Use generic-lens or generic-optics with 'agentHealthDetails' instead." #-}

-- | The Amazon Inspector application data metrics that are collected by the agent.
--
-- /Note:/ Consider using 'telemetryMetadata' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
araTelemetryMetadata :: Lens.Lens' AssessmentRunAgent [TelemetryMetadata]
araTelemetryMetadata = Lens.lens (telemetryMetadata :: AssessmentRunAgent -> [TelemetryMetadata]) (\s a -> s {telemetryMetadata = a} :: AssessmentRunAgent)
{-# DEPRECATED araTelemetryMetadata "Use generic-lens or generic-optics with 'telemetryMetadata' instead." #-}

-- | The ARN of the assessment run that is associated with the agent.
--
-- /Note:/ Consider using 'assessmentRunARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
araAssessmentRunARN :: Lens.Lens' AssessmentRunAgent Lude.Text
araAssessmentRunARN = Lens.lens (assessmentRunARN :: AssessmentRunAgent -> Lude.Text) (\s a -> s {assessmentRunARN = a} :: AssessmentRunAgent)
{-# DEPRECATED araAssessmentRunARN "Use generic-lens or generic-optics with 'assessmentRunARN' instead." #-}

-- | The current health state of the agent.
--
-- /Note:/ Consider using 'agentHealth' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
araAgentHealth :: Lens.Lens' AssessmentRunAgent AgentHealth
araAgentHealth = Lens.lens (agentHealth :: AssessmentRunAgent -> AgentHealth) (\s a -> s {agentHealth = a} :: AssessmentRunAgent)
{-# DEPRECATED araAgentHealth "Use generic-lens or generic-optics with 'agentHealth' instead." #-}

instance Lude.FromJSON AssessmentRunAgent where
  parseJSON =
    Lude.withObject
      "AssessmentRunAgent"
      ( \x ->
          AssessmentRunAgent'
            Lude.<$> (x Lude..:? "autoScalingGroup")
            Lude.<*> (x Lude..: "agentHealthCode")
            Lude.<*> (x Lude..: "agentId")
            Lude.<*> (x Lude..:? "agentHealthDetails")
            Lude.<*> (x Lude..:? "telemetryMetadata" Lude..!= Lude.mempty)
            Lude.<*> (x Lude..: "assessmentRunArn")
            Lude.<*> (x Lude..: "agentHealth")
      )