{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DescribeInstances
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified instances or all instances.
--
-- If you specify instance IDs, the output includes information for only the specified instances. If you specify filters, the output includes information for only those instances that meet the filter criteria. If you do not specify instance IDs or filters, the output includes information for all instances, which can affect performance. We recommend that you use pagination to ensure that the operation returns quickly and successfully.
-- If you specify an instance ID that is not valid, an error is returned. If you specify an instance that you do not own, it is not included in the output.
-- Recently terminated instances might appear in the returned results. This interval is usually less than one hour.
-- If you describe instances in the rare case where an Availability Zone is experiencing a service disruption and you specify instance IDs that are in the affected zone, or do not specify any instance IDs at all, the call fails. If you describe instances and specify only instance IDs that are in an unaffected zone, the call works normally.
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeInstances
  ( -- * Creating a request
    DescribeInstances (..),
    mkDescribeInstances,

    -- ** Request lenses
    diiFilters,
    diiNextToken,
    diiInstanceIds,
    diiDryRun,
    diiMaxResults,

    -- * Destructuring the response
    DescribeInstancesResponse (..),
    mkDescribeInstancesResponse,

    -- ** Response lenses
    dirsNextToken,
    dirsReservations,
    dirsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Page
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkDescribeInstances' smart constructor.
data DescribeInstances = DescribeInstances'
  { filters ::
      Lude.Maybe [Filter],
    nextToken :: Lude.Maybe Lude.Text,
    instanceIds :: Lude.Maybe [Lude.Text],
    dryRun :: Lude.Maybe Lude.Bool,
    maxResults :: Lude.Maybe Lude.Int
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DescribeInstances' with the minimum fields required to make a request.
--
-- * 'dryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
-- * 'filters' - The filters.
--
--
--     * @affinity@ - The affinity setting for an instance running on a Dedicated Host (@default@ | @host@ ).
--
--
--     * @architecture@ - The instance architecture (@i386@ | @x86_64@ | @arm64@ ).
--
--
--     * @availability-zone@ - The Availability Zone of the instance.
--
--
--     * @block-device-mapping.attach-time@ - The attach time for an EBS volume mapped to the instance, for example, @2010-09-15T17:15:20.000Z@ .
--
--
--     * @block-device-mapping.delete-on-termination@ - A Boolean that indicates whether the EBS volume is deleted on instance termination.
--
--
--     * @block-device-mapping.device-name@ - The device name specified in the block device mapping (for example, @/dev/sdh@ or @xvdh@ ).
--
--
--     * @block-device-mapping.status@ - The status for the EBS volume (@attaching@ | @attached@ | @detaching@ | @detached@ ).
--
--
--     * @block-device-mapping.volume-id@ - The volume ID of the EBS volume.
--
--
--     * @client-token@ - The idempotency token you provided when you launched the instance.
--
--
--     * @dns-name@ - The public DNS name of the instance.
--
--
--     * @group-id@ - The ID of the security group for the instance. EC2-Classic only.
--
--
--     * @group-name@ - The name of the security group for the instance. EC2-Classic only.
--
--
--     * @hibernation-options.configured@ - A Boolean that indicates whether the instance is enabled for hibernation. A value of @true@ means that the instance is enabled for hibernation.
--
--
--     * @host-id@ - The ID of the Dedicated Host on which the instance is running, if applicable.
--
--
--     * @hypervisor@ - The hypervisor type of the instance (@ovm@ | @xen@ ). The value @xen@ is used for both Xen and Nitro hypervisors.
--
--
--     * @iam-instance-profile.arn@ - The instance profile associated with the instance. Specified as an ARN.
--
--
--     * @image-id@ - The ID of the image used to launch the instance.
--
--
--     * @instance-id@ - The ID of the instance.
--
--
--     * @instance-lifecycle@ - Indicates whether this is a Spot Instance or a Scheduled Instance (@spot@ | @scheduled@ ).
--
--
--     * @instance-state-code@ - The state of the instance, as a 16-bit unsigned integer. The high byte is used for internal purposes and should be ignored. The low byte is set based on the state represented. The valid values are: 0 (pending), 16 (running), 32 (shutting-down), 48 (terminated), 64 (stopping), and 80 (stopped).
--
--
--     * @instance-state-name@ - The state of the instance (@pending@ | @running@ | @shutting-down@ | @terminated@ | @stopping@ | @stopped@ ).
--
--
--     * @instance-type@ - The type of instance (for example, @t2.micro@ ).
--
--
--     * @instance.group-id@ - The ID of the security group for the instance.
--
--
--     * @instance.group-name@ - The name of the security group for the instance.
--
--
--     * @ip-address@ - The public IPv4 address of the instance.
--
--
--     * @kernel-id@ - The kernel ID.
--
--
--     * @key-name@ - The name of the key pair used when the instance was launched.
--
--
--     * @launch-index@ - When launching multiple instances, this is the index for the instance in the launch group (for example, 0, 1, 2, and so on).
--
--
--     * @launch-time@ - The time when the instance was launched.
--
--
--     * @metadata-options.http-tokens@ - The metadata request authorization state (@optional@ | @required@ )
--
--
--     * @metadata-options.http-put-response-hop-limit@ - The http metadata request put response hop limit (integer, possible values @1@ to @64@ )
--
--
--     * @metadata-options.http-endpoint@ - Enable or disable metadata access on http endpoint (@enabled@ | @disabled@ )
--
--
--     * @monitoring-state@ - Indicates whether detailed monitoring is enabled (@disabled@ | @enabled@ ).
--
--
--     * @network-interface.addresses.private-ip-address@ - The private IPv4 address associated with the network interface.
--
--
--     * @network-interface.addresses.primary@ - Specifies whether the IPv4 address of the network interface is the primary private IPv4 address.
--
--
--     * @network-interface.addresses.association.public-ip@ - The ID of the association of an Elastic IP address (IPv4) with a network interface.
--
--
--     * @network-interface.addresses.association.ip-owner-id@ - The owner ID of the private IPv4 address associated with the network interface.
--
--
--     * @network-interface.association.public-ip@ - The address of the Elastic IP address (IPv4) bound to the network interface.
--
--
--     * @network-interface.association.ip-owner-id@ - The owner of the Elastic IP address (IPv4) associated with the network interface.
--
--
--     * @network-interface.association.allocation-id@ - The allocation ID returned when you allocated the Elastic IP address (IPv4) for your network interface.
--
--
--     * @network-interface.association.association-id@ - The association ID returned when the network interface was associated with an IPv4 address.
--
--
--     * @network-interface.attachment.attachment-id@ - The ID of the interface attachment.
--
--
--     * @network-interface.attachment.instance-id@ - The ID of the instance to which the network interface is attached.
--
--
--     * @network-interface.attachment.instance-owner-id@ - The owner ID of the instance to which the network interface is attached.
--
--
--     * @network-interface.attachment.device-index@ - The device index to which the network interface is attached.
--
--
--     * @network-interface.attachment.status@ - The status of the attachment (@attaching@ | @attached@ | @detaching@ | @detached@ ).
--
--
--     * @network-interface.attachment.attach-time@ - The time that the network interface was attached to an instance.
--
--
--     * @network-interface.attachment.delete-on-termination@ - Specifies whether the attachment is deleted when an instance is terminated.
--
--
--     * @network-interface.availability-zone@ - The Availability Zone for the network interface.
--
--
--     * @network-interface.description@ - The description of the network interface.
--
--
--     * @network-interface.group-id@ - The ID of a security group associated with the network interface.
--
--
--     * @network-interface.group-name@ - The name of a security group associated with the network interface.
--
--
--     * @network-interface.ipv6-addresses.ipv6-address@ - The IPv6 address associated with the network interface.
--
--
--     * @network-interface.mac-address@ - The MAC address of the network interface.
--
--
--     * @network-interface.network-interface-id@ - The ID of the network interface.
--
--
--     * @network-interface.owner-id@ - The ID of the owner of the network interface.
--
--
--     * @network-interface.private-dns-name@ - The private DNS name of the network interface.
--
--
--     * @network-interface.requester-id@ - The requester ID for the network interface.
--
--
--     * @network-interface.requester-managed@ - Indicates whether the network interface is being managed by AWS.
--
--
--     * @network-interface.status@ - The status of the network interface (@available@ ) | @in-use@ ).
--
--
--     * @network-interface.source-dest-check@ - Whether the network interface performs source/destination checking. A value of @true@ means that checking is enabled, and @false@ means that checking is disabled. The value must be @false@ for the network interface to perform network address translation (NAT) in your VPC.
--
--
--     * @network-interface.subnet-id@ - The ID of the subnet for the network interface.
--
--
--     * @network-interface.vpc-id@ - The ID of the VPC for the network interface.
--
--
--     * @owner-id@ - The AWS account ID of the instance owner.
--
--
--     * @placement-group-name@ - The name of the placement group for the instance.
--
--
--     * @placement-partition-number@ - The partition in which the instance is located.
--
--
--     * @platform@ - The platform. To list only Windows instances, use @windows@ .
--
--
--     * @private-dns-name@ - The private IPv4 DNS name of the instance.
--
--
--     * @private-ip-address@ - The private IPv4 address of the instance.
--
--
--     * @product-code@ - The product code associated with the AMI used to launch the instance.
--
--
--     * @product-code.type@ - The type of product code (@devpay@ | @marketplace@ ).
--
--
--     * @ramdisk-id@ - The RAM disk ID.
--
--
--     * @reason@ - The reason for the current state of the instance (for example, shows "User Initiated [date]" when you stop or terminate the instance). Similar to the state-reason-code filter.
--
--
--     * @requester-id@ - The ID of the entity that launched the instance on your behalf (for example, AWS Management Console, Auto Scaling, and so on).
--
--
--     * @reservation-id@ - The ID of the instance's reservation. A reservation ID is created any time you launch an instance. A reservation ID has a one-to-one relationship with an instance launch request, but can be associated with more than one instance if you launch multiple instances using the same launch request. For example, if you launch one instance, you get one reservation ID. If you launch ten instances using the same launch request, you also get one reservation ID.
--
--
--     * @root-device-name@ - The device name of the root device volume (for example, @/dev/sda1@ ).
--
--
--     * @root-device-type@ - The type of the root device volume (@ebs@ | @instance-store@ ).
--
--
--     * @source-dest-check@ - Indicates whether the instance performs source/destination checking. A value of @true@ means that checking is enabled, and @false@ means that checking is disabled. The value must be @false@ for the instance to perform network address translation (NAT) in your VPC.
--
--
--     * @spot-instance-request-id@ - The ID of the Spot Instance request.
--
--
--     * @state-reason-code@ - The reason code for the state change.
--
--
--     * @state-reason-message@ - A message that describes the state change.
--
--
--     * @subnet-id@ - The ID of the subnet for the instance.
--
--
--     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.
--
--
--     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources that have a tag with a specific key, regardless of the tag value.
--
--
--     * @tenancy@ - The tenancy of an instance (@dedicated@ | @default@ | @host@ ).
--
--
--     * @virtualization-type@ - The virtualization type of the instance (@paravirtual@ | @hvm@ ).
--
--
--     * @vpc-id@ - The ID of the VPC that the instance is running in.
--
--
-- * 'instanceIds' - The instance IDs.
--
-- Default: Describes all your instances.
-- * 'maxResults' - The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned @NextToken@ value. This value can be between 5 and 1000. You cannot specify this parameter and the instance IDs parameter in the same call.
-- * 'nextToken' - The token to request the next page of results.
mkDescribeInstances ::
  DescribeInstances
mkDescribeInstances =
  DescribeInstances'
    { filters = Lude.Nothing,
      nextToken = Lude.Nothing,
      instanceIds = Lude.Nothing,
      dryRun = Lude.Nothing,
      maxResults = Lude.Nothing
    }

-- | The filters.
--
--
--     * @affinity@ - The affinity setting for an instance running on a Dedicated Host (@default@ | @host@ ).
--
--
--     * @architecture@ - The instance architecture (@i386@ | @x86_64@ | @arm64@ ).
--
--
--     * @availability-zone@ - The Availability Zone of the instance.
--
--
--     * @block-device-mapping.attach-time@ - The attach time for an EBS volume mapped to the instance, for example, @2010-09-15T17:15:20.000Z@ .
--
--
--     * @block-device-mapping.delete-on-termination@ - A Boolean that indicates whether the EBS volume is deleted on instance termination.
--
--
--     * @block-device-mapping.device-name@ - The device name specified in the block device mapping (for example, @/dev/sdh@ or @xvdh@ ).
--
--
--     * @block-device-mapping.status@ - The status for the EBS volume (@attaching@ | @attached@ | @detaching@ | @detached@ ).
--
--
--     * @block-device-mapping.volume-id@ - The volume ID of the EBS volume.
--
--
--     * @client-token@ - The idempotency token you provided when you launched the instance.
--
--
--     * @dns-name@ - The public DNS name of the instance.
--
--
--     * @group-id@ - The ID of the security group for the instance. EC2-Classic only.
--
--
--     * @group-name@ - The name of the security group for the instance. EC2-Classic only.
--
--
--     * @hibernation-options.configured@ - A Boolean that indicates whether the instance is enabled for hibernation. A value of @true@ means that the instance is enabled for hibernation.
--
--
--     * @host-id@ - The ID of the Dedicated Host on which the instance is running, if applicable.
--
--
--     * @hypervisor@ - The hypervisor type of the instance (@ovm@ | @xen@ ). The value @xen@ is used for both Xen and Nitro hypervisors.
--
--
--     * @iam-instance-profile.arn@ - The instance profile associated with the instance. Specified as an ARN.
--
--
--     * @image-id@ - The ID of the image used to launch the instance.
--
--
--     * @instance-id@ - The ID of the instance.
--
--
--     * @instance-lifecycle@ - Indicates whether this is a Spot Instance or a Scheduled Instance (@spot@ | @scheduled@ ).
--
--
--     * @instance-state-code@ - The state of the instance, as a 16-bit unsigned integer. The high byte is used for internal purposes and should be ignored. The low byte is set based on the state represented. The valid values are: 0 (pending), 16 (running), 32 (shutting-down), 48 (terminated), 64 (stopping), and 80 (stopped).
--
--
--     * @instance-state-name@ - The state of the instance (@pending@ | @running@ | @shutting-down@ | @terminated@ | @stopping@ | @stopped@ ).
--
--
--     * @instance-type@ - The type of instance (for example, @t2.micro@ ).
--
--
--     * @instance.group-id@ - The ID of the security group for the instance.
--
--
--     * @instance.group-name@ - The name of the security group for the instance.
--
--
--     * @ip-address@ - The public IPv4 address of the instance.
--
--
--     * @kernel-id@ - The kernel ID.
--
--
--     * @key-name@ - The name of the key pair used when the instance was launched.
--
--
--     * @launch-index@ - When launching multiple instances, this is the index for the instance in the launch group (for example, 0, 1, 2, and so on).
--
--
--     * @launch-time@ - The time when the instance was launched.
--
--
--     * @metadata-options.http-tokens@ - The metadata request authorization state (@optional@ | @required@ )
--
--
--     * @metadata-options.http-put-response-hop-limit@ - The http metadata request put response hop limit (integer, possible values @1@ to @64@ )
--
--
--     * @metadata-options.http-endpoint@ - Enable or disable metadata access on http endpoint (@enabled@ | @disabled@ )
--
--
--     * @monitoring-state@ - Indicates whether detailed monitoring is enabled (@disabled@ | @enabled@ ).
--
--
--     * @network-interface.addresses.private-ip-address@ - The private IPv4 address associated with the network interface.
--
--
--     * @network-interface.addresses.primary@ - Specifies whether the IPv4 address of the network interface is the primary private IPv4 address.
--
--
--     * @network-interface.addresses.association.public-ip@ - The ID of the association of an Elastic IP address (IPv4) with a network interface.
--
--
--     * @network-interface.addresses.association.ip-owner-id@ - The owner ID of the private IPv4 address associated with the network interface.
--
--
--     * @network-interface.association.public-ip@ - The address of the Elastic IP address (IPv4) bound to the network interface.
--
--
--     * @network-interface.association.ip-owner-id@ - The owner of the Elastic IP address (IPv4) associated with the network interface.
--
--
--     * @network-interface.association.allocation-id@ - The allocation ID returned when you allocated the Elastic IP address (IPv4) for your network interface.
--
--
--     * @network-interface.association.association-id@ - The association ID returned when the network interface was associated with an IPv4 address.
--
--
--     * @network-interface.attachment.attachment-id@ - The ID of the interface attachment.
--
--
--     * @network-interface.attachment.instance-id@ - The ID of the instance to which the network interface is attached.
--
--
--     * @network-interface.attachment.instance-owner-id@ - The owner ID of the instance to which the network interface is attached.
--
--
--     * @network-interface.attachment.device-index@ - The device index to which the network interface is attached.
--
--
--     * @network-interface.attachment.status@ - The status of the attachment (@attaching@ | @attached@ | @detaching@ | @detached@ ).
--
--
--     * @network-interface.attachment.attach-time@ - The time that the network interface was attached to an instance.
--
--
--     * @network-interface.attachment.delete-on-termination@ - Specifies whether the attachment is deleted when an instance is terminated.
--
--
--     * @network-interface.availability-zone@ - The Availability Zone for the network interface.
--
--
--     * @network-interface.description@ - The description of the network interface.
--
--
--     * @network-interface.group-id@ - The ID of a security group associated with the network interface.
--
--
--     * @network-interface.group-name@ - The name of a security group associated with the network interface.
--
--
--     * @network-interface.ipv6-addresses.ipv6-address@ - The IPv6 address associated with the network interface.
--
--
--     * @network-interface.mac-address@ - The MAC address of the network interface.
--
--
--     * @network-interface.network-interface-id@ - The ID of the network interface.
--
--
--     * @network-interface.owner-id@ - The ID of the owner of the network interface.
--
--
--     * @network-interface.private-dns-name@ - The private DNS name of the network interface.
--
--
--     * @network-interface.requester-id@ - The requester ID for the network interface.
--
--
--     * @network-interface.requester-managed@ - Indicates whether the network interface is being managed by AWS.
--
--
--     * @network-interface.status@ - The status of the network interface (@available@ ) | @in-use@ ).
--
--
--     * @network-interface.source-dest-check@ - Whether the network interface performs source/destination checking. A value of @true@ means that checking is enabled, and @false@ means that checking is disabled. The value must be @false@ for the network interface to perform network address translation (NAT) in your VPC.
--
--
--     * @network-interface.subnet-id@ - The ID of the subnet for the network interface.
--
--
--     * @network-interface.vpc-id@ - The ID of the VPC for the network interface.
--
--
--     * @owner-id@ - The AWS account ID of the instance owner.
--
--
--     * @placement-group-name@ - The name of the placement group for the instance.
--
--
--     * @placement-partition-number@ - The partition in which the instance is located.
--
--
--     * @platform@ - The platform. To list only Windows instances, use @windows@ .
--
--
--     * @private-dns-name@ - The private IPv4 DNS name of the instance.
--
--
--     * @private-ip-address@ - The private IPv4 address of the instance.
--
--
--     * @product-code@ - The product code associated with the AMI used to launch the instance.
--
--
--     * @product-code.type@ - The type of product code (@devpay@ | @marketplace@ ).
--
--
--     * @ramdisk-id@ - The RAM disk ID.
--
--
--     * @reason@ - The reason for the current state of the instance (for example, shows "User Initiated [date]" when you stop or terminate the instance). Similar to the state-reason-code filter.
--
--
--     * @requester-id@ - The ID of the entity that launched the instance on your behalf (for example, AWS Management Console, Auto Scaling, and so on).
--
--
--     * @reservation-id@ - The ID of the instance's reservation. A reservation ID is created any time you launch an instance. A reservation ID has a one-to-one relationship with an instance launch request, but can be associated with more than one instance if you launch multiple instances using the same launch request. For example, if you launch one instance, you get one reservation ID. If you launch ten instances using the same launch request, you also get one reservation ID.
--
--
--     * @root-device-name@ - The device name of the root device volume (for example, @/dev/sda1@ ).
--
--
--     * @root-device-type@ - The type of the root device volume (@ebs@ | @instance-store@ ).
--
--
--     * @source-dest-check@ - Indicates whether the instance performs source/destination checking. A value of @true@ means that checking is enabled, and @false@ means that checking is disabled. The value must be @false@ for the instance to perform network address translation (NAT) in your VPC.
--
--
--     * @spot-instance-request-id@ - The ID of the Spot Instance request.
--
--
--     * @state-reason-code@ - The reason code for the state change.
--
--
--     * @state-reason-message@ - A message that describes the state change.
--
--
--     * @subnet-id@ - The ID of the subnet for the instance.
--
--
--     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.
--
--
--     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources that have a tag with a specific key, regardless of the tag value.
--
--
--     * @tenancy@ - The tenancy of an instance (@dedicated@ | @default@ | @host@ ).
--
--
--     * @virtualization-type@ - The virtualization type of the instance (@paravirtual@ | @hvm@ ).
--
--
--     * @vpc-id@ - The ID of the VPC that the instance is running in.
--
--
--
-- /Note:/ Consider using 'filters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
diiFilters :: Lens.Lens' DescribeInstances (Lude.Maybe [Filter])
diiFilters = Lens.lens (filters :: DescribeInstances -> Lude.Maybe [Filter]) (\s a -> s {filters = a} :: DescribeInstances)
{-# DEPRECATED diiFilters "Use generic-lens or generic-optics with 'filters' instead." #-}

-- | The token to request the next page of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
diiNextToken :: Lens.Lens' DescribeInstances (Lude.Maybe Lude.Text)
diiNextToken = Lens.lens (nextToken :: DescribeInstances -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: DescribeInstances)
{-# DEPRECATED diiNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | The instance IDs.
--
-- Default: Describes all your instances.
--
-- /Note:/ Consider using 'instanceIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
diiInstanceIds :: Lens.Lens' DescribeInstances (Lude.Maybe [Lude.Text])
diiInstanceIds = Lens.lens (instanceIds :: DescribeInstances -> Lude.Maybe [Lude.Text]) (\s a -> s {instanceIds = a} :: DescribeInstances)
{-# DEPRECATED diiInstanceIds "Use generic-lens or generic-optics with 'instanceIds' instead." #-}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
diiDryRun :: Lens.Lens' DescribeInstances (Lude.Maybe Lude.Bool)
diiDryRun = Lens.lens (dryRun :: DescribeInstances -> Lude.Maybe Lude.Bool) (\s a -> s {dryRun = a} :: DescribeInstances)
{-# DEPRECATED diiDryRun "Use generic-lens or generic-optics with 'dryRun' instead." #-}

-- | The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned @NextToken@ value. This value can be between 5 and 1000. You cannot specify this parameter and the instance IDs parameter in the same call.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
diiMaxResults :: Lens.Lens' DescribeInstances (Lude.Maybe Lude.Int)
diiMaxResults = Lens.lens (maxResults :: DescribeInstances -> Lude.Maybe Lude.Int) (\s a -> s {maxResults = a} :: DescribeInstances)
{-# DEPRECATED diiMaxResults "Use generic-lens or generic-optics with 'maxResults' instead." #-}

instance Page.AWSPager DescribeInstances where
  page rq rs
    | Page.stop (rs Lens.^. dirsNextToken) = Lude.Nothing
    | Page.stop (rs Lens.^. dirsReservations) = Lude.Nothing
    | Lude.otherwise =
      Lude.Just Lude.$
        rq
          Lude.& diiNextToken Lens..~ rs Lens.^. dirsNextToken

instance Lude.AWSRequest DescribeInstances where
  type Rs DescribeInstances = DescribeInstancesResponse
  request = Req.postQuery ec2Service
  response =
    Res.receiveXML
      ( \s h x ->
          DescribeInstancesResponse'
            Lude.<$> (x Lude..@? "nextToken")
            Lude.<*> ( x Lude..@? "reservationSet" Lude..!@ Lude.mempty
                         Lude.>>= Lude.may (Lude.parseXMLList "item")
                     )
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders DescribeInstances where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToPath DescribeInstances where
  toPath = Lude.const "/"

instance Lude.ToQuery DescribeInstances where
  toQuery DescribeInstances' {..} =
    Lude.mconcat
      [ "Action" Lude.=: ("DescribeInstances" :: Lude.ByteString),
        "Version" Lude.=: ("2016-11-15" :: Lude.ByteString),
        Lude.toQuery (Lude.toQueryList "Filter" Lude.<$> filters),
        "NextToken" Lude.=: nextToken,
        Lude.toQuery (Lude.toQueryList "InstanceId" Lude.<$> instanceIds),
        "DryRun" Lude.=: dryRun,
        "MaxResults" Lude.=: maxResults
      ]

-- | /See:/ 'mkDescribeInstancesResponse' smart constructor.
data DescribeInstancesResponse = DescribeInstancesResponse'
  { nextToken ::
      Lude.Maybe Lude.Text,
    reservations ::
      Lude.Maybe [Reservation],
    responseStatus :: Lude.Int
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DescribeInstancesResponse' with the minimum fields required to make a request.
--
-- * 'nextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
-- * 'reservations' - Information about the reservations.
-- * 'responseStatus' - The response status code.
mkDescribeInstancesResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  DescribeInstancesResponse
mkDescribeInstancesResponse pResponseStatus_ =
  DescribeInstancesResponse'
    { nextToken = Lude.Nothing,
      reservations = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dirsNextToken :: Lens.Lens' DescribeInstancesResponse (Lude.Maybe Lude.Text)
dirsNextToken = Lens.lens (nextToken :: DescribeInstancesResponse -> Lude.Maybe Lude.Text) (\s a -> s {nextToken = a} :: DescribeInstancesResponse)
{-# DEPRECATED dirsNextToken "Use generic-lens or generic-optics with 'nextToken' instead." #-}

-- | Information about the reservations.
--
-- /Note:/ Consider using 'reservations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dirsReservations :: Lens.Lens' DescribeInstancesResponse (Lude.Maybe [Reservation])
dirsReservations = Lens.lens (reservations :: DescribeInstancesResponse -> Lude.Maybe [Reservation]) (\s a -> s {reservations = a} :: DescribeInstancesResponse)
{-# DEPRECATED dirsReservations "Use generic-lens or generic-optics with 'reservations' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dirsResponseStatus :: Lens.Lens' DescribeInstancesResponse Lude.Int
dirsResponseStatus = Lens.lens (responseStatus :: DescribeInstancesResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: DescribeInstancesResponse)
{-# DEPRECATED dirsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
