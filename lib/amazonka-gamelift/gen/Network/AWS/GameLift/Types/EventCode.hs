{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.EventCode
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.EventCode
  ( EventCode
      ( EventCode',
        GenericEvent,
        FleetCreated,
        FleetDeleted,
        FleetScalingEvent,
        FleetStateDownloading,
        FleetStateValidating,
        FleetStateBuilding,
        FleetStateActivating,
        FleetStateActive,
        FleetStateError,
        FleetInitializationFailed,
        FleetBinaryDownloadFailed,
        FleetValidationLaunchPathNotFound,
        FleetValidationExecutableRuntimeFailure,
        FleetValidationTimedOut,
        FleetActivationFailed,
        FleetActivationFailedNoInstances,
        FleetNewGameSessionProtectionPolicyUpdated,
        ServerProcessInvalidPath,
        ServerProcessSDKInitializationTimeout,
        ServerProcessProcessReadyTimeout,
        ServerProcessCrashed,
        ServerProcessTerminatedUnhealthy,
        ServerProcessForceTerminated,
        ServerProcessProcessExitTimeout,
        GameSessionActivationTimeout,
        FleetCreationExtractingBuild,
        FleetCreationRunningInstaller,
        FleetCreationValidatingRuntimeConfig,
        FleetVPCPeeringSucceeded,
        FleetVPCPeeringFailed,
        FleetVPCPeeringDeleted,
        InstanceInterrupted
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype EventCode = EventCode' Lude.Text
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype
    ( Lude.Hashable,
      Lude.NFData,
      Lude.ToJSONKey,
      Lude.FromJSONKey,
      Lude.ToJSON,
      Lude.FromJSON,
      Lude.ToXML,
      Lude.FromXML,
      Lude.ToText,
      Lude.FromText,
      Lude.ToByteString,
      Lude.ToQuery,
      Lude.ToHeader
    )

pattern GenericEvent :: EventCode
pattern GenericEvent = EventCode' "GENERIC_EVENT"

pattern FleetCreated :: EventCode
pattern FleetCreated = EventCode' "FLEET_CREATED"

pattern FleetDeleted :: EventCode
pattern FleetDeleted = EventCode' "FLEET_DELETED"

pattern FleetScalingEvent :: EventCode
pattern FleetScalingEvent = EventCode' "FLEET_SCALING_EVENT"

pattern FleetStateDownloading :: EventCode
pattern FleetStateDownloading = EventCode' "FLEET_STATE_DOWNLOADING"

pattern FleetStateValidating :: EventCode
pattern FleetStateValidating = EventCode' "FLEET_STATE_VALIDATING"

pattern FleetStateBuilding :: EventCode
pattern FleetStateBuilding = EventCode' "FLEET_STATE_BUILDING"

pattern FleetStateActivating :: EventCode
pattern FleetStateActivating = EventCode' "FLEET_STATE_ACTIVATING"

pattern FleetStateActive :: EventCode
pattern FleetStateActive = EventCode' "FLEET_STATE_ACTIVE"

pattern FleetStateError :: EventCode
pattern FleetStateError = EventCode' "FLEET_STATE_ERROR"

pattern FleetInitializationFailed :: EventCode
pattern FleetInitializationFailed = EventCode' "FLEET_INITIALIZATION_FAILED"

pattern FleetBinaryDownloadFailed :: EventCode
pattern FleetBinaryDownloadFailed = EventCode' "FLEET_BINARY_DOWNLOAD_FAILED"

pattern FleetValidationLaunchPathNotFound :: EventCode
pattern FleetValidationLaunchPathNotFound = EventCode' "FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND"

pattern FleetValidationExecutableRuntimeFailure :: EventCode
pattern FleetValidationExecutableRuntimeFailure = EventCode' "FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE"

pattern FleetValidationTimedOut :: EventCode
pattern FleetValidationTimedOut = EventCode' "FLEET_VALIDATION_TIMED_OUT"

pattern FleetActivationFailed :: EventCode
pattern FleetActivationFailed = EventCode' "FLEET_ACTIVATION_FAILED"

pattern FleetActivationFailedNoInstances :: EventCode
pattern FleetActivationFailedNoInstances = EventCode' "FLEET_ACTIVATION_FAILED_NO_INSTANCES"

pattern FleetNewGameSessionProtectionPolicyUpdated :: EventCode
pattern FleetNewGameSessionProtectionPolicyUpdated = EventCode' "FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED"

pattern ServerProcessInvalidPath :: EventCode
pattern ServerProcessInvalidPath = EventCode' "SERVER_PROCESS_INVALID_PATH"

pattern ServerProcessSDKInitializationTimeout :: EventCode
pattern ServerProcessSDKInitializationTimeout = EventCode' "SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT"

pattern ServerProcessProcessReadyTimeout :: EventCode
pattern ServerProcessProcessReadyTimeout = EventCode' "SERVER_PROCESS_PROCESS_READY_TIMEOUT"

pattern ServerProcessCrashed :: EventCode
pattern ServerProcessCrashed = EventCode' "SERVER_PROCESS_CRASHED"

pattern ServerProcessTerminatedUnhealthy :: EventCode
pattern ServerProcessTerminatedUnhealthy = EventCode' "SERVER_PROCESS_TERMINATED_UNHEALTHY"

pattern ServerProcessForceTerminated :: EventCode
pattern ServerProcessForceTerminated = EventCode' "SERVER_PROCESS_FORCE_TERMINATED"

pattern ServerProcessProcessExitTimeout :: EventCode
pattern ServerProcessProcessExitTimeout = EventCode' "SERVER_PROCESS_PROCESS_EXIT_TIMEOUT"

pattern GameSessionActivationTimeout :: EventCode
pattern GameSessionActivationTimeout = EventCode' "GAME_SESSION_ACTIVATION_TIMEOUT"

pattern FleetCreationExtractingBuild :: EventCode
pattern FleetCreationExtractingBuild = EventCode' "FLEET_CREATION_EXTRACTING_BUILD"

pattern FleetCreationRunningInstaller :: EventCode
pattern FleetCreationRunningInstaller = EventCode' "FLEET_CREATION_RUNNING_INSTALLER"

pattern FleetCreationValidatingRuntimeConfig :: EventCode
pattern FleetCreationValidatingRuntimeConfig = EventCode' "FLEET_CREATION_VALIDATING_RUNTIME_CONFIG"

pattern FleetVPCPeeringSucceeded :: EventCode
pattern FleetVPCPeeringSucceeded = EventCode' "FLEET_VPC_PEERING_SUCCEEDED"

pattern FleetVPCPeeringFailed :: EventCode
pattern FleetVPCPeeringFailed = EventCode' "FLEET_VPC_PEERING_FAILED"

pattern FleetVPCPeeringDeleted :: EventCode
pattern FleetVPCPeeringDeleted = EventCode' "FLEET_VPC_PEERING_DELETED"

pattern InstanceInterrupted :: EventCode
pattern InstanceInterrupted = EventCode' "INSTANCE_INTERRUPTED"

{-# COMPLETE
  GenericEvent,
  FleetCreated,
  FleetDeleted,
  FleetScalingEvent,
  FleetStateDownloading,
  FleetStateValidating,
  FleetStateBuilding,
  FleetStateActivating,
  FleetStateActive,
  FleetStateError,
  FleetInitializationFailed,
  FleetBinaryDownloadFailed,
  FleetValidationLaunchPathNotFound,
  FleetValidationExecutableRuntimeFailure,
  FleetValidationTimedOut,
  FleetActivationFailed,
  FleetActivationFailedNoInstances,
  FleetNewGameSessionProtectionPolicyUpdated,
  ServerProcessInvalidPath,
  ServerProcessSDKInitializationTimeout,
  ServerProcessProcessReadyTimeout,
  ServerProcessCrashed,
  ServerProcessTerminatedUnhealthy,
  ServerProcessForceTerminated,
  ServerProcessProcessExitTimeout,
  GameSessionActivationTimeout,
  FleetCreationExtractingBuild,
  FleetCreationRunningInstaller,
  FleetCreationValidatingRuntimeConfig,
  FleetVPCPeeringSucceeded,
  FleetVPCPeeringFailed,
  FleetVPCPeeringDeleted,
  InstanceInterrupted,
  EventCode'
  #-}