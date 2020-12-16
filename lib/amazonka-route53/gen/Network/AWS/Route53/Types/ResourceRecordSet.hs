{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.Types.ResourceRecordSet
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.ResourceRecordSet
  ( ResourceRecordSet (..),

    -- * Smart constructor
    mkResourceRecordSet,

    -- * Lenses
    rrsTTL,
    rrsResourceRecords,
    rrsAliasTarget,
    rrsWeight,
    rrsTrafficPolicyInstanceId,
    rrsSetIdentifier,
    rrsFailover,
    rrsName,
    rrsHealthCheckId,
    rrsRegion,
    rrsType,
    rrsGeoLocation,
    rrsMultiValueAnswer,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.Route53.Internal
import Network.AWS.Route53.Types.AliasTarget
import Network.AWS.Route53.Types.Failover
import Network.AWS.Route53.Types.GeoLocation
import Network.AWS.Route53.Types.RecordType
import Network.AWS.Route53.Types.ResourceRecord

-- | Information about the resource record set to create or delete.
--
-- /See:/ 'mkResourceRecordSet' smart constructor.
data ResourceRecordSet = ResourceRecordSet'
  { -- | The resource record cache time to live (TTL), in seconds. Note the following:
    --
    --
    --     * If you're creating or updating an alias resource record set, omit @TTL@ . Amazon Route 53 uses the value of @TTL@ for the alias target.
    --
    --
    --     * If you're associating this resource record set with a health check (if you're adding a @HealthCheckId@ element), we recommend that you specify a @TTL@ of 60 seconds or less so clients respond quickly to changes in health status.
    --
    --
    --     * All of the resource record sets in a group of weighted resource record sets must have the same value for @TTL@ .
    --
    --
    --     * If a group of weighted resource record sets includes one or more weighted alias resource record sets for which the alias target is an ELB load balancer, we recommend that you specify a @TTL@ of 60 seconds for all of the non-alias weighted resource record sets that have the same name and type. Values other than 60 seconds (the TTL for load balancers) will change the effect of the values that you specify for @Weight@ .
    tTL :: Lude.Maybe Lude.Natural,
    -- | Information about the resource records to act upon.
    resourceRecords :: Lude.Maybe (Lude.NonEmpty ResourceRecord),
    -- | /Alias resource record sets only:/ Information about the AWS resource, such as a CloudFront distribution or an Amazon S3 bucket, that you want to route traffic to.
    --
    -- If you're creating resource records sets for a private hosted zone, note the following:
    --
    --     * You can't create an alias resource record set in a private hosted zone to route traffic to a CloudFront distribution.
    --
    --
    --     * Creating geolocation alias resource record sets or latency alias resource record sets in a private hosted zone is unsupported.
    --
    --
    --     * For information about creating failover resource record sets in a private hosted zone, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html Configuring Failover in a Private Hosted Zone> in the /Amazon Route 53 Developer Guide/ .
    aliasTarget :: Lude.Maybe AliasTarget,
    -- | /Weighted resource record sets only:/ Among resource record sets that have the same combination of DNS name and type, a value that determines the proportion of DNS queries that Amazon Route 53 responds to using the current resource record set. Route 53 calculates the sum of the weights for the resource record sets that have the same combination of DNS name and type. Route 53 then responds to queries based on the ratio of a resource's weight to the total. Note the following:
    --
    --
    --     * You must specify a value for the @Weight@ element for every weighted resource record set.
    --
    --
    --     * You can only specify one @ResourceRecord@ per weighted resource record set.
    --
    --
    --     * You can't create latency, failover, or geolocation resource record sets that have the same values for the @Name@ and @Type@ elements as weighted resource record sets.
    --
    --
    --     * You can create a maximum of 100 weighted resource record sets that have the same values for the @Name@ and @Type@ elements.
    --
    --
    --     * For weighted (but not weighted alias) resource record sets, if you set @Weight@ to @0@ for a resource record set, Route 53 never responds to queries with the applicable value for that resource record set. However, if you set @Weight@ to @0@ for all resource record sets that have the same combination of DNS name and type, traffic is routed to all resources with equal probability.
    -- The effect of setting @Weight@ to @0@ is different when you associate health checks with weighted resource record sets. For more information, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-configuring-options.html Options for Configuring Route 53 Active-Active and Active-Passive Failover> in the /Amazon Route 53 Developer Guide/ .
    weight :: Lude.Maybe Lude.Natural,
    -- | When you create a traffic policy instance, Amazon Route 53 automatically creates a resource record set. @TrafficPolicyInstanceId@ is the ID of the traffic policy instance that Route 53 created this resource record set for.
    --
    -- /Important:/ To delete the resource record set that is associated with a traffic policy instance, use @DeleteTrafficPolicyInstance@ . Route 53 will delete the resource record set automatically. If you delete the resource record set by using @ChangeResourceRecordSets@ , Route 53 doesn't automatically delete the traffic policy instance, and you'll continue to be charged for it even though it's no longer in use.
    trafficPolicyInstanceId :: Lude.Maybe Lude.Text,
    -- | /Resource record sets that have a routing policy other than simple:/ An identifier that differentiates among multiple resource record sets that have the same combination of name and type, such as multiple weighted resource record sets named acme.example.com that have a type of A. In a group of resource record sets that have the same name and type, the value of @SetIdentifier@ must be unique for each resource record set.
    --
    -- For information about routing policies, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html Choosing a Routing Policy> in the /Amazon Route 53 Developer Guide/ .
    setIdentifier :: Lude.Maybe Lude.Text,
    -- | /Failover resource record sets only:/ To configure failover, you add the @Failover@ element to two resource record sets. For one resource record set, you specify @PRIMARY@ as the value for @Failover@ ; for the other resource record set, you specify @SECONDARY@ . In addition, you include the @HealthCheckId@ element and specify the health check that you want Amazon Route 53 to perform for each resource record set.
    --
    -- Except where noted, the following failover behaviors assume that you have included the @HealthCheckId@ element in both resource record sets:
    --
    --     * When the primary resource record set is healthy, Route 53 responds to DNS queries with the applicable value from the primary resource record set regardless of the health of the secondary resource record set.
    --
    --
    --     * When the primary resource record set is unhealthy and the secondary resource record set is healthy, Route 53 responds to DNS queries with the applicable value from the secondary resource record set.
    --
    --
    --     * When the secondary resource record set is unhealthy, Route 53 responds to DNS queries with the applicable value from the primary resource record set regardless of the health of the primary resource record set.
    --
    --
    --     * If you omit the @HealthCheckId@ element for the secondary resource record set, and if the primary resource record set is unhealthy, Route 53 always responds to DNS queries with the applicable value from the secondary resource record set. This is true regardless of the health of the associated endpoint.
    --
    --
    -- You can't create non-failover resource record sets that have the same values for the @Name@ and @Type@ elements as failover resource record sets.
    -- For failover alias resource record sets, you must also include the @EvaluateTargetHealth@ element and set the value to true.
    -- For more information about configuring failover for Route 53, see the following topics in the /Amazon Route 53 Developer Guide/ :
    --
    --     * <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html Route 53 Health Checks and DNS Failover>
    --
    --
    --     * <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html Configuring Failover in a Private Hosted Zone>
    failover :: Lude.Maybe Failover,
    -- | For @ChangeResourceRecordSets@ requests, the name of the record that you want to create, update, or delete. For @ListResourceRecordSets@ responses, the name of a record in the specified hosted zone.
    --
    -- __ChangeResourceRecordSets Only__
    -- Enter a fully qualified domain name, for example, @www.example.com@ . You can optionally include a trailing dot. If you omit the trailing dot, Amazon Route 53 assumes that the domain name that you specify is fully qualified. This means that Route 53 treats @www.example.com@ (without a trailing dot) and @www.example.com.@ (with a trailing dot) as identical.
    -- For information about how to specify characters other than @a-z@ , @0-9@ , and @-@ (hyphen) and how to specify internationalized domain names, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html DNS Domain Name Format> in the /Amazon Route 53 Developer Guide/ .
    -- You can use the asterisk (*) wildcard to replace the leftmost label in a domain name, for example, @*.example.com@ . Note the following:
    --
    --     * The * must replace the entire label. For example, you can't specify @*prod.example.com@ or @prod*.example.com@ .
    --
    --
    --     * The * can't replace any of the middle labels, for example, marketing.*.example.com.
    --
    --
    --     * If you include * in any position other than the leftmost label in a domain name, DNS treats it as an * character (ASCII 42), not as a wildcard.
    -- /Important:/ You can't use the * wildcard for resource records sets that have a type of NS.
    --
    --
    -- You can use the * wildcard as the leftmost label in a domain name, for example, @*.example.com@ . You can't use an * for one of the middle labels, for example, @marketing.*.example.com@ . In addition, the * must replace the entire label; for example, you can't specify @prod*.example.com@ .
    name :: Lude.Text,
    -- | If you want Amazon Route 53 to return this resource record set in response to a DNS query only when the status of a health check is healthy, include the @HealthCheckId@ element and specify the ID of the applicable health check.
    --
    -- Route 53 determines whether a resource record set is healthy based on one of the following:
    --
    --     * By periodically sending a request to the endpoint that is specified in the health check
    --
    --
    --     * By aggregating the status of a specified group of health checks (calculated health checks)
    --
    --
    --     * By determining the current state of a CloudWatch alarm (CloudWatch metric health checks)
    --
    --
    -- /Important:/ Route 53 doesn't check the health of the endpoint that is specified in the resource record set, for example, the endpoint specified by the IP address in the @Value@ element. When you add a @HealthCheckId@ element to a resource record set, Route 53 checks the health of the endpoint that you specified in the health check.
    -- For more information, see the following topics in the /Amazon Route 53 Developer Guide/ :
    --
    --     * <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html How Amazon Route 53 Determines Whether an Endpoint Is Healthy>
    --
    --
    --     * <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html Route 53 Health Checks and DNS Failover>
    --
    --
    --     * <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html Configuring Failover in a Private Hosted Zone>
    --
    --
    -- __When to Specify HealthCheckId__
    -- Specifying a value for @HealthCheckId@ is useful only when Route 53 is choosing between two or more resource record sets to respond to a DNS query, and you want Route 53 to base the choice in part on the status of a health check. Configuring health checks makes sense only in the following configurations:
    --
    --     * __Non-alias resource record sets__ : You're checking the health of a group of non-alias resource record sets that have the same routing policy, name, and type (such as multiple weighted records named www.example.com with a type of A) and you specify health check IDs for all the resource record sets.
    -- If the health check status for a resource record set is healthy, Route 53 includes the record among the records that it responds to DNS queries with.
    -- If the health check status for a resource record set is unhealthy, Route 53 stops responding to DNS queries using the value for that resource record set.
    -- If the health check status for all resource record sets in the group is unhealthy, Route 53 considers all resource record sets in the group healthy and responds to DNS queries accordingly.
    --
    --
    --     * __Alias resource record sets__ : You specify the following settings:
    --
    --     * You set @EvaluateTargetHealth@ to true for an alias resource record set in a group of resource record sets that have the same routing policy, name, and type (such as multiple weighted records named www.example.com with a type of A).
    --
    --
    --     * You configure the alias resource record set to route traffic to a non-alias resource record set in the same hosted zone.
    --
    --
    --     * You specify a health check ID for the non-alias resource record set.
    --
    --
    -- If the health check status is healthy, Route 53 considers the alias resource record set to be healthy and includes the alias record among the records that it responds to DNS queries with.
    -- If the health check status is unhealthy, Route 53 stops responding to DNS queries using the alias resource record set.
    --
    --
    -- __Geolocation Routing__
    -- For geolocation resource record sets, if an endpoint is unhealthy, Route 53 looks for a resource record set for the larger, associated geographic region. For example, suppose you have resource record sets for a state in the United States, for the entire United States, for North America, and a resource record set that has @*@ for @CountryCode@ is @*@ , which applies to all locations. If the endpoint for the state resource record set is unhealthy, Route 53 checks for healthy resource record sets in the following order until it finds a resource record set for which the endpoint is healthy:
    --
    --     * The United States
    --
    --
    --     * North America
    --
    --
    --     * The default resource record set
    --
    --
    -- __Specifying the Health Check Endpoint by Domain Name__
    -- If your health checks specify the endpoint only by domain name, we recommend that you create a separate health check for each endpoint. For example, create a health check for each @HTTP@ server that is serving content for @www.example.com@ . For the value of @FullyQualifiedDomainName@ , specify the domain name of the server (such as @us-east-2-www.example.com@ ), not the name of the resource record sets (@www.example.com@ ).
    -- /Important:/ Health check results will be unpredictable if you do the following:
    --
    --     * Create a health check that has the same value for @FullyQualifiedDomainName@ as the name of a resource record set.
    --
    --
    --     * Associate that health check with the resource record set.
    healthCheckId :: Lude.Maybe Lude.Text,
    -- | /Latency-based resource record sets only:/ The Amazon EC2 Region where you created the resource that this resource record set refers to. The resource typically is an AWS resource, such as an EC2 instance or an ELB load balancer, and is referred to by an IP address or a DNS domain name, depending on the record type.
    --
    -- When Amazon Route 53 receives a DNS query for a domain name and type for which you have created latency resource record sets, Route 53 selects the latency resource record set that has the lowest latency between the end user and the associated Amazon EC2 Region. Route 53 then returns the value that is associated with the selected resource record set.
    -- Note the following:
    --
    --     * You can only specify one @ResourceRecord@ per latency resource record set.
    --
    --
    --     * You can only create one latency resource record set for each Amazon EC2 Region.
    --
    --
    --     * You aren't required to create latency resource record sets for all Amazon EC2 Regions. Route 53 will choose the region with the best latency from among the regions that you create latency resource record sets for.
    --
    --
    --     * You can't create non-latency resource record sets that have the same values for the @Name@ and @Type@ elements as latency resource record sets.
    region :: Lude.Maybe Region,
    -- | The DNS record type. For information about different record types and how data is encoded for them, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/ResourceRecordTypes.html Supported DNS Resource Record Types> in the /Amazon Route 53 Developer Guide/ .
    --
    -- Valid values for basic resource record sets: @A@ | @AAAA@ | @CAA@ | @CNAME@ | @MX@ | @NAPTR@ | @NS@ | @PTR@ | @SOA@ | @SPF@ | @SRV@ | @TXT@
    -- Values for weighted, latency, geolocation, and failover resource record sets: @A@ | @AAAA@ | @CAA@ | @CNAME@ | @MX@ | @NAPTR@ | @PTR@ | @SPF@ | @SRV@ | @TXT@ . When creating a group of weighted, latency, geolocation, or failover resource record sets, specify the same value for all of the resource record sets in the group.
    -- Valid values for multivalue answer resource record sets: @A@ | @AAAA@ | @MX@ | @NAPTR@ | @PTR@ | @SPF@ | @SRV@ | @TXT@
    -- Values for alias resource record sets:
    --
    --     * __Amazon API Gateway custom regional APIs and edge-optimized APIs:__ @A@
    --
    --
    --     * __CloudFront distributions:__ @A@
    -- If IPv6 is enabled for the distribution, create two resource record sets to route traffic to your distribution, one with a value of @A@ and one with a value of @AAAA@ .
    --
    --
    --     * __Amazon API Gateway environment that has a regionalized subdomain__ : @A@
    --
    --
    --     * __ELB load balancers:__ @A@ | @AAAA@
    --
    --
    --     * __Amazon S3 buckets:__ @A@
    --
    --
    --     * __Amazon Virtual Private Cloud interface VPC endpoints__ @A@
    --
    --
    --     * __Another resource record set in this hosted zone:__ Specify the type of the resource record set that you're creating the alias for. All values are supported except @NS@ and @SOA@ .
    type' :: RecordType,
    -- | /Geolocation resource record sets only:/ A complex type that lets you control how Amazon Route 53 responds to DNS queries based on the geographic origin of the query. For example, if you want all queries from Africa to be routed to a web server with an IP address of @192.0.2.111@ , create a resource record set with a @Type@ of @A@ and a @ContinentCode@ of @AF@ .
    --
    -- If you create separate resource record sets for overlapping geographic regions (for example, one resource record set for a continent and one for a country on the same continent), priority goes to the smallest geographic region. This allows you to route most queries for a continent to one resource and to route queries for a country on that continent to a different resource.
    -- You can't create two geolocation resource record sets that specify the same geographic location.
    -- The value @*@ in the @CountryCode@ element matches all geographic locations that aren't specified in other geolocation resource record sets that have the same values for the @Name@ and @Type@ elements.
    -- /Important:/ Geolocation works by mapping IP addresses to locations. However, some IP addresses aren't mapped to geographic locations, so even if you create geolocation resource record sets that cover all seven continents, Route 53 will receive some DNS queries from locations that it can't identify. We recommend that you create a resource record set for which the value of @CountryCode@ is @*@ . Two groups of queries are routed to the resource that you specify in this record: queries that come from locations for which you haven't created geolocation resource record sets and queries from IP addresses that aren't mapped to a location. If you don't create a @*@ resource record set, Route 53 returns a "no answer" response for queries from those locations.
    -- You can't create non-geolocation resource record sets that have the same values for the @Name@ and @Type@ elements as geolocation resource record sets.
    geoLocation :: Lude.Maybe GeoLocation,
    -- | /Multivalue answer resource record sets only/ : To route traffic approximately randomly to multiple resources, such as web servers, create one multivalue answer record for each resource and specify @true@ for @MultiValueAnswer@ . Note the following:
    --
    --
    --     * If you associate a health check with a multivalue answer resource record set, Amazon Route 53 responds to DNS queries with the corresponding IP address only when the health check is healthy.
    --
    --
    --     * If you don't associate a health check with a multivalue answer record, Route 53 always considers the record to be healthy.
    --
    --
    --     * Route 53 responds to DNS queries with up to eight healthy records; if you have eight or fewer healthy records, Route 53 responds to all DNS queries with all the healthy records.
    --
    --
    --     * If you have more than eight healthy records, Route 53 responds to different DNS resolvers with different combinations of healthy records.
    --
    --
    --     * When all records are unhealthy, Route 53 responds to DNS queries with up to eight unhealthy records.
    --
    --
    --     * If a resource becomes unavailable after a resolver caches a response, client software typically tries another of the IP addresses in the response.
    --
    --
    -- You can't create multivalue answer alias records.
    multiValueAnswer :: Lude.Maybe Lude.Bool
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ResourceRecordSet' with the minimum fields required to make a request.
--
-- * 'tTL' - The resource record cache time to live (TTL), in seconds. Note the following:
--
--
--     * If you're creating or updating an alias resource record set, omit @TTL@ . Amazon Route 53 uses the value of @TTL@ for the alias target.
--
--
--     * If you're associating this resource record set with a health check (if you're adding a @HealthCheckId@ element), we recommend that you specify a @TTL@ of 60 seconds or less so clients respond quickly to changes in health status.
--
--
--     * All of the resource record sets in a group of weighted resource record sets must have the same value for @TTL@ .
--
--
--     * If a group of weighted resource record sets includes one or more weighted alias resource record sets for which the alias target is an ELB load balancer, we recommend that you specify a @TTL@ of 60 seconds for all of the non-alias weighted resource record sets that have the same name and type. Values other than 60 seconds (the TTL for load balancers) will change the effect of the values that you specify for @Weight@ .
--
--
-- * 'resourceRecords' - Information about the resource records to act upon.
-- * 'aliasTarget' - /Alias resource record sets only:/ Information about the AWS resource, such as a CloudFront distribution or an Amazon S3 bucket, that you want to route traffic to.
--
-- If you're creating resource records sets for a private hosted zone, note the following:
--
--     * You can't create an alias resource record set in a private hosted zone to route traffic to a CloudFront distribution.
--
--
--     * Creating geolocation alias resource record sets or latency alias resource record sets in a private hosted zone is unsupported.
--
--
--     * For information about creating failover resource record sets in a private hosted zone, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html Configuring Failover in a Private Hosted Zone> in the /Amazon Route 53 Developer Guide/ .
--
--
-- * 'weight' - /Weighted resource record sets only:/ Among resource record sets that have the same combination of DNS name and type, a value that determines the proportion of DNS queries that Amazon Route 53 responds to using the current resource record set. Route 53 calculates the sum of the weights for the resource record sets that have the same combination of DNS name and type. Route 53 then responds to queries based on the ratio of a resource's weight to the total. Note the following:
--
--
--     * You must specify a value for the @Weight@ element for every weighted resource record set.
--
--
--     * You can only specify one @ResourceRecord@ per weighted resource record set.
--
--
--     * You can't create latency, failover, or geolocation resource record sets that have the same values for the @Name@ and @Type@ elements as weighted resource record sets.
--
--
--     * You can create a maximum of 100 weighted resource record sets that have the same values for the @Name@ and @Type@ elements.
--
--
--     * For weighted (but not weighted alias) resource record sets, if you set @Weight@ to @0@ for a resource record set, Route 53 never responds to queries with the applicable value for that resource record set. However, if you set @Weight@ to @0@ for all resource record sets that have the same combination of DNS name and type, traffic is routed to all resources with equal probability.
-- The effect of setting @Weight@ to @0@ is different when you associate health checks with weighted resource record sets. For more information, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-configuring-options.html Options for Configuring Route 53 Active-Active and Active-Passive Failover> in the /Amazon Route 53 Developer Guide/ .
--
--
-- * 'trafficPolicyInstanceId' - When you create a traffic policy instance, Amazon Route 53 automatically creates a resource record set. @TrafficPolicyInstanceId@ is the ID of the traffic policy instance that Route 53 created this resource record set for.
--
-- /Important:/ To delete the resource record set that is associated with a traffic policy instance, use @DeleteTrafficPolicyInstance@ . Route 53 will delete the resource record set automatically. If you delete the resource record set by using @ChangeResourceRecordSets@ , Route 53 doesn't automatically delete the traffic policy instance, and you'll continue to be charged for it even though it's no longer in use.
-- * 'setIdentifier' - /Resource record sets that have a routing policy other than simple:/ An identifier that differentiates among multiple resource record sets that have the same combination of name and type, such as multiple weighted resource record sets named acme.example.com that have a type of A. In a group of resource record sets that have the same name and type, the value of @SetIdentifier@ must be unique for each resource record set.
--
-- For information about routing policies, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html Choosing a Routing Policy> in the /Amazon Route 53 Developer Guide/ .
-- * 'failover' - /Failover resource record sets only:/ To configure failover, you add the @Failover@ element to two resource record sets. For one resource record set, you specify @PRIMARY@ as the value for @Failover@ ; for the other resource record set, you specify @SECONDARY@ . In addition, you include the @HealthCheckId@ element and specify the health check that you want Amazon Route 53 to perform for each resource record set.
--
-- Except where noted, the following failover behaviors assume that you have included the @HealthCheckId@ element in both resource record sets:
--
--     * When the primary resource record set is healthy, Route 53 responds to DNS queries with the applicable value from the primary resource record set regardless of the health of the secondary resource record set.
--
--
--     * When the primary resource record set is unhealthy and the secondary resource record set is healthy, Route 53 responds to DNS queries with the applicable value from the secondary resource record set.
--
--
--     * When the secondary resource record set is unhealthy, Route 53 responds to DNS queries with the applicable value from the primary resource record set regardless of the health of the primary resource record set.
--
--
--     * If you omit the @HealthCheckId@ element for the secondary resource record set, and if the primary resource record set is unhealthy, Route 53 always responds to DNS queries with the applicable value from the secondary resource record set. This is true regardless of the health of the associated endpoint.
--
--
-- You can't create non-failover resource record sets that have the same values for the @Name@ and @Type@ elements as failover resource record sets.
-- For failover alias resource record sets, you must also include the @EvaluateTargetHealth@ element and set the value to true.
-- For more information about configuring failover for Route 53, see the following topics in the /Amazon Route 53 Developer Guide/ :
--
--     * <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html Route 53 Health Checks and DNS Failover>
--
--
--     * <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html Configuring Failover in a Private Hosted Zone>
--
--
-- * 'name' - For @ChangeResourceRecordSets@ requests, the name of the record that you want to create, update, or delete. For @ListResourceRecordSets@ responses, the name of a record in the specified hosted zone.
--
-- __ChangeResourceRecordSets Only__
-- Enter a fully qualified domain name, for example, @www.example.com@ . You can optionally include a trailing dot. If you omit the trailing dot, Amazon Route 53 assumes that the domain name that you specify is fully qualified. This means that Route 53 treats @www.example.com@ (without a trailing dot) and @www.example.com.@ (with a trailing dot) as identical.
-- For information about how to specify characters other than @a-z@ , @0-9@ , and @-@ (hyphen) and how to specify internationalized domain names, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html DNS Domain Name Format> in the /Amazon Route 53 Developer Guide/ .
-- You can use the asterisk (*) wildcard to replace the leftmost label in a domain name, for example, @*.example.com@ . Note the following:
--
--     * The * must replace the entire label. For example, you can't specify @*prod.example.com@ or @prod*.example.com@ .
--
--
--     * The * can't replace any of the middle labels, for example, marketing.*.example.com.
--
--
--     * If you include * in any position other than the leftmost label in a domain name, DNS treats it as an * character (ASCII 42), not as a wildcard.
-- /Important:/ You can't use the * wildcard for resource records sets that have a type of NS.
--
--
-- You can use the * wildcard as the leftmost label in a domain name, for example, @*.example.com@ . You can't use an * for one of the middle labels, for example, @marketing.*.example.com@ . In addition, the * must replace the entire label; for example, you can't specify @prod*.example.com@ .
-- * 'healthCheckId' - If you want Amazon Route 53 to return this resource record set in response to a DNS query only when the status of a health check is healthy, include the @HealthCheckId@ element and specify the ID of the applicable health check.
--
-- Route 53 determines whether a resource record set is healthy based on one of the following:
--
--     * By periodically sending a request to the endpoint that is specified in the health check
--
--
--     * By aggregating the status of a specified group of health checks (calculated health checks)
--
--
--     * By determining the current state of a CloudWatch alarm (CloudWatch metric health checks)
--
--
-- /Important:/ Route 53 doesn't check the health of the endpoint that is specified in the resource record set, for example, the endpoint specified by the IP address in the @Value@ element. When you add a @HealthCheckId@ element to a resource record set, Route 53 checks the health of the endpoint that you specified in the health check.
-- For more information, see the following topics in the /Amazon Route 53 Developer Guide/ :
--
--     * <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html How Amazon Route 53 Determines Whether an Endpoint Is Healthy>
--
--
--     * <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html Route 53 Health Checks and DNS Failover>
--
--
--     * <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html Configuring Failover in a Private Hosted Zone>
--
--
-- __When to Specify HealthCheckId__
-- Specifying a value for @HealthCheckId@ is useful only when Route 53 is choosing between two or more resource record sets to respond to a DNS query, and you want Route 53 to base the choice in part on the status of a health check. Configuring health checks makes sense only in the following configurations:
--
--     * __Non-alias resource record sets__ : You're checking the health of a group of non-alias resource record sets that have the same routing policy, name, and type (such as multiple weighted records named www.example.com with a type of A) and you specify health check IDs for all the resource record sets.
-- If the health check status for a resource record set is healthy, Route 53 includes the record among the records that it responds to DNS queries with.
-- If the health check status for a resource record set is unhealthy, Route 53 stops responding to DNS queries using the value for that resource record set.
-- If the health check status for all resource record sets in the group is unhealthy, Route 53 considers all resource record sets in the group healthy and responds to DNS queries accordingly.
--
--
--     * __Alias resource record sets__ : You specify the following settings:
--
--     * You set @EvaluateTargetHealth@ to true for an alias resource record set in a group of resource record sets that have the same routing policy, name, and type (such as multiple weighted records named www.example.com with a type of A).
--
--
--     * You configure the alias resource record set to route traffic to a non-alias resource record set in the same hosted zone.
--
--
--     * You specify a health check ID for the non-alias resource record set.
--
--
-- If the health check status is healthy, Route 53 considers the alias resource record set to be healthy and includes the alias record among the records that it responds to DNS queries with.
-- If the health check status is unhealthy, Route 53 stops responding to DNS queries using the alias resource record set.
--
--
-- __Geolocation Routing__
-- For geolocation resource record sets, if an endpoint is unhealthy, Route 53 looks for a resource record set for the larger, associated geographic region. For example, suppose you have resource record sets for a state in the United States, for the entire United States, for North America, and a resource record set that has @*@ for @CountryCode@ is @*@ , which applies to all locations. If the endpoint for the state resource record set is unhealthy, Route 53 checks for healthy resource record sets in the following order until it finds a resource record set for which the endpoint is healthy:
--
--     * The United States
--
--
--     * North America
--
--
--     * The default resource record set
--
--
-- __Specifying the Health Check Endpoint by Domain Name__
-- If your health checks specify the endpoint only by domain name, we recommend that you create a separate health check for each endpoint. For example, create a health check for each @HTTP@ server that is serving content for @www.example.com@ . For the value of @FullyQualifiedDomainName@ , specify the domain name of the server (such as @us-east-2-www.example.com@ ), not the name of the resource record sets (@www.example.com@ ).
-- /Important:/ Health check results will be unpredictable if you do the following:
--
--     * Create a health check that has the same value for @FullyQualifiedDomainName@ as the name of a resource record set.
--
--
--     * Associate that health check with the resource record set.
--
--
-- * 'region' - /Latency-based resource record sets only:/ The Amazon EC2 Region where you created the resource that this resource record set refers to. The resource typically is an AWS resource, such as an EC2 instance or an ELB load balancer, and is referred to by an IP address or a DNS domain name, depending on the record type.
--
-- When Amazon Route 53 receives a DNS query for a domain name and type for which you have created latency resource record sets, Route 53 selects the latency resource record set that has the lowest latency between the end user and the associated Amazon EC2 Region. Route 53 then returns the value that is associated with the selected resource record set.
-- Note the following:
--
--     * You can only specify one @ResourceRecord@ per latency resource record set.
--
--
--     * You can only create one latency resource record set for each Amazon EC2 Region.
--
--
--     * You aren't required to create latency resource record sets for all Amazon EC2 Regions. Route 53 will choose the region with the best latency from among the regions that you create latency resource record sets for.
--
--
--     * You can't create non-latency resource record sets that have the same values for the @Name@ and @Type@ elements as latency resource record sets.
--
--
-- * 'type'' - The DNS record type. For information about different record types and how data is encoded for them, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/ResourceRecordTypes.html Supported DNS Resource Record Types> in the /Amazon Route 53 Developer Guide/ .
--
-- Valid values for basic resource record sets: @A@ | @AAAA@ | @CAA@ | @CNAME@ | @MX@ | @NAPTR@ | @NS@ | @PTR@ | @SOA@ | @SPF@ | @SRV@ | @TXT@
-- Values for weighted, latency, geolocation, and failover resource record sets: @A@ | @AAAA@ | @CAA@ | @CNAME@ | @MX@ | @NAPTR@ | @PTR@ | @SPF@ | @SRV@ | @TXT@ . When creating a group of weighted, latency, geolocation, or failover resource record sets, specify the same value for all of the resource record sets in the group.
-- Valid values for multivalue answer resource record sets: @A@ | @AAAA@ | @MX@ | @NAPTR@ | @PTR@ | @SPF@ | @SRV@ | @TXT@
-- Values for alias resource record sets:
--
--     * __Amazon API Gateway custom regional APIs and edge-optimized APIs:__ @A@
--
--
--     * __CloudFront distributions:__ @A@
-- If IPv6 is enabled for the distribution, create two resource record sets to route traffic to your distribution, one with a value of @A@ and one with a value of @AAAA@ .
--
--
--     * __Amazon API Gateway environment that has a regionalized subdomain__ : @A@
--
--
--     * __ELB load balancers:__ @A@ | @AAAA@
--
--
--     * __Amazon S3 buckets:__ @A@
--
--
--     * __Amazon Virtual Private Cloud interface VPC endpoints__ @A@
--
--
--     * __Another resource record set in this hosted zone:__ Specify the type of the resource record set that you're creating the alias for. All values are supported except @NS@ and @SOA@ .
--
--
-- * 'geoLocation' - /Geolocation resource record sets only:/ A complex type that lets you control how Amazon Route 53 responds to DNS queries based on the geographic origin of the query. For example, if you want all queries from Africa to be routed to a web server with an IP address of @192.0.2.111@ , create a resource record set with a @Type@ of @A@ and a @ContinentCode@ of @AF@ .
--
-- If you create separate resource record sets for overlapping geographic regions (for example, one resource record set for a continent and one for a country on the same continent), priority goes to the smallest geographic region. This allows you to route most queries for a continent to one resource and to route queries for a country on that continent to a different resource.
-- You can't create two geolocation resource record sets that specify the same geographic location.
-- The value @*@ in the @CountryCode@ element matches all geographic locations that aren't specified in other geolocation resource record sets that have the same values for the @Name@ and @Type@ elements.
-- /Important:/ Geolocation works by mapping IP addresses to locations. However, some IP addresses aren't mapped to geographic locations, so even if you create geolocation resource record sets that cover all seven continents, Route 53 will receive some DNS queries from locations that it can't identify. We recommend that you create a resource record set for which the value of @CountryCode@ is @*@ . Two groups of queries are routed to the resource that you specify in this record: queries that come from locations for which you haven't created geolocation resource record sets and queries from IP addresses that aren't mapped to a location. If you don't create a @*@ resource record set, Route 53 returns a "no answer" response for queries from those locations.
-- You can't create non-geolocation resource record sets that have the same values for the @Name@ and @Type@ elements as geolocation resource record sets.
-- * 'multiValueAnswer' - /Multivalue answer resource record sets only/ : To route traffic approximately randomly to multiple resources, such as web servers, create one multivalue answer record for each resource and specify @true@ for @MultiValueAnswer@ . Note the following:
--
--
--     * If you associate a health check with a multivalue answer resource record set, Amazon Route 53 responds to DNS queries with the corresponding IP address only when the health check is healthy.
--
--
--     * If you don't associate a health check with a multivalue answer record, Route 53 always considers the record to be healthy.
--
--
--     * Route 53 responds to DNS queries with up to eight healthy records; if you have eight or fewer healthy records, Route 53 responds to all DNS queries with all the healthy records.
--
--
--     * If you have more than eight healthy records, Route 53 responds to different DNS resolvers with different combinations of healthy records.
--
--
--     * When all records are unhealthy, Route 53 responds to DNS queries with up to eight unhealthy records.
--
--
--     * If a resource becomes unavailable after a resolver caches a response, client software typically tries another of the IP addresses in the response.
--
--
-- You can't create multivalue answer alias records.
mkResourceRecordSet ::
  -- | 'name'
  Lude.Text ->
  -- | 'type''
  RecordType ->
  ResourceRecordSet
mkResourceRecordSet pName_ pType_ =
  ResourceRecordSet'
    { tTL = Lude.Nothing,
      resourceRecords = Lude.Nothing,
      aliasTarget = Lude.Nothing,
      weight = Lude.Nothing,
      trafficPolicyInstanceId = Lude.Nothing,
      setIdentifier = Lude.Nothing,
      failover = Lude.Nothing,
      name = pName_,
      healthCheckId = Lude.Nothing,
      region = Lude.Nothing,
      type' = pType_,
      geoLocation = Lude.Nothing,
      multiValueAnswer = Lude.Nothing
    }

-- | The resource record cache time to live (TTL), in seconds. Note the following:
--
--
--     * If you're creating or updating an alias resource record set, omit @TTL@ . Amazon Route 53 uses the value of @TTL@ for the alias target.
--
--
--     * If you're associating this resource record set with a health check (if you're adding a @HealthCheckId@ element), we recommend that you specify a @TTL@ of 60 seconds or less so clients respond quickly to changes in health status.
--
--
--     * All of the resource record sets in a group of weighted resource record sets must have the same value for @TTL@ .
--
--
--     * If a group of weighted resource record sets includes one or more weighted alias resource record sets for which the alias target is an ELB load balancer, we recommend that you specify a @TTL@ of 60 seconds for all of the non-alias weighted resource record sets that have the same name and type. Values other than 60 seconds (the TTL for load balancers) will change the effect of the values that you specify for @Weight@ .
--
--
--
-- /Note:/ Consider using 'tTL' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rrsTTL :: Lens.Lens' ResourceRecordSet (Lude.Maybe Lude.Natural)
rrsTTL = Lens.lens (tTL :: ResourceRecordSet -> Lude.Maybe Lude.Natural) (\s a -> s {tTL = a} :: ResourceRecordSet)
{-# DEPRECATED rrsTTL "Use generic-lens or generic-optics with 'tTL' instead." #-}

-- | Information about the resource records to act upon.
--
-- /Note:/ Consider using 'resourceRecords' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rrsResourceRecords :: Lens.Lens' ResourceRecordSet (Lude.Maybe (Lude.NonEmpty ResourceRecord))
rrsResourceRecords = Lens.lens (resourceRecords :: ResourceRecordSet -> Lude.Maybe (Lude.NonEmpty ResourceRecord)) (\s a -> s {resourceRecords = a} :: ResourceRecordSet)
{-# DEPRECATED rrsResourceRecords "Use generic-lens or generic-optics with 'resourceRecords' instead." #-}

-- | /Alias resource record sets only:/ Information about the AWS resource, such as a CloudFront distribution or an Amazon S3 bucket, that you want to route traffic to.
--
-- If you're creating resource records sets for a private hosted zone, note the following:
--
--     * You can't create an alias resource record set in a private hosted zone to route traffic to a CloudFront distribution.
--
--
--     * Creating geolocation alias resource record sets or latency alias resource record sets in a private hosted zone is unsupported.
--
--
--     * For information about creating failover resource record sets in a private hosted zone, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html Configuring Failover in a Private Hosted Zone> in the /Amazon Route 53 Developer Guide/ .
--
--
--
-- /Note:/ Consider using 'aliasTarget' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rrsAliasTarget :: Lens.Lens' ResourceRecordSet (Lude.Maybe AliasTarget)
rrsAliasTarget = Lens.lens (aliasTarget :: ResourceRecordSet -> Lude.Maybe AliasTarget) (\s a -> s {aliasTarget = a} :: ResourceRecordSet)
{-# DEPRECATED rrsAliasTarget "Use generic-lens or generic-optics with 'aliasTarget' instead." #-}

-- | /Weighted resource record sets only:/ Among resource record sets that have the same combination of DNS name and type, a value that determines the proportion of DNS queries that Amazon Route 53 responds to using the current resource record set. Route 53 calculates the sum of the weights for the resource record sets that have the same combination of DNS name and type. Route 53 then responds to queries based on the ratio of a resource's weight to the total. Note the following:
--
--
--     * You must specify a value for the @Weight@ element for every weighted resource record set.
--
--
--     * You can only specify one @ResourceRecord@ per weighted resource record set.
--
--
--     * You can't create latency, failover, or geolocation resource record sets that have the same values for the @Name@ and @Type@ elements as weighted resource record sets.
--
--
--     * You can create a maximum of 100 weighted resource record sets that have the same values for the @Name@ and @Type@ elements.
--
--
--     * For weighted (but not weighted alias) resource record sets, if you set @Weight@ to @0@ for a resource record set, Route 53 never responds to queries with the applicable value for that resource record set. However, if you set @Weight@ to @0@ for all resource record sets that have the same combination of DNS name and type, traffic is routed to all resources with equal probability.
-- The effect of setting @Weight@ to @0@ is different when you associate health checks with weighted resource record sets. For more information, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-configuring-options.html Options for Configuring Route 53 Active-Active and Active-Passive Failover> in the /Amazon Route 53 Developer Guide/ .
--
--
--
-- /Note:/ Consider using 'weight' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rrsWeight :: Lens.Lens' ResourceRecordSet (Lude.Maybe Lude.Natural)
rrsWeight = Lens.lens (weight :: ResourceRecordSet -> Lude.Maybe Lude.Natural) (\s a -> s {weight = a} :: ResourceRecordSet)
{-# DEPRECATED rrsWeight "Use generic-lens or generic-optics with 'weight' instead." #-}

-- | When you create a traffic policy instance, Amazon Route 53 automatically creates a resource record set. @TrafficPolicyInstanceId@ is the ID of the traffic policy instance that Route 53 created this resource record set for.
--
-- /Important:/ To delete the resource record set that is associated with a traffic policy instance, use @DeleteTrafficPolicyInstance@ . Route 53 will delete the resource record set automatically. If you delete the resource record set by using @ChangeResourceRecordSets@ , Route 53 doesn't automatically delete the traffic policy instance, and you'll continue to be charged for it even though it's no longer in use.
--
-- /Note:/ Consider using 'trafficPolicyInstanceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rrsTrafficPolicyInstanceId :: Lens.Lens' ResourceRecordSet (Lude.Maybe Lude.Text)
rrsTrafficPolicyInstanceId = Lens.lens (trafficPolicyInstanceId :: ResourceRecordSet -> Lude.Maybe Lude.Text) (\s a -> s {trafficPolicyInstanceId = a} :: ResourceRecordSet)
{-# DEPRECATED rrsTrafficPolicyInstanceId "Use generic-lens or generic-optics with 'trafficPolicyInstanceId' instead." #-}

-- | /Resource record sets that have a routing policy other than simple:/ An identifier that differentiates among multiple resource record sets that have the same combination of name and type, such as multiple weighted resource record sets named acme.example.com that have a type of A. In a group of resource record sets that have the same name and type, the value of @SetIdentifier@ must be unique for each resource record set.
--
-- For information about routing policies, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html Choosing a Routing Policy> in the /Amazon Route 53 Developer Guide/ .
--
-- /Note:/ Consider using 'setIdentifier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rrsSetIdentifier :: Lens.Lens' ResourceRecordSet (Lude.Maybe Lude.Text)
rrsSetIdentifier = Lens.lens (setIdentifier :: ResourceRecordSet -> Lude.Maybe Lude.Text) (\s a -> s {setIdentifier = a} :: ResourceRecordSet)
{-# DEPRECATED rrsSetIdentifier "Use generic-lens or generic-optics with 'setIdentifier' instead." #-}

-- | /Failover resource record sets only:/ To configure failover, you add the @Failover@ element to two resource record sets. For one resource record set, you specify @PRIMARY@ as the value for @Failover@ ; for the other resource record set, you specify @SECONDARY@ . In addition, you include the @HealthCheckId@ element and specify the health check that you want Amazon Route 53 to perform for each resource record set.
--
-- Except where noted, the following failover behaviors assume that you have included the @HealthCheckId@ element in both resource record sets:
--
--     * When the primary resource record set is healthy, Route 53 responds to DNS queries with the applicable value from the primary resource record set regardless of the health of the secondary resource record set.
--
--
--     * When the primary resource record set is unhealthy and the secondary resource record set is healthy, Route 53 responds to DNS queries with the applicable value from the secondary resource record set.
--
--
--     * When the secondary resource record set is unhealthy, Route 53 responds to DNS queries with the applicable value from the primary resource record set regardless of the health of the primary resource record set.
--
--
--     * If you omit the @HealthCheckId@ element for the secondary resource record set, and if the primary resource record set is unhealthy, Route 53 always responds to DNS queries with the applicable value from the secondary resource record set. This is true regardless of the health of the associated endpoint.
--
--
-- You can't create non-failover resource record sets that have the same values for the @Name@ and @Type@ elements as failover resource record sets.
-- For failover alias resource record sets, you must also include the @EvaluateTargetHealth@ element and set the value to true.
-- For more information about configuring failover for Route 53, see the following topics in the /Amazon Route 53 Developer Guide/ :
--
--     * <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html Route 53 Health Checks and DNS Failover>
--
--
--     * <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html Configuring Failover in a Private Hosted Zone>
--
--
--
-- /Note:/ Consider using 'failover' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rrsFailover :: Lens.Lens' ResourceRecordSet (Lude.Maybe Failover)
rrsFailover = Lens.lens (failover :: ResourceRecordSet -> Lude.Maybe Failover) (\s a -> s {failover = a} :: ResourceRecordSet)
{-# DEPRECATED rrsFailover "Use generic-lens or generic-optics with 'failover' instead." #-}

-- | For @ChangeResourceRecordSets@ requests, the name of the record that you want to create, update, or delete. For @ListResourceRecordSets@ responses, the name of a record in the specified hosted zone.
--
-- __ChangeResourceRecordSets Only__
-- Enter a fully qualified domain name, for example, @www.example.com@ . You can optionally include a trailing dot. If you omit the trailing dot, Amazon Route 53 assumes that the domain name that you specify is fully qualified. This means that Route 53 treats @www.example.com@ (without a trailing dot) and @www.example.com.@ (with a trailing dot) as identical.
-- For information about how to specify characters other than @a-z@ , @0-9@ , and @-@ (hyphen) and how to specify internationalized domain names, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html DNS Domain Name Format> in the /Amazon Route 53 Developer Guide/ .
-- You can use the asterisk (*) wildcard to replace the leftmost label in a domain name, for example, @*.example.com@ . Note the following:
--
--     * The * must replace the entire label. For example, you can't specify @*prod.example.com@ or @prod*.example.com@ .
--
--
--     * The * can't replace any of the middle labels, for example, marketing.*.example.com.
--
--
--     * If you include * in any position other than the leftmost label in a domain name, DNS treats it as an * character (ASCII 42), not as a wildcard.
-- /Important:/ You can't use the * wildcard for resource records sets that have a type of NS.
--
--
-- You can use the * wildcard as the leftmost label in a domain name, for example, @*.example.com@ . You can't use an * for one of the middle labels, for example, @marketing.*.example.com@ . In addition, the * must replace the entire label; for example, you can't specify @prod*.example.com@ .
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rrsName :: Lens.Lens' ResourceRecordSet Lude.Text
rrsName = Lens.lens (name :: ResourceRecordSet -> Lude.Text) (\s a -> s {name = a} :: ResourceRecordSet)
{-# DEPRECATED rrsName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | If you want Amazon Route 53 to return this resource record set in response to a DNS query only when the status of a health check is healthy, include the @HealthCheckId@ element and specify the ID of the applicable health check.
--
-- Route 53 determines whether a resource record set is healthy based on one of the following:
--
--     * By periodically sending a request to the endpoint that is specified in the health check
--
--
--     * By aggregating the status of a specified group of health checks (calculated health checks)
--
--
--     * By determining the current state of a CloudWatch alarm (CloudWatch metric health checks)
--
--
-- /Important:/ Route 53 doesn't check the health of the endpoint that is specified in the resource record set, for example, the endpoint specified by the IP address in the @Value@ element. When you add a @HealthCheckId@ element to a resource record set, Route 53 checks the health of the endpoint that you specified in the health check.
-- For more information, see the following topics in the /Amazon Route 53 Developer Guide/ :
--
--     * <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html How Amazon Route 53 Determines Whether an Endpoint Is Healthy>
--
--
--     * <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html Route 53 Health Checks and DNS Failover>
--
--
--     * <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html Configuring Failover in a Private Hosted Zone>
--
--
-- __When to Specify HealthCheckId__
-- Specifying a value for @HealthCheckId@ is useful only when Route 53 is choosing between two or more resource record sets to respond to a DNS query, and you want Route 53 to base the choice in part on the status of a health check. Configuring health checks makes sense only in the following configurations:
--
--     * __Non-alias resource record sets__ : You're checking the health of a group of non-alias resource record sets that have the same routing policy, name, and type (such as multiple weighted records named www.example.com with a type of A) and you specify health check IDs for all the resource record sets.
-- If the health check status for a resource record set is healthy, Route 53 includes the record among the records that it responds to DNS queries with.
-- If the health check status for a resource record set is unhealthy, Route 53 stops responding to DNS queries using the value for that resource record set.
-- If the health check status for all resource record sets in the group is unhealthy, Route 53 considers all resource record sets in the group healthy and responds to DNS queries accordingly.
--
--
--     * __Alias resource record sets__ : You specify the following settings:
--
--     * You set @EvaluateTargetHealth@ to true for an alias resource record set in a group of resource record sets that have the same routing policy, name, and type (such as multiple weighted records named www.example.com with a type of A).
--
--
--     * You configure the alias resource record set to route traffic to a non-alias resource record set in the same hosted zone.
--
--
--     * You specify a health check ID for the non-alias resource record set.
--
--
-- If the health check status is healthy, Route 53 considers the alias resource record set to be healthy and includes the alias record among the records that it responds to DNS queries with.
-- If the health check status is unhealthy, Route 53 stops responding to DNS queries using the alias resource record set.
--
--
-- __Geolocation Routing__
-- For geolocation resource record sets, if an endpoint is unhealthy, Route 53 looks for a resource record set for the larger, associated geographic region. For example, suppose you have resource record sets for a state in the United States, for the entire United States, for North America, and a resource record set that has @*@ for @CountryCode@ is @*@ , which applies to all locations. If the endpoint for the state resource record set is unhealthy, Route 53 checks for healthy resource record sets in the following order until it finds a resource record set for which the endpoint is healthy:
--
--     * The United States
--
--
--     * North America
--
--
--     * The default resource record set
--
--
-- __Specifying the Health Check Endpoint by Domain Name__
-- If your health checks specify the endpoint only by domain name, we recommend that you create a separate health check for each endpoint. For example, create a health check for each @HTTP@ server that is serving content for @www.example.com@ . For the value of @FullyQualifiedDomainName@ , specify the domain name of the server (such as @us-east-2-www.example.com@ ), not the name of the resource record sets (@www.example.com@ ).
-- /Important:/ Health check results will be unpredictable if you do the following:
--
--     * Create a health check that has the same value for @FullyQualifiedDomainName@ as the name of a resource record set.
--
--
--     * Associate that health check with the resource record set.
--
--
--
-- /Note:/ Consider using 'healthCheckId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rrsHealthCheckId :: Lens.Lens' ResourceRecordSet (Lude.Maybe Lude.Text)
rrsHealthCheckId = Lens.lens (healthCheckId :: ResourceRecordSet -> Lude.Maybe Lude.Text) (\s a -> s {healthCheckId = a} :: ResourceRecordSet)
{-# DEPRECATED rrsHealthCheckId "Use generic-lens or generic-optics with 'healthCheckId' instead." #-}

-- | /Latency-based resource record sets only:/ The Amazon EC2 Region where you created the resource that this resource record set refers to. The resource typically is an AWS resource, such as an EC2 instance or an ELB load balancer, and is referred to by an IP address or a DNS domain name, depending on the record type.
--
-- When Amazon Route 53 receives a DNS query for a domain name and type for which you have created latency resource record sets, Route 53 selects the latency resource record set that has the lowest latency between the end user and the associated Amazon EC2 Region. Route 53 then returns the value that is associated with the selected resource record set.
-- Note the following:
--
--     * You can only specify one @ResourceRecord@ per latency resource record set.
--
--
--     * You can only create one latency resource record set for each Amazon EC2 Region.
--
--
--     * You aren't required to create latency resource record sets for all Amazon EC2 Regions. Route 53 will choose the region with the best latency from among the regions that you create latency resource record sets for.
--
--
--     * You can't create non-latency resource record sets that have the same values for the @Name@ and @Type@ elements as latency resource record sets.
--
--
--
-- /Note:/ Consider using 'region' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rrsRegion :: Lens.Lens' ResourceRecordSet (Lude.Maybe Region)
rrsRegion = Lens.lens (region :: ResourceRecordSet -> Lude.Maybe Region) (\s a -> s {region = a} :: ResourceRecordSet)
{-# DEPRECATED rrsRegion "Use generic-lens or generic-optics with 'region' instead." #-}

-- | The DNS record type. For information about different record types and how data is encoded for them, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/ResourceRecordTypes.html Supported DNS Resource Record Types> in the /Amazon Route 53 Developer Guide/ .
--
-- Valid values for basic resource record sets: @A@ | @AAAA@ | @CAA@ | @CNAME@ | @MX@ | @NAPTR@ | @NS@ | @PTR@ | @SOA@ | @SPF@ | @SRV@ | @TXT@
-- Values for weighted, latency, geolocation, and failover resource record sets: @A@ | @AAAA@ | @CAA@ | @CNAME@ | @MX@ | @NAPTR@ | @PTR@ | @SPF@ | @SRV@ | @TXT@ . When creating a group of weighted, latency, geolocation, or failover resource record sets, specify the same value for all of the resource record sets in the group.
-- Valid values for multivalue answer resource record sets: @A@ | @AAAA@ | @MX@ | @NAPTR@ | @PTR@ | @SPF@ | @SRV@ | @TXT@
-- Values for alias resource record sets:
--
--     * __Amazon API Gateway custom regional APIs and edge-optimized APIs:__ @A@
--
--
--     * __CloudFront distributions:__ @A@
-- If IPv6 is enabled for the distribution, create two resource record sets to route traffic to your distribution, one with a value of @A@ and one with a value of @AAAA@ .
--
--
--     * __Amazon API Gateway environment that has a regionalized subdomain__ : @A@
--
--
--     * __ELB load balancers:__ @A@ | @AAAA@
--
--
--     * __Amazon S3 buckets:__ @A@
--
--
--     * __Amazon Virtual Private Cloud interface VPC endpoints__ @A@
--
--
--     * __Another resource record set in this hosted zone:__ Specify the type of the resource record set that you're creating the alias for. All values are supported except @NS@ and @SOA@ .
--
--
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rrsType :: Lens.Lens' ResourceRecordSet RecordType
rrsType = Lens.lens (type' :: ResourceRecordSet -> RecordType) (\s a -> s {type' = a} :: ResourceRecordSet)
{-# DEPRECATED rrsType "Use generic-lens or generic-optics with 'type'' instead." #-}

-- | /Geolocation resource record sets only:/ A complex type that lets you control how Amazon Route 53 responds to DNS queries based on the geographic origin of the query. For example, if you want all queries from Africa to be routed to a web server with an IP address of @192.0.2.111@ , create a resource record set with a @Type@ of @A@ and a @ContinentCode@ of @AF@ .
--
-- If you create separate resource record sets for overlapping geographic regions (for example, one resource record set for a continent and one for a country on the same continent), priority goes to the smallest geographic region. This allows you to route most queries for a continent to one resource and to route queries for a country on that continent to a different resource.
-- You can't create two geolocation resource record sets that specify the same geographic location.
-- The value @*@ in the @CountryCode@ element matches all geographic locations that aren't specified in other geolocation resource record sets that have the same values for the @Name@ and @Type@ elements.
-- /Important:/ Geolocation works by mapping IP addresses to locations. However, some IP addresses aren't mapped to geographic locations, so even if you create geolocation resource record sets that cover all seven continents, Route 53 will receive some DNS queries from locations that it can't identify. We recommend that you create a resource record set for which the value of @CountryCode@ is @*@ . Two groups of queries are routed to the resource that you specify in this record: queries that come from locations for which you haven't created geolocation resource record sets and queries from IP addresses that aren't mapped to a location. If you don't create a @*@ resource record set, Route 53 returns a "no answer" response for queries from those locations.
-- You can't create non-geolocation resource record sets that have the same values for the @Name@ and @Type@ elements as geolocation resource record sets.
--
-- /Note:/ Consider using 'geoLocation' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rrsGeoLocation :: Lens.Lens' ResourceRecordSet (Lude.Maybe GeoLocation)
rrsGeoLocation = Lens.lens (geoLocation :: ResourceRecordSet -> Lude.Maybe GeoLocation) (\s a -> s {geoLocation = a} :: ResourceRecordSet)
{-# DEPRECATED rrsGeoLocation "Use generic-lens or generic-optics with 'geoLocation' instead." #-}

-- | /Multivalue answer resource record sets only/ : To route traffic approximately randomly to multiple resources, such as web servers, create one multivalue answer record for each resource and specify @true@ for @MultiValueAnswer@ . Note the following:
--
--
--     * If you associate a health check with a multivalue answer resource record set, Amazon Route 53 responds to DNS queries with the corresponding IP address only when the health check is healthy.
--
--
--     * If you don't associate a health check with a multivalue answer record, Route 53 always considers the record to be healthy.
--
--
--     * Route 53 responds to DNS queries with up to eight healthy records; if you have eight or fewer healthy records, Route 53 responds to all DNS queries with all the healthy records.
--
--
--     * If you have more than eight healthy records, Route 53 responds to different DNS resolvers with different combinations of healthy records.
--
--
--     * When all records are unhealthy, Route 53 responds to DNS queries with up to eight unhealthy records.
--
--
--     * If a resource becomes unavailable after a resolver caches a response, client software typically tries another of the IP addresses in the response.
--
--
-- You can't create multivalue answer alias records.
--
-- /Note:/ Consider using 'multiValueAnswer' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rrsMultiValueAnswer :: Lens.Lens' ResourceRecordSet (Lude.Maybe Lude.Bool)
rrsMultiValueAnswer = Lens.lens (multiValueAnswer :: ResourceRecordSet -> Lude.Maybe Lude.Bool) (\s a -> s {multiValueAnswer = a} :: ResourceRecordSet)
{-# DEPRECATED rrsMultiValueAnswer "Use generic-lens or generic-optics with 'multiValueAnswer' instead." #-}

instance Lude.FromXML ResourceRecordSet where
  parseXML x =
    ResourceRecordSet'
      Lude.<$> (x Lude..@? "TTL")
      Lude.<*> ( x Lude..@? "ResourceRecords" Lude..!@ Lude.mempty
                   Lude.>>= Lude.may (Lude.parseXMLNonEmpty "ResourceRecord")
               )
      Lude.<*> (x Lude..@? "AliasTarget")
      Lude.<*> (x Lude..@? "Weight")
      Lude.<*> (x Lude..@? "TrafficPolicyInstanceId")
      Lude.<*> (x Lude..@? "SetIdentifier")
      Lude.<*> (x Lude..@? "Failover")
      Lude.<*> (x Lude..@ "Name")
      Lude.<*> (x Lude..@? "HealthCheckId")
      Lude.<*> (x Lude..@? "Region")
      Lude.<*> (x Lude..@ "Type")
      Lude.<*> (x Lude..@? "GeoLocation")
      Lude.<*> (x Lude..@? "MultiValueAnswer")

instance Lude.ToXML ResourceRecordSet where
  toXML ResourceRecordSet' {..} =
    Lude.mconcat
      [ "TTL" Lude.@= tTL,
        "ResourceRecords"
          Lude.@= Lude.toXML
            (Lude.toXMLList "ResourceRecord" Lude.<$> resourceRecords),
        "AliasTarget" Lude.@= aliasTarget,
        "Weight" Lude.@= weight,
        "TrafficPolicyInstanceId" Lude.@= trafficPolicyInstanceId,
        "SetIdentifier" Lude.@= setIdentifier,
        "Failover" Lude.@= failover,
        "Name" Lude.@= name,
        "HealthCheckId" Lude.@= healthCheckId,
        "Region" Lude.@= region,
        "Type" Lude.@= type',
        "GeoLocation" Lude.@= geoLocation,
        "MultiValueAnswer" Lude.@= multiValueAnswer
      ]