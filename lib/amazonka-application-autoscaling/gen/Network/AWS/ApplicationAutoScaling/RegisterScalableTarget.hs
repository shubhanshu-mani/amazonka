{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ApplicationAutoScaling.RegisterScalableTarget
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers or updates a scalable target.
--
-- A scalable target is a resource that Application Auto Scaling can scale out and scale in. Scalable targets are uniquely identified by the combination of resource ID, scalable dimension, and namespace.
-- When you register a new scalable target, you must specify values for minimum and maximum capacity. Current capacity will be adjusted within the specified range when scaling starts. Application Auto Scaling scaling policies will not scale capacity to values that are outside of this range.
-- After you register a scalable target, you do not need to register it again to use other Application Auto Scaling operations. To see which resources have been registered, use <https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html DescribeScalableTargets> . You can also view the scaling policies for a service namespace by using <https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html DescribeScalableTargets> . If you no longer need a scalable target, you can deregister it by using <https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DeregisterScalableTarget.html DeregisterScalableTarget> .
-- To update a scalable target, specify the parameters that you want to change. Include the parameters that identify the scalable target: resource ID, scalable dimension, and namespace. Any parameters that you don't specify are not changed by this update request.
module Network.AWS.ApplicationAutoScaling.RegisterScalableTarget
  ( -- * Creating a request
    RegisterScalableTarget (..),
    mkRegisterScalableTarget,

    -- ** Request lenses
    rstSuspendedState,
    rstMaxCapacity,
    rstMinCapacity,
    rstRoleARN,
    rstServiceNamespace,
    rstResourceId,
    rstScalableDimension,

    -- * Destructuring the response
    RegisterScalableTargetResponse (..),
    mkRegisterScalableTargetResponse,

    -- ** Response lenses
    rstrsResponseStatus,
  )
where

import Network.AWS.ApplicationAutoScaling.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkRegisterScalableTarget' smart constructor.
data RegisterScalableTarget = RegisterScalableTarget'
  { suspendedState ::
      Lude.Maybe SuspendedState,
    maxCapacity :: Lude.Maybe Lude.Int,
    minCapacity :: Lude.Maybe Lude.Int,
    roleARN :: Lude.Maybe Lude.Text,
    serviceNamespace :: ServiceNamespace,
    resourceId :: Lude.Text,
    scalableDimension :: ScalableDimension
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'RegisterScalableTarget' with the minimum fields required to make a request.
--
-- * 'maxCapacity' - The maximum value that you plan to scale out to. When a scaling policy is in effect, Application Auto Scaling can scale out (expand) as needed to the maximum capacity limit in response to changing demand.
--
-- This parameter is required if you are registering a scalable target.
-- Although you can specify a large maximum capacity, note that service quotas may impose lower limits. Each service has its own default quotas for the maximum capacity of the resource. If you want to specify a higher limit, you can request an increase. For more information, consult the documentation for that service. For information about the default quotas for each service, see <https://docs.aws.amazon.com/general/latest/gr/aws-service-information.html Service Endpoints and Quotas> in the /Amazon Web Services General Reference/ .
-- * 'minCapacity' - The minimum value that you plan to scale in to. When a scaling policy is in effect, Application Auto Scaling can scale in (contract) as needed to the minimum capacity limit in response to changing demand.
--
-- This parameter is required if you are registering a scalable target. For certain resources, the minimum value allowed is 0. This includes Lambda provisioned concurrency, Spot Fleet, ECS services, Aurora DB clusters, EMR clusters, and custom resources. For all other resources, the minimum value allowed is 1.
-- * 'resourceId' - The identifier of the resource that is associated with the scalable target. This string consists of the resource type and unique identifier.
--
--
--     * ECS service - The resource type is @service@ and the unique identifier is the cluster name and service name. Example: @service/default/sample-webapp@ .
--
--
--     * Spot Fleet request - The resource type is @spot-fleet-request@ and the unique identifier is the Spot Fleet request ID. Example: @spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE@ .
--
--
--     * EMR cluster - The resource type is @instancegroup@ and the unique identifier is the cluster ID and instance group ID. Example: @instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0@ .
--
--
--     * AppStream 2.0 fleet - The resource type is @fleet@ and the unique identifier is the fleet name. Example: @fleet/sample-fleet@ .
--
--
--     * DynamoDB table - The resource type is @table@ and the unique identifier is the table name. Example: @table/my-table@ .
--
--
--     * DynamoDB global secondary index - The resource type is @index@ and the unique identifier is the index name. Example: @table/my-table/index/my-table-index@ .
--
--
--     * Aurora DB cluster - The resource type is @cluster@ and the unique identifier is the cluster name. Example: @cluster:my-db-cluster@ .
--
--
--     * Amazon SageMaker endpoint variant - The resource type is @variant@ and the unique identifier is the resource ID. Example: @endpoint/my-end-point/variant/KMeansClustering@ .
--
--
--     * Custom resources are not supported with a resource type. This parameter must specify the @OutputValue@ from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information is available in our <https://github.com/aws/aws-auto-scaling-custom-resource GitHub repository> .
--
--
--     * Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE@ .
--
--
--     * Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE@ .
--
--
--     * Lambda provisioned concurrency - The resource type is @function@ and the unique identifier is the function name with a function version or alias name suffix that is not @> LATEST@ . Example: @function:my-function:prod@ or @function:my-function:1@ .
--
--
--     * Amazon Keyspaces table - The resource type is @table@ and the unique identifier is the table name. Example: @keyspace/mykeyspace/table/mytable@ .
--
--
--     * Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. Example: @arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5@ .
--
--
-- * 'roleARN' - This parameter is required for services that do not support service-linked roles (such as Amazon EMR), and it must specify the ARN of an IAM role that allows Application Auto Scaling to modify the scalable target on your behalf.
--
-- If the service supports service-linked roles, Application Auto Scaling uses a service-linked role, which it creates if it does not yet exist. For more information, see <https://docs.aws.amazon.com/autoscaling/application/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-roles Application Auto Scaling IAM Roles> .
-- * 'scalableDimension' - The scalable dimension associated with the scalable target. This string consists of the service namespace, resource type, and scaling property.
--
--
--     * @ecs:service:DesiredCount@ - The desired task count of an ECS service.
--
--
--     * @ec2:spot-fleet-request:TargetCapacity@ - The target capacity of a Spot Fleet request.
--
--
--     * @elasticmapreduce:instancegroup:InstanceCount@ - The instance count of an EMR Instance Group.
--
--
--     * @appstream:fleet:DesiredCapacity@ - The desired capacity of an AppStream 2.0 fleet.
--
--
--     * @dynamodb:table:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB table.
--
--
--     * @dynamodb:table:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB table.
--
--
--     * @dynamodb:index:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB global secondary index.
--
--
--     * @dynamodb:index:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB global secondary index.
--
--
--     * @rds:cluster:ReadReplicaCount@ - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.
--
--
--     * @sagemaker:variant:DesiredInstanceCount@ - The number of EC2 instances for an Amazon SageMaker model endpoint variant.
--
--
--     * @custom-resource:ResourceType:Property@ - The scalable dimension for a custom resource provided by your own application or service.
--
--
--     * @comprehend:document-classifier-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend document classification endpoint.
--
--
--     * @comprehend:entity-recognizer-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend entity recognizer endpoint.
--
--
--     * @lambda:function:ProvisionedConcurrency@ - The provisioned concurrency for a Lambda function.
--
--
--     * @cassandra:table:ReadCapacityUnits@ - The provisioned read capacity for an Amazon Keyspaces table.
--
--
--     * @cassandra:table:WriteCapacityUnits@ - The provisioned write capacity for an Amazon Keyspaces table.
--
--
--     * @kafka:broker-storage:VolumeSize@ - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.
--
--
-- * 'serviceNamespace' - The namespace of the AWS service that provides the resource. For a resource provided by your own application or service, use @custom-resource@ instead.
-- * 'suspendedState' - An embedded object that contains attributes and attribute values that are used to suspend and resume automatic scaling. Setting the value of an attribute to @true@ suspends the specified scaling activities. Setting it to @false@ (default) resumes the specified scaling activities.
--
-- __Suspension Outcomes__
--
--     * For @DynamicScalingInSuspended@ , while a suspension is in effect, all scale-in activities that are triggered by a scaling policy are suspended.
--
--
--     * For @DynamicScalingOutSuspended@ , while a suspension is in effect, all scale-out activities that are triggered by a scaling policy are suspended.
--
--
--     * For @ScheduledScalingSuspended@ , while a suspension is in effect, all scaling activities that involve scheduled actions are suspended.
--
--
-- For more information, see <https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-suspend-resume-scaling.html Suspending and Resuming Scaling> in the /Application Auto Scaling User Guide/ .
mkRegisterScalableTarget ::
  -- | 'serviceNamespace'
  ServiceNamespace ->
  -- | 'resourceId'
  Lude.Text ->
  -- | 'scalableDimension'
  ScalableDimension ->
  RegisterScalableTarget
mkRegisterScalableTarget
  pServiceNamespace_
  pResourceId_
  pScalableDimension_ =
    RegisterScalableTarget'
      { suspendedState = Lude.Nothing,
        maxCapacity = Lude.Nothing,
        minCapacity = Lude.Nothing,
        roleARN = Lude.Nothing,
        serviceNamespace = pServiceNamespace_,
        resourceId = pResourceId_,
        scalableDimension = pScalableDimension_
      }

-- | An embedded object that contains attributes and attribute values that are used to suspend and resume automatic scaling. Setting the value of an attribute to @true@ suspends the specified scaling activities. Setting it to @false@ (default) resumes the specified scaling activities.
--
-- __Suspension Outcomes__
--
--     * For @DynamicScalingInSuspended@ , while a suspension is in effect, all scale-in activities that are triggered by a scaling policy are suspended.
--
--
--     * For @DynamicScalingOutSuspended@ , while a suspension is in effect, all scale-out activities that are triggered by a scaling policy are suspended.
--
--
--     * For @ScheduledScalingSuspended@ , while a suspension is in effect, all scaling activities that involve scheduled actions are suspended.
--
--
-- For more information, see <https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-suspend-resume-scaling.html Suspending and Resuming Scaling> in the /Application Auto Scaling User Guide/ .
--
-- /Note:/ Consider using 'suspendedState' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rstSuspendedState :: Lens.Lens' RegisterScalableTarget (Lude.Maybe SuspendedState)
rstSuspendedState = Lens.lens (suspendedState :: RegisterScalableTarget -> Lude.Maybe SuspendedState) (\s a -> s {suspendedState = a} :: RegisterScalableTarget)
{-# DEPRECATED rstSuspendedState "Use generic-lens or generic-optics with 'suspendedState' instead." #-}

-- | The maximum value that you plan to scale out to. When a scaling policy is in effect, Application Auto Scaling can scale out (expand) as needed to the maximum capacity limit in response to changing demand.
--
-- This parameter is required if you are registering a scalable target.
-- Although you can specify a large maximum capacity, note that service quotas may impose lower limits. Each service has its own default quotas for the maximum capacity of the resource. If you want to specify a higher limit, you can request an increase. For more information, consult the documentation for that service. For information about the default quotas for each service, see <https://docs.aws.amazon.com/general/latest/gr/aws-service-information.html Service Endpoints and Quotas> in the /Amazon Web Services General Reference/ .
--
-- /Note:/ Consider using 'maxCapacity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rstMaxCapacity :: Lens.Lens' RegisterScalableTarget (Lude.Maybe Lude.Int)
rstMaxCapacity = Lens.lens (maxCapacity :: RegisterScalableTarget -> Lude.Maybe Lude.Int) (\s a -> s {maxCapacity = a} :: RegisterScalableTarget)
{-# DEPRECATED rstMaxCapacity "Use generic-lens or generic-optics with 'maxCapacity' instead." #-}

-- | The minimum value that you plan to scale in to. When a scaling policy is in effect, Application Auto Scaling can scale in (contract) as needed to the minimum capacity limit in response to changing demand.
--
-- This parameter is required if you are registering a scalable target. For certain resources, the minimum value allowed is 0. This includes Lambda provisioned concurrency, Spot Fleet, ECS services, Aurora DB clusters, EMR clusters, and custom resources. For all other resources, the minimum value allowed is 1.
--
-- /Note:/ Consider using 'minCapacity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rstMinCapacity :: Lens.Lens' RegisterScalableTarget (Lude.Maybe Lude.Int)
rstMinCapacity = Lens.lens (minCapacity :: RegisterScalableTarget -> Lude.Maybe Lude.Int) (\s a -> s {minCapacity = a} :: RegisterScalableTarget)
{-# DEPRECATED rstMinCapacity "Use generic-lens or generic-optics with 'minCapacity' instead." #-}

-- | This parameter is required for services that do not support service-linked roles (such as Amazon EMR), and it must specify the ARN of an IAM role that allows Application Auto Scaling to modify the scalable target on your behalf.
--
-- If the service supports service-linked roles, Application Auto Scaling uses a service-linked role, which it creates if it does not yet exist. For more information, see <https://docs.aws.amazon.com/autoscaling/application/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-roles Application Auto Scaling IAM Roles> .
--
-- /Note:/ Consider using 'roleARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rstRoleARN :: Lens.Lens' RegisterScalableTarget (Lude.Maybe Lude.Text)
rstRoleARN = Lens.lens (roleARN :: RegisterScalableTarget -> Lude.Maybe Lude.Text) (\s a -> s {roleARN = a} :: RegisterScalableTarget)
{-# DEPRECATED rstRoleARN "Use generic-lens or generic-optics with 'roleARN' instead." #-}

-- | The namespace of the AWS service that provides the resource. For a resource provided by your own application or service, use @custom-resource@ instead.
--
-- /Note:/ Consider using 'serviceNamespace' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rstServiceNamespace :: Lens.Lens' RegisterScalableTarget ServiceNamespace
rstServiceNamespace = Lens.lens (serviceNamespace :: RegisterScalableTarget -> ServiceNamespace) (\s a -> s {serviceNamespace = a} :: RegisterScalableTarget)
{-# DEPRECATED rstServiceNamespace "Use generic-lens or generic-optics with 'serviceNamespace' instead." #-}

-- | The identifier of the resource that is associated with the scalable target. This string consists of the resource type and unique identifier.
--
--
--     * ECS service - The resource type is @service@ and the unique identifier is the cluster name and service name. Example: @service/default/sample-webapp@ .
--
--
--     * Spot Fleet request - The resource type is @spot-fleet-request@ and the unique identifier is the Spot Fleet request ID. Example: @spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE@ .
--
--
--     * EMR cluster - The resource type is @instancegroup@ and the unique identifier is the cluster ID and instance group ID. Example: @instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0@ .
--
--
--     * AppStream 2.0 fleet - The resource type is @fleet@ and the unique identifier is the fleet name. Example: @fleet/sample-fleet@ .
--
--
--     * DynamoDB table - The resource type is @table@ and the unique identifier is the table name. Example: @table/my-table@ .
--
--
--     * DynamoDB global secondary index - The resource type is @index@ and the unique identifier is the index name. Example: @table/my-table/index/my-table-index@ .
--
--
--     * Aurora DB cluster - The resource type is @cluster@ and the unique identifier is the cluster name. Example: @cluster:my-db-cluster@ .
--
--
--     * Amazon SageMaker endpoint variant - The resource type is @variant@ and the unique identifier is the resource ID. Example: @endpoint/my-end-point/variant/KMeansClustering@ .
--
--
--     * Custom resources are not supported with a resource type. This parameter must specify the @OutputValue@ from the CloudFormation template stack used to access the resources. The unique identifier is defined by the service provider. More information is available in our <https://github.com/aws/aws-auto-scaling-custom-resource GitHub repository> .
--
--
--     * Amazon Comprehend document classification endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE@ .
--
--
--     * Amazon Comprehend entity recognizer endpoint - The resource type and unique identifier are specified using the endpoint ARN. Example: @arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE@ .
--
--
--     * Lambda provisioned concurrency - The resource type is @function@ and the unique identifier is the function name with a function version or alias name suffix that is not @> LATEST@ . Example: @function:my-function:prod@ or @function:my-function:1@ .
--
--
--     * Amazon Keyspaces table - The resource type is @table@ and the unique identifier is the table name. Example: @keyspace/mykeyspace/table/mytable@ .
--
--
--     * Amazon MSK cluster - The resource type and unique identifier are specified using the cluster ARN. Example: @arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5@ .
--
--
--
-- /Note:/ Consider using 'resourceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rstResourceId :: Lens.Lens' RegisterScalableTarget Lude.Text
rstResourceId = Lens.lens (resourceId :: RegisterScalableTarget -> Lude.Text) (\s a -> s {resourceId = a} :: RegisterScalableTarget)
{-# DEPRECATED rstResourceId "Use generic-lens or generic-optics with 'resourceId' instead." #-}

-- | The scalable dimension associated with the scalable target. This string consists of the service namespace, resource type, and scaling property.
--
--
--     * @ecs:service:DesiredCount@ - The desired task count of an ECS service.
--
--
--     * @ec2:spot-fleet-request:TargetCapacity@ - The target capacity of a Spot Fleet request.
--
--
--     * @elasticmapreduce:instancegroup:InstanceCount@ - The instance count of an EMR Instance Group.
--
--
--     * @appstream:fleet:DesiredCapacity@ - The desired capacity of an AppStream 2.0 fleet.
--
--
--     * @dynamodb:table:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB table.
--
--
--     * @dynamodb:table:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB table.
--
--
--     * @dynamodb:index:ReadCapacityUnits@ - The provisioned read capacity for a DynamoDB global secondary index.
--
--
--     * @dynamodb:index:WriteCapacityUnits@ - The provisioned write capacity for a DynamoDB global secondary index.
--
--
--     * @rds:cluster:ReadReplicaCount@ - The count of Aurora Replicas in an Aurora DB cluster. Available for Aurora MySQL-compatible edition and Aurora PostgreSQL-compatible edition.
--
--
--     * @sagemaker:variant:DesiredInstanceCount@ - The number of EC2 instances for an Amazon SageMaker model endpoint variant.
--
--
--     * @custom-resource:ResourceType:Property@ - The scalable dimension for a custom resource provided by your own application or service.
--
--
--     * @comprehend:document-classifier-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend document classification endpoint.
--
--
--     * @comprehend:entity-recognizer-endpoint:DesiredInferenceUnits@ - The number of inference units for an Amazon Comprehend entity recognizer endpoint.
--
--
--     * @lambda:function:ProvisionedConcurrency@ - The provisioned concurrency for a Lambda function.
--
--
--     * @cassandra:table:ReadCapacityUnits@ - The provisioned read capacity for an Amazon Keyspaces table.
--
--
--     * @cassandra:table:WriteCapacityUnits@ - The provisioned write capacity for an Amazon Keyspaces table.
--
--
--     * @kafka:broker-storage:VolumeSize@ - The provisioned volume size (in GiB) for brokers in an Amazon MSK cluster.
--
--
--
-- /Note:/ Consider using 'scalableDimension' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rstScalableDimension :: Lens.Lens' RegisterScalableTarget ScalableDimension
rstScalableDimension = Lens.lens (scalableDimension :: RegisterScalableTarget -> ScalableDimension) (\s a -> s {scalableDimension = a} :: RegisterScalableTarget)
{-# DEPRECATED rstScalableDimension "Use generic-lens or generic-optics with 'scalableDimension' instead." #-}

instance Lude.AWSRequest RegisterScalableTarget where
  type Rs RegisterScalableTarget = RegisterScalableTargetResponse
  request = Req.postJSON applicationAutoScalingService
  response =
    Res.receiveEmpty
      ( \s h x ->
          RegisterScalableTargetResponse'
            Lude.<$> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders RegisterScalableTarget where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ( "AnyScaleFrontendService.RegisterScalableTarget" ::
                          Lude.ByteString
                      ),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON RegisterScalableTarget where
  toJSON RegisterScalableTarget' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("SuspendedState" Lude..=) Lude.<$> suspendedState,
            ("MaxCapacity" Lude..=) Lude.<$> maxCapacity,
            ("MinCapacity" Lude..=) Lude.<$> minCapacity,
            ("RoleARN" Lude..=) Lude.<$> roleARN,
            Lude.Just ("ServiceNamespace" Lude..= serviceNamespace),
            Lude.Just ("ResourceId" Lude..= resourceId),
            Lude.Just ("ScalableDimension" Lude..= scalableDimension)
          ]
      )

instance Lude.ToPath RegisterScalableTarget where
  toPath = Lude.const "/"

instance Lude.ToQuery RegisterScalableTarget where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkRegisterScalableTargetResponse' smart constructor.
newtype RegisterScalableTargetResponse = RegisterScalableTargetResponse'
  { responseStatus ::
      Lude.Int
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving newtype (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'RegisterScalableTargetResponse' with the minimum fields required to make a request.
--
-- * 'responseStatus' - The response status code.
mkRegisterScalableTargetResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  RegisterScalableTargetResponse
mkRegisterScalableTargetResponse pResponseStatus_ =
  RegisterScalableTargetResponse'
    { responseStatus =
        pResponseStatus_
    }

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rstrsResponseStatus :: Lens.Lens' RegisterScalableTargetResponse Lude.Int
rstrsResponseStatus = Lens.lens (responseStatus :: RegisterScalableTargetResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: RegisterScalableTargetResponse)
{-# DEPRECATED rstrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
