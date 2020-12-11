{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScalingPlans
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Auto Scaling__
--
-- Use AWS Auto Scaling to quickly discover all the scalable AWS resources for your application and configure dynamic scaling and predictive scaling for your resources using scaling plans. Use this service in conjunction with the Amazon EC2 Auto Scaling, Application Auto Scaling, Amazon CloudWatch, and AWS CloudFormation services.
-- Currently, predictive scaling is only available for Amazon EC2 Auto Scaling groups.
-- For more information about AWS Auto Scaling, including information about granting IAM users required permissions for AWS Auto Scaling actions, see the <https://docs.aws.amazon.com/autoscaling/plans/userguide/what-is-aws-auto-scaling.html AWS Auto Scaling User Guide> .
module Network.AWS.AutoScalingPlans
  ( -- * Service configuration
    autoScalingPlansService,

    -- * Errors
    -- $errors

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DescribeScalingPlanResources (Paginated)
    module Network.AWS.AutoScalingPlans.DescribeScalingPlanResources,

    -- ** CreateScalingPlan
    module Network.AWS.AutoScalingPlans.CreateScalingPlan,

    -- ** DeleteScalingPlan
    module Network.AWS.AutoScalingPlans.DeleteScalingPlan,

    -- ** UpdateScalingPlan
    module Network.AWS.AutoScalingPlans.UpdateScalingPlan,

    -- ** DescribeScalingPlans (Paginated)
    module Network.AWS.AutoScalingPlans.DescribeScalingPlans,

    -- ** GetScalingPlanResourceForecastData
    module Network.AWS.AutoScalingPlans.GetScalingPlanResourceForecastData,

    -- * Types

    -- ** ForecastDataType
    ForecastDataType (..),

    -- ** LoadMetricType
    LoadMetricType (..),

    -- ** MetricStatistic
    MetricStatistic (..),

    -- ** PolicyType
    PolicyType (..),

    -- ** PredictiveScalingMaxCapacityBehavior
    PredictiveScalingMaxCapacityBehavior (..),

    -- ** PredictiveScalingMode
    PredictiveScalingMode (..),

    -- ** ScalableDimension
    ScalableDimension (..),

    -- ** ScalingMetricType
    ScalingMetricType (..),

    -- ** ScalingPlanStatusCode
    ScalingPlanStatusCode (..),

    -- ** ScalingPolicyUpdateBehavior
    ScalingPolicyUpdateBehavior (..),

    -- ** ScalingStatusCode
    ScalingStatusCode (..),

    -- ** ServiceNamespace
    ServiceNamespace (..),

    -- ** ApplicationSource
    ApplicationSource (..),
    mkApplicationSource,
    asTagFilters,
    asCloudFormationStackARN,

    -- ** CustomizedLoadMetricSpecification
    CustomizedLoadMetricSpecification (..),
    mkCustomizedLoadMetricSpecification,
    clmsDimensions,
    clmsUnit,
    clmsMetricName,
    clmsNamespace,
    clmsStatistic,

    -- ** CustomizedScalingMetricSpecification
    CustomizedScalingMetricSpecification (..),
    mkCustomizedScalingMetricSpecification,
    csmsDimensions,
    csmsUnit,
    csmsMetricName,
    csmsNamespace,
    csmsStatistic,

    -- ** Datapoint
    Datapoint (..),
    mkDatapoint,
    dValue,
    dTimestamp,

    -- ** MetricDimension
    MetricDimension (..),
    mkMetricDimension,
    mdName,
    mdValue,

    -- ** PredefinedLoadMetricSpecification
    PredefinedLoadMetricSpecification (..),
    mkPredefinedLoadMetricSpecification,
    plmsResourceLabel,
    plmsPredefinedLoadMetricType,

    -- ** PredefinedScalingMetricSpecification
    PredefinedScalingMetricSpecification (..),
    mkPredefinedScalingMetricSpecification,
    psmsResourceLabel,
    psmsPredefinedScalingMetricType,

    -- ** ScalingInstruction
    ScalingInstruction (..),
    mkScalingInstruction,
    siScheduledActionBufferTime,
    siPredictiveScalingMaxCapacityBuffer,
    siScalingPolicyUpdateBehavior,
    siCustomizedLoadMetricSpecification,
    siPredictiveScalingMode,
    siDisableDynamicScaling,
    siPredictiveScalingMaxCapacityBehavior,
    siPredefinedLoadMetricSpecification,
    siServiceNamespace,
    siResourceId,
    siScalableDimension,
    siMinCapacity,
    siMaxCapacity,
    siTargetTrackingConfigurations,

    -- ** ScalingPlan
    ScalingPlan (..),
    mkScalingPlan,
    spCreationTime,
    spStatusStartTime,
    spStatusMessage,
    spScalingPlanName,
    spScalingPlanVersion,
    spApplicationSource,
    spScalingInstructions,
    spStatusCode,

    -- ** ScalingPlanResource
    ScalingPlanResource (..),
    mkScalingPlanResource,
    sprScalingStatusMessage,
    sprScalingPolicies,
    sprScalingPlanName,
    sprScalingPlanVersion,
    sprServiceNamespace,
    sprResourceId,
    sprScalableDimension,
    sprScalingStatusCode,

    -- ** ScalingPolicy
    ScalingPolicy (..),
    mkScalingPolicy,
    spTargetTrackingConfiguration,
    spPolicyName,
    spPolicyType,

    -- ** TagFilter
    TagFilter (..),
    mkTagFilter,
    tfValues,
    tfKey,

    -- ** TargetTrackingConfiguration
    TargetTrackingConfiguration (..),
    mkTargetTrackingConfiguration,
    ttcEstimatedInstanceWarmup,
    ttcPredefinedScalingMetricSpecification,
    ttcScaleInCooldown,
    ttcDisableScaleIn,
    ttcCustomizedScalingMetricSpecification,
    ttcScaleOutCooldown,
    ttcTargetValue,

    -- * Serialization types
    Lude.Base64 (..),
    Lude._Base64,
    Lude.Sensitive (..),
    Lude._Sensitive,
    Lude.Time (..),
    Lude._Time,
    Lude.ISO8601,
    Lude.Timestamp,
    Lude.UTCTime,
  )
where

import Network.AWS.AutoScalingPlans.CreateScalingPlan
import Network.AWS.AutoScalingPlans.DeleteScalingPlan
import Network.AWS.AutoScalingPlans.DescribeScalingPlanResources
import Network.AWS.AutoScalingPlans.DescribeScalingPlans
import Network.AWS.AutoScalingPlans.GetScalingPlanResourceForecastData
import Network.AWS.AutoScalingPlans.Types
import Network.AWS.AutoScalingPlans.UpdateScalingPlan
import Network.AWS.AutoScalingPlans.Waiters
import qualified Network.AWS.Prelude as Lude

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'AutoScalingPlans'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
