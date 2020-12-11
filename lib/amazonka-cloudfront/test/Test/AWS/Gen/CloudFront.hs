{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.CloudFront
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.CloudFront where

import Data.Proxy
import Network.AWS.CloudFront
import Test.AWS.CloudFront.Internal
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDeleteOriginRequestPolicy $
--             mkDeleteOriginRequestPolicy
--
--         , requestUpdateOriginRequestPolicy $
--             mkUpdateOriginRequestPolicy
--
--         , requestDeleteStreamingDistribution $
--             mkDeleteStreamingDistribution
--
--         , requestUpdateStreamingDistribution $
--             mkUpdateStreamingDistribution
--
--         , requestListPublicKeys $
--             mkListPublicKeys
--
--         , requestGetFieldLevelEncryptionConfig $
--             mkGetFieldLevelEncryptionConfig
--
--         , requestListTagsForResource $
--             mkListTagsForResource
--
--         , requestCreatePublicKey $
--             mkCreatePublicKey
--
--         , requestGetPublicKeyConfig $
--             mkGetPublicKeyConfig
--
--         , requestCreateDistributionWithTags $
--             mkCreateDistributionWithTags
--
--         , requestCreateFieldLevelEncryptionConfig $
--             mkCreateFieldLevelEncryptionConfig
--
--         , requestDeleteCachePolicy $
--             mkDeleteCachePolicy
--
--         , requestUpdateCachePolicy $
--             mkUpdateCachePolicy
--
--         , requestGetFieldLevelEncryption $
--             mkGetFieldLevelEncryption
--
--         , requestListRealtimeLogConfigs $
--             mkListRealtimeLogConfigs
--
--         , requestGetPublicKey $
--             mkGetPublicKey
--
--         , requestDeleteRealtimeLogConfig $
--             mkDeleteRealtimeLogConfig
--
--         , requestUpdateRealtimeLogConfig $
--             mkUpdateRealtimeLogConfig
--
--         , requestListDistributionsByOriginRequestPolicyId $
--             mkListDistributionsByOriginRequestPolicyId
--
--         , requestDeleteFieldLevelEncryptionConfig $
--             mkDeleteFieldLevelEncryptionConfig
--
--         , requestUpdateFieldLevelEncryptionConfig $
--             mkUpdateFieldLevelEncryptionConfig
--
--         , requestGetKeyGroup $
--             mkGetKeyGroup
--
--         , requestCreateDistribution $
--             mkCreateDistribution
--
--         , requestGetFieldLevelEncryptionProfile $
--             mkGetFieldLevelEncryptionProfile
--
--         , requestDeleteMonitoringSubscription $
--             mkDeleteMonitoringSubscription
--
--         , requestGetDistributionConfig $
--             mkGetDistributionConfig
--
--         , requestCreateStreamingDistributionWithTags $
--             mkCreateStreamingDistributionWithTags
--
--         , requestDeleteFieldLevelEncryptionProfile $
--             mkDeleteFieldLevelEncryptionProfile
--
--         , requestUpdateFieldLevelEncryptionProfile $
--             mkUpdateFieldLevelEncryptionProfile
--
--         , requestListDistributionsByCachePolicyId $
--             mkListDistributionsByCachePolicyId
--
--         , requestCreateFieldLevelEncryptionProfile $
--             mkCreateFieldLevelEncryptionProfile
--
--         , requestGetKeyGroupConfig $
--             mkGetKeyGroupConfig
--
--         , requestGetDistribution $
--             mkGetDistribution
--
--         , requestGetFieldLevelEncryptionProfileConfig $
--             mkGetFieldLevelEncryptionProfileConfig
--
--         , requestCreateKeyGroup $
--             mkCreateKeyGroup
--
--         , requestUpdateCloudFrontOriginAccessIdentity $
--             mkUpdateCloudFrontOriginAccessIdentity
--
--         , requestDeleteCloudFrontOriginAccessIdentity $
--             mkDeleteCloudFrontOriginAccessIdentity
--
--         , requestListStreamingDistributions $
--             mkListStreamingDistributions
--
--         , requestDeletePublicKey $
--             mkDeletePublicKey
--
--         , requestUpdatePublicKey $
--             mkUpdatePublicKey
--
--         , requestGetRealtimeLogConfig $
--             mkGetRealtimeLogConfig
--
--         , requestGetStreamingDistributionConfig $
--             mkGetStreamingDistributionConfig
--
--         , requestGetCloudFrontOriginAccessIdentityConfig $
--             mkGetCloudFrontOriginAccessIdentityConfig
--
--         , requestCreateStreamingDistribution $
--             mkCreateStreamingDistribution
--
--         , requestCreateCloudFrontOriginAccessIdentity $
--             mkCreateCloudFrontOriginAccessIdentity
--
--         , requestListCloudFrontOriginAccessIdentities $
--             mkListCloudFrontOriginAccessIdentities
--
--         , requestGetInvalidation $
--             mkGetInvalidation
--
--         , requestGetCachePolicy $
--             mkGetCachePolicy
--
--         , requestCreateRealtimeLogConfig $
--             mkCreateRealtimeLogConfig
--
--         , requestListInvalidations $
--             mkListInvalidations
--
--         , requestCreateInvalidation $
--             mkCreateInvalidation
--
--         , requestGetCloudFrontOriginAccessIdentity $
--             mkGetCloudFrontOriginAccessIdentity
--
--         , requestListCachePolicies $
--             mkListCachePolicies
--
--         , requestCreateCachePolicy $
--             mkCreateCachePolicy
--
--         , requestGetCachePolicyConfig $
--             mkGetCachePolicyConfig
--
--         , requestListFieldLevelEncryptionConfigs $
--             mkListFieldLevelEncryptionConfigs
--
--         , requestListDistributionsByKeyGroup $
--             mkListDistributionsByKeyGroup
--
--         , requestTagResource $
--             mkTagResource
--
--         , requestGetStreamingDistribution $
--             mkGetStreamingDistribution
--
--         , requestUpdateDistribution $
--             mkUpdateDistribution
--
--         , requestDeleteDistribution $
--             mkDeleteDistribution
--
--         , requestGetOriginRequestPolicy $
--             mkGetOriginRequestPolicy
--
--         , requestUntagResource $
--             mkUntagResource
--
--         , requestCreateMonitoringSubscription $
--             mkCreateMonitoringSubscription
--
--         , requestListDistributionsByWebACLId $
--             mkListDistributionsByWebACLId
--
--         , requestListDistributions $
--             mkListDistributions
--
--         , requestListDistributionsByRealtimeLogConfig $
--             mkListDistributionsByRealtimeLogConfig
--
--         , requestCreateOriginRequestPolicy $
--             mkCreateOriginRequestPolicy
--
--         , requestListKeyGroups $
--             mkListKeyGroups
--
--         , requestListFieldLevelEncryptionProfiles $
--             mkListFieldLevelEncryptionProfiles
--
--         , requestGetMonitoringSubscription $
--             mkGetMonitoringSubscription
--
--         , requestUpdateKeyGroup $
--             mkUpdateKeyGroup
--
--         , requestDeleteKeyGroup $
--             mkDeleteKeyGroup
--
--         , requestListOriginRequestPolicies $
--             mkListOriginRequestPolicies
--
--         , requestGetOriginRequestPolicyConfig $
--             mkGetOriginRequestPolicyConfig
--
--           ]

--     , testGroup "response"
--         [ responseDeleteOriginRequestPolicy $
--             mkDeleteOriginRequestPolicyResponse
--
--         , responseUpdateOriginRequestPolicy $
--             mkUpdateOriginRequestPolicyResponse
--
--         , responseDeleteStreamingDistribution $
--             mkDeleteStreamingDistributionResponse
--
--         , responseUpdateStreamingDistribution $
--             mkUpdateStreamingDistributionResponse
--
--         , responseListPublicKeys $
--             mkListPublicKeysResponse
--
--         , responseGetFieldLevelEncryptionConfig $
--             mkGetFieldLevelEncryptionConfigResponse
--
--         , responseListTagsForResource $
--             mkListTagsForResourceResponse
--
--         , responseCreatePublicKey $
--             mkCreatePublicKeyResponse
--
--         , responseGetPublicKeyConfig $
--             mkGetPublicKeyConfigResponse
--
--         , responseCreateDistributionWithTags $
--             mkCreateDistributionWithTagsResponse
--
--         , responseCreateFieldLevelEncryptionConfig $
--             mkCreateFieldLevelEncryptionConfigResponse
--
--         , responseDeleteCachePolicy $
--             mkDeleteCachePolicyResponse
--
--         , responseUpdateCachePolicy $
--             mkUpdateCachePolicyResponse
--
--         , responseGetFieldLevelEncryption $
--             mkGetFieldLevelEncryptionResponse
--
--         , responseListRealtimeLogConfigs $
--             mkListRealtimeLogConfigsResponse
--
--         , responseGetPublicKey $
--             mkGetPublicKeyResponse
--
--         , responseDeleteRealtimeLogConfig $
--             mkDeleteRealtimeLogConfigResponse
--
--         , responseUpdateRealtimeLogConfig $
--             mkUpdateRealtimeLogConfigResponse
--
--         , responseListDistributionsByOriginRequestPolicyId $
--             mkListDistributionsByOriginRequestPolicyIdResponse
--
--         , responseDeleteFieldLevelEncryptionConfig $
--             mkDeleteFieldLevelEncryptionConfigResponse
--
--         , responseUpdateFieldLevelEncryptionConfig $
--             mkUpdateFieldLevelEncryptionConfigResponse
--
--         , responseGetKeyGroup $
--             mkGetKeyGroupResponse
--
--         , responseCreateDistribution $
--             mkCreateDistributionResponse
--
--         , responseGetFieldLevelEncryptionProfile $
--             mkGetFieldLevelEncryptionProfileResponse
--
--         , responseDeleteMonitoringSubscription $
--             mkDeleteMonitoringSubscriptionResponse
--
--         , responseGetDistributionConfig $
--             mkGetDistributionConfigResponse
--
--         , responseCreateStreamingDistributionWithTags $
--             mkCreateStreamingDistributionWithTagsResponse
--
--         , responseDeleteFieldLevelEncryptionProfile $
--             mkDeleteFieldLevelEncryptionProfileResponse
--
--         , responseUpdateFieldLevelEncryptionProfile $
--             mkUpdateFieldLevelEncryptionProfileResponse
--
--         , responseListDistributionsByCachePolicyId $
--             mkListDistributionsByCachePolicyIdResponse
--
--         , responseCreateFieldLevelEncryptionProfile $
--             mkCreateFieldLevelEncryptionProfileResponse
--
--         , responseGetKeyGroupConfig $
--             mkGetKeyGroupConfigResponse
--
--         , responseGetDistribution $
--             mkGetDistributionResponse
--
--         , responseGetFieldLevelEncryptionProfileConfig $
--             mkGetFieldLevelEncryptionProfileConfigResponse
--
--         , responseCreateKeyGroup $
--             mkCreateKeyGroupResponse
--
--         , responseUpdateCloudFrontOriginAccessIdentity $
--             mkUpdateCloudFrontOriginAccessIdentityResponse
--
--         , responseDeleteCloudFrontOriginAccessIdentity $
--             mkDeleteCloudFrontOriginAccessIdentityResponse
--
--         , responseListStreamingDistributions $
--             mkListStreamingDistributionsResponse
--
--         , responseDeletePublicKey $
--             mkDeletePublicKeyResponse
--
--         , responseUpdatePublicKey $
--             mkUpdatePublicKeyResponse
--
--         , responseGetRealtimeLogConfig $
--             mkGetRealtimeLogConfigResponse
--
--         , responseGetStreamingDistributionConfig $
--             mkGetStreamingDistributionConfigResponse
--
--         , responseGetCloudFrontOriginAccessIdentityConfig $
--             mkGetCloudFrontOriginAccessIdentityConfigResponse
--
--         , responseCreateStreamingDistribution $
--             mkCreateStreamingDistributionResponse
--
--         , responseCreateCloudFrontOriginAccessIdentity $
--             mkCreateCloudFrontOriginAccessIdentityResponse
--
--         , responseListCloudFrontOriginAccessIdentities $
--             mkListCloudFrontOriginAccessIdentitiesResponse
--
--         , responseGetInvalidation $
--             mkGetInvalidationResponse
--
--         , responseGetCachePolicy $
--             mkGetCachePolicyResponse
--
--         , responseCreateRealtimeLogConfig $
--             mkCreateRealtimeLogConfigResponse
--
--         , responseListInvalidations $
--             mkListInvalidationsResponse
--
--         , responseCreateInvalidation $
--             mkCreateInvalidationResponse
--
--         , responseGetCloudFrontOriginAccessIdentity $
--             mkGetCloudFrontOriginAccessIdentityResponse
--
--         , responseListCachePolicies $
--             mkListCachePoliciesResponse
--
--         , responseCreateCachePolicy $
--             mkCreateCachePolicyResponse
--
--         , responseGetCachePolicyConfig $
--             mkGetCachePolicyConfigResponse
--
--         , responseListFieldLevelEncryptionConfigs $
--             mkListFieldLevelEncryptionConfigsResponse
--
--         , responseListDistributionsByKeyGroup $
--             mkListDistributionsByKeyGroupResponse
--
--         , responseTagResource $
--             mkTagResourceResponse
--
--         , responseGetStreamingDistribution $
--             mkGetStreamingDistributionResponse
--
--         , responseUpdateDistribution $
--             mkUpdateDistributionResponse
--
--         , responseDeleteDistribution $
--             mkDeleteDistributionResponse
--
--         , responseGetOriginRequestPolicy $
--             mkGetOriginRequestPolicyResponse
--
--         , responseUntagResource $
--             mkUntagResourceResponse
--
--         , responseCreateMonitoringSubscription $
--             mkCreateMonitoringSubscriptionResponse
--
--         , responseListDistributionsByWebACLId $
--             mkListDistributionsByWebACLIdResponse
--
--         , responseListDistributions $
--             mkListDistributionsResponse
--
--         , responseListDistributionsByRealtimeLogConfig $
--             mkListDistributionsByRealtimeLogConfigResponse
--
--         , responseCreateOriginRequestPolicy $
--             mkCreateOriginRequestPolicyResponse
--
--         , responseListKeyGroups $
--             mkListKeyGroupsResponse
--
--         , responseListFieldLevelEncryptionProfiles $
--             mkListFieldLevelEncryptionProfilesResponse
--
--         , responseGetMonitoringSubscription $
--             mkGetMonitoringSubscriptionResponse
--
--         , responseUpdateKeyGroup $
--             mkUpdateKeyGroupResponse
--
--         , responseDeleteKeyGroup $
--             mkDeleteKeyGroupResponse
--
--         , responseListOriginRequestPolicies $
--             mkListOriginRequestPoliciesResponse
--
--         , responseGetOriginRequestPolicyConfig $
--             mkGetOriginRequestPolicyConfigResponse
--
--           ]
--     ]

-- Requests

requestDeleteOriginRequestPolicy :: DeleteOriginRequestPolicy -> TestTree
requestDeleteOriginRequestPolicy =
  req
    "DeleteOriginRequestPolicy"
    "fixture/DeleteOriginRequestPolicy.yaml"

requestUpdateOriginRequestPolicy :: UpdateOriginRequestPolicy -> TestTree
requestUpdateOriginRequestPolicy =
  req
    "UpdateOriginRequestPolicy"
    "fixture/UpdateOriginRequestPolicy.yaml"

requestDeleteStreamingDistribution :: DeleteStreamingDistribution -> TestTree
requestDeleteStreamingDistribution =
  req
    "DeleteStreamingDistribution"
    "fixture/DeleteStreamingDistribution.yaml"

requestUpdateStreamingDistribution :: UpdateStreamingDistribution -> TestTree
requestUpdateStreamingDistribution =
  req
    "UpdateStreamingDistribution"
    "fixture/UpdateStreamingDistribution.yaml"

requestListPublicKeys :: ListPublicKeys -> TestTree
requestListPublicKeys =
  req
    "ListPublicKeys"
    "fixture/ListPublicKeys.yaml"

requestGetFieldLevelEncryptionConfig :: GetFieldLevelEncryptionConfig -> TestTree
requestGetFieldLevelEncryptionConfig =
  req
    "GetFieldLevelEncryptionConfig"
    "fixture/GetFieldLevelEncryptionConfig.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestCreatePublicKey :: CreatePublicKey -> TestTree
requestCreatePublicKey =
  req
    "CreatePublicKey"
    "fixture/CreatePublicKey.yaml"

requestGetPublicKeyConfig :: GetPublicKeyConfig -> TestTree
requestGetPublicKeyConfig =
  req
    "GetPublicKeyConfig"
    "fixture/GetPublicKeyConfig.yaml"

requestCreateDistributionWithTags :: CreateDistributionWithTags -> TestTree
requestCreateDistributionWithTags =
  req
    "CreateDistributionWithTags"
    "fixture/CreateDistributionWithTags.yaml"

requestCreateFieldLevelEncryptionConfig :: CreateFieldLevelEncryptionConfig -> TestTree
requestCreateFieldLevelEncryptionConfig =
  req
    "CreateFieldLevelEncryptionConfig"
    "fixture/CreateFieldLevelEncryptionConfig.yaml"

requestDeleteCachePolicy :: DeleteCachePolicy -> TestTree
requestDeleteCachePolicy =
  req
    "DeleteCachePolicy"
    "fixture/DeleteCachePolicy.yaml"

requestUpdateCachePolicy :: UpdateCachePolicy -> TestTree
requestUpdateCachePolicy =
  req
    "UpdateCachePolicy"
    "fixture/UpdateCachePolicy.yaml"

requestGetFieldLevelEncryption :: GetFieldLevelEncryption -> TestTree
requestGetFieldLevelEncryption =
  req
    "GetFieldLevelEncryption"
    "fixture/GetFieldLevelEncryption.yaml"

requestListRealtimeLogConfigs :: ListRealtimeLogConfigs -> TestTree
requestListRealtimeLogConfigs =
  req
    "ListRealtimeLogConfigs"
    "fixture/ListRealtimeLogConfigs.yaml"

requestGetPublicKey :: GetPublicKey -> TestTree
requestGetPublicKey =
  req
    "GetPublicKey"
    "fixture/GetPublicKey.yaml"

requestDeleteRealtimeLogConfig :: DeleteRealtimeLogConfig -> TestTree
requestDeleteRealtimeLogConfig =
  req
    "DeleteRealtimeLogConfig"
    "fixture/DeleteRealtimeLogConfig.yaml"

requestUpdateRealtimeLogConfig :: UpdateRealtimeLogConfig -> TestTree
requestUpdateRealtimeLogConfig =
  req
    "UpdateRealtimeLogConfig"
    "fixture/UpdateRealtimeLogConfig.yaml"

requestListDistributionsByOriginRequestPolicyId :: ListDistributionsByOriginRequestPolicyId -> TestTree
requestListDistributionsByOriginRequestPolicyId =
  req
    "ListDistributionsByOriginRequestPolicyId"
    "fixture/ListDistributionsByOriginRequestPolicyId.yaml"

requestDeleteFieldLevelEncryptionConfig :: DeleteFieldLevelEncryptionConfig -> TestTree
requestDeleteFieldLevelEncryptionConfig =
  req
    "DeleteFieldLevelEncryptionConfig"
    "fixture/DeleteFieldLevelEncryptionConfig.yaml"

requestUpdateFieldLevelEncryptionConfig :: UpdateFieldLevelEncryptionConfig -> TestTree
requestUpdateFieldLevelEncryptionConfig =
  req
    "UpdateFieldLevelEncryptionConfig"
    "fixture/UpdateFieldLevelEncryptionConfig.yaml"

requestGetKeyGroup :: GetKeyGroup -> TestTree
requestGetKeyGroup =
  req
    "GetKeyGroup"
    "fixture/GetKeyGroup.yaml"

requestCreateDistribution :: CreateDistribution -> TestTree
requestCreateDistribution =
  req
    "CreateDistribution"
    "fixture/CreateDistribution.yaml"

requestGetFieldLevelEncryptionProfile :: GetFieldLevelEncryptionProfile -> TestTree
requestGetFieldLevelEncryptionProfile =
  req
    "GetFieldLevelEncryptionProfile"
    "fixture/GetFieldLevelEncryptionProfile.yaml"

requestDeleteMonitoringSubscription :: DeleteMonitoringSubscription -> TestTree
requestDeleteMonitoringSubscription =
  req
    "DeleteMonitoringSubscription"
    "fixture/DeleteMonitoringSubscription.yaml"

requestGetDistributionConfig :: GetDistributionConfig -> TestTree
requestGetDistributionConfig =
  req
    "GetDistributionConfig"
    "fixture/GetDistributionConfig.yaml"

requestCreateStreamingDistributionWithTags :: CreateStreamingDistributionWithTags -> TestTree
requestCreateStreamingDistributionWithTags =
  req
    "CreateStreamingDistributionWithTags"
    "fixture/CreateStreamingDistributionWithTags.yaml"

requestDeleteFieldLevelEncryptionProfile :: DeleteFieldLevelEncryptionProfile -> TestTree
requestDeleteFieldLevelEncryptionProfile =
  req
    "DeleteFieldLevelEncryptionProfile"
    "fixture/DeleteFieldLevelEncryptionProfile.yaml"

requestUpdateFieldLevelEncryptionProfile :: UpdateFieldLevelEncryptionProfile -> TestTree
requestUpdateFieldLevelEncryptionProfile =
  req
    "UpdateFieldLevelEncryptionProfile"
    "fixture/UpdateFieldLevelEncryptionProfile.yaml"

requestListDistributionsByCachePolicyId :: ListDistributionsByCachePolicyId -> TestTree
requestListDistributionsByCachePolicyId =
  req
    "ListDistributionsByCachePolicyId"
    "fixture/ListDistributionsByCachePolicyId.yaml"

requestCreateFieldLevelEncryptionProfile :: CreateFieldLevelEncryptionProfile -> TestTree
requestCreateFieldLevelEncryptionProfile =
  req
    "CreateFieldLevelEncryptionProfile"
    "fixture/CreateFieldLevelEncryptionProfile.yaml"

requestGetKeyGroupConfig :: GetKeyGroupConfig -> TestTree
requestGetKeyGroupConfig =
  req
    "GetKeyGroupConfig"
    "fixture/GetKeyGroupConfig.yaml"

requestGetDistribution :: GetDistribution -> TestTree
requestGetDistribution =
  req
    "GetDistribution"
    "fixture/GetDistribution.yaml"

requestGetFieldLevelEncryptionProfileConfig :: GetFieldLevelEncryptionProfileConfig -> TestTree
requestGetFieldLevelEncryptionProfileConfig =
  req
    "GetFieldLevelEncryptionProfileConfig"
    "fixture/GetFieldLevelEncryptionProfileConfig.yaml"

requestCreateKeyGroup :: CreateKeyGroup -> TestTree
requestCreateKeyGroup =
  req
    "CreateKeyGroup"
    "fixture/CreateKeyGroup.yaml"

requestUpdateCloudFrontOriginAccessIdentity :: UpdateCloudFrontOriginAccessIdentity -> TestTree
requestUpdateCloudFrontOriginAccessIdentity =
  req
    "UpdateCloudFrontOriginAccessIdentity"
    "fixture/UpdateCloudFrontOriginAccessIdentity.yaml"

requestDeleteCloudFrontOriginAccessIdentity :: DeleteCloudFrontOriginAccessIdentity -> TestTree
requestDeleteCloudFrontOriginAccessIdentity =
  req
    "DeleteCloudFrontOriginAccessIdentity"
    "fixture/DeleteCloudFrontOriginAccessIdentity.yaml"

requestListStreamingDistributions :: ListStreamingDistributions -> TestTree
requestListStreamingDistributions =
  req
    "ListStreamingDistributions"
    "fixture/ListStreamingDistributions.yaml"

requestDeletePublicKey :: DeletePublicKey -> TestTree
requestDeletePublicKey =
  req
    "DeletePublicKey"
    "fixture/DeletePublicKey.yaml"

requestUpdatePublicKey :: UpdatePublicKey -> TestTree
requestUpdatePublicKey =
  req
    "UpdatePublicKey"
    "fixture/UpdatePublicKey.yaml"

requestGetRealtimeLogConfig :: GetRealtimeLogConfig -> TestTree
requestGetRealtimeLogConfig =
  req
    "GetRealtimeLogConfig"
    "fixture/GetRealtimeLogConfig.yaml"

requestGetStreamingDistributionConfig :: GetStreamingDistributionConfig -> TestTree
requestGetStreamingDistributionConfig =
  req
    "GetStreamingDistributionConfig"
    "fixture/GetStreamingDistributionConfig.yaml"

requestGetCloudFrontOriginAccessIdentityConfig :: GetCloudFrontOriginAccessIdentityConfig -> TestTree
requestGetCloudFrontOriginAccessIdentityConfig =
  req
    "GetCloudFrontOriginAccessIdentityConfig"
    "fixture/GetCloudFrontOriginAccessIdentityConfig.yaml"

requestCreateStreamingDistribution :: CreateStreamingDistribution -> TestTree
requestCreateStreamingDistribution =
  req
    "CreateStreamingDistribution"
    "fixture/CreateStreamingDistribution.yaml"

requestCreateCloudFrontOriginAccessIdentity :: CreateCloudFrontOriginAccessIdentity -> TestTree
requestCreateCloudFrontOriginAccessIdentity =
  req
    "CreateCloudFrontOriginAccessIdentity"
    "fixture/CreateCloudFrontOriginAccessIdentity.yaml"

requestListCloudFrontOriginAccessIdentities :: ListCloudFrontOriginAccessIdentities -> TestTree
requestListCloudFrontOriginAccessIdentities =
  req
    "ListCloudFrontOriginAccessIdentities"
    "fixture/ListCloudFrontOriginAccessIdentities.yaml"

requestGetInvalidation :: GetInvalidation -> TestTree
requestGetInvalidation =
  req
    "GetInvalidation"
    "fixture/GetInvalidation.yaml"

requestGetCachePolicy :: GetCachePolicy -> TestTree
requestGetCachePolicy =
  req
    "GetCachePolicy"
    "fixture/GetCachePolicy.yaml"

requestCreateRealtimeLogConfig :: CreateRealtimeLogConfig -> TestTree
requestCreateRealtimeLogConfig =
  req
    "CreateRealtimeLogConfig"
    "fixture/CreateRealtimeLogConfig.yaml"

requestListInvalidations :: ListInvalidations -> TestTree
requestListInvalidations =
  req
    "ListInvalidations"
    "fixture/ListInvalidations.yaml"

requestCreateInvalidation :: CreateInvalidation -> TestTree
requestCreateInvalidation =
  req
    "CreateInvalidation"
    "fixture/CreateInvalidation.yaml"

requestGetCloudFrontOriginAccessIdentity :: GetCloudFrontOriginAccessIdentity -> TestTree
requestGetCloudFrontOriginAccessIdentity =
  req
    "GetCloudFrontOriginAccessIdentity"
    "fixture/GetCloudFrontOriginAccessIdentity.yaml"

requestListCachePolicies :: ListCachePolicies -> TestTree
requestListCachePolicies =
  req
    "ListCachePolicies"
    "fixture/ListCachePolicies.yaml"

requestCreateCachePolicy :: CreateCachePolicy -> TestTree
requestCreateCachePolicy =
  req
    "CreateCachePolicy"
    "fixture/CreateCachePolicy.yaml"

requestGetCachePolicyConfig :: GetCachePolicyConfig -> TestTree
requestGetCachePolicyConfig =
  req
    "GetCachePolicyConfig"
    "fixture/GetCachePolicyConfig.yaml"

requestListFieldLevelEncryptionConfigs :: ListFieldLevelEncryptionConfigs -> TestTree
requestListFieldLevelEncryptionConfigs =
  req
    "ListFieldLevelEncryptionConfigs"
    "fixture/ListFieldLevelEncryptionConfigs.yaml"

requestListDistributionsByKeyGroup :: ListDistributionsByKeyGroup -> TestTree
requestListDistributionsByKeyGroup =
  req
    "ListDistributionsByKeyGroup"
    "fixture/ListDistributionsByKeyGroup.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestGetStreamingDistribution :: GetStreamingDistribution -> TestTree
requestGetStreamingDistribution =
  req
    "GetStreamingDistribution"
    "fixture/GetStreamingDistribution.yaml"

requestUpdateDistribution :: UpdateDistribution -> TestTree
requestUpdateDistribution =
  req
    "UpdateDistribution"
    "fixture/UpdateDistribution.yaml"

requestDeleteDistribution :: DeleteDistribution -> TestTree
requestDeleteDistribution =
  req
    "DeleteDistribution"
    "fixture/DeleteDistribution.yaml"

requestGetOriginRequestPolicy :: GetOriginRequestPolicy -> TestTree
requestGetOriginRequestPolicy =
  req
    "GetOriginRequestPolicy"
    "fixture/GetOriginRequestPolicy.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestCreateMonitoringSubscription :: CreateMonitoringSubscription -> TestTree
requestCreateMonitoringSubscription =
  req
    "CreateMonitoringSubscription"
    "fixture/CreateMonitoringSubscription.yaml"

requestListDistributionsByWebACLId :: ListDistributionsByWebACLId -> TestTree
requestListDistributionsByWebACLId =
  req
    "ListDistributionsByWebACLId"
    "fixture/ListDistributionsByWebACLId.yaml"

requestListDistributions :: ListDistributions -> TestTree
requestListDistributions =
  req
    "ListDistributions"
    "fixture/ListDistributions.yaml"

requestListDistributionsByRealtimeLogConfig :: ListDistributionsByRealtimeLogConfig -> TestTree
requestListDistributionsByRealtimeLogConfig =
  req
    "ListDistributionsByRealtimeLogConfig"
    "fixture/ListDistributionsByRealtimeLogConfig.yaml"

requestCreateOriginRequestPolicy :: CreateOriginRequestPolicy -> TestTree
requestCreateOriginRequestPolicy =
  req
    "CreateOriginRequestPolicy"
    "fixture/CreateOriginRequestPolicy.yaml"

requestListKeyGroups :: ListKeyGroups -> TestTree
requestListKeyGroups =
  req
    "ListKeyGroups"
    "fixture/ListKeyGroups.yaml"

requestListFieldLevelEncryptionProfiles :: ListFieldLevelEncryptionProfiles -> TestTree
requestListFieldLevelEncryptionProfiles =
  req
    "ListFieldLevelEncryptionProfiles"
    "fixture/ListFieldLevelEncryptionProfiles.yaml"

requestGetMonitoringSubscription :: GetMonitoringSubscription -> TestTree
requestGetMonitoringSubscription =
  req
    "GetMonitoringSubscription"
    "fixture/GetMonitoringSubscription.yaml"

requestUpdateKeyGroup :: UpdateKeyGroup -> TestTree
requestUpdateKeyGroup =
  req
    "UpdateKeyGroup"
    "fixture/UpdateKeyGroup.yaml"

requestDeleteKeyGroup :: DeleteKeyGroup -> TestTree
requestDeleteKeyGroup =
  req
    "DeleteKeyGroup"
    "fixture/DeleteKeyGroup.yaml"

requestListOriginRequestPolicies :: ListOriginRequestPolicies -> TestTree
requestListOriginRequestPolicies =
  req
    "ListOriginRequestPolicies"
    "fixture/ListOriginRequestPolicies.yaml"

requestGetOriginRequestPolicyConfig :: GetOriginRequestPolicyConfig -> TestTree
requestGetOriginRequestPolicyConfig =
  req
    "GetOriginRequestPolicyConfig"
    "fixture/GetOriginRequestPolicyConfig.yaml"

-- Responses

responseDeleteOriginRequestPolicy :: DeleteOriginRequestPolicyResponse -> TestTree
responseDeleteOriginRequestPolicy =
  res
    "DeleteOriginRequestPolicyResponse"
    "fixture/DeleteOriginRequestPolicyResponse.proto"
    cloudFrontService
    (Proxy :: Proxy DeleteOriginRequestPolicy)

responseUpdateOriginRequestPolicy :: UpdateOriginRequestPolicyResponse -> TestTree
responseUpdateOriginRequestPolicy =
  res
    "UpdateOriginRequestPolicyResponse"
    "fixture/UpdateOriginRequestPolicyResponse.proto"
    cloudFrontService
    (Proxy :: Proxy UpdateOriginRequestPolicy)

responseDeleteStreamingDistribution :: DeleteStreamingDistributionResponse -> TestTree
responseDeleteStreamingDistribution =
  res
    "DeleteStreamingDistributionResponse"
    "fixture/DeleteStreamingDistributionResponse.proto"
    cloudFrontService
    (Proxy :: Proxy DeleteStreamingDistribution)

responseUpdateStreamingDistribution :: UpdateStreamingDistributionResponse -> TestTree
responseUpdateStreamingDistribution =
  res
    "UpdateStreamingDistributionResponse"
    "fixture/UpdateStreamingDistributionResponse.proto"
    cloudFrontService
    (Proxy :: Proxy UpdateStreamingDistribution)

responseListPublicKeys :: ListPublicKeysResponse -> TestTree
responseListPublicKeys =
  res
    "ListPublicKeysResponse"
    "fixture/ListPublicKeysResponse.proto"
    cloudFrontService
    (Proxy :: Proxy ListPublicKeys)

responseGetFieldLevelEncryptionConfig :: GetFieldLevelEncryptionConfigResponse -> TestTree
responseGetFieldLevelEncryptionConfig =
  res
    "GetFieldLevelEncryptionConfigResponse"
    "fixture/GetFieldLevelEncryptionConfigResponse.proto"
    cloudFrontService
    (Proxy :: Proxy GetFieldLevelEncryptionConfig)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    cloudFrontService
    (Proxy :: Proxy ListTagsForResource)

responseCreatePublicKey :: CreatePublicKeyResponse -> TestTree
responseCreatePublicKey =
  res
    "CreatePublicKeyResponse"
    "fixture/CreatePublicKeyResponse.proto"
    cloudFrontService
    (Proxy :: Proxy CreatePublicKey)

responseGetPublicKeyConfig :: GetPublicKeyConfigResponse -> TestTree
responseGetPublicKeyConfig =
  res
    "GetPublicKeyConfigResponse"
    "fixture/GetPublicKeyConfigResponse.proto"
    cloudFrontService
    (Proxy :: Proxy GetPublicKeyConfig)

responseCreateDistributionWithTags :: CreateDistributionWithTagsResponse -> TestTree
responseCreateDistributionWithTags =
  res
    "CreateDistributionWithTagsResponse"
    "fixture/CreateDistributionWithTagsResponse.proto"
    cloudFrontService
    (Proxy :: Proxy CreateDistributionWithTags)

responseCreateFieldLevelEncryptionConfig :: CreateFieldLevelEncryptionConfigResponse -> TestTree
responseCreateFieldLevelEncryptionConfig =
  res
    "CreateFieldLevelEncryptionConfigResponse"
    "fixture/CreateFieldLevelEncryptionConfigResponse.proto"
    cloudFrontService
    (Proxy :: Proxy CreateFieldLevelEncryptionConfig)

responseDeleteCachePolicy :: DeleteCachePolicyResponse -> TestTree
responseDeleteCachePolicy =
  res
    "DeleteCachePolicyResponse"
    "fixture/DeleteCachePolicyResponse.proto"
    cloudFrontService
    (Proxy :: Proxy DeleteCachePolicy)

responseUpdateCachePolicy :: UpdateCachePolicyResponse -> TestTree
responseUpdateCachePolicy =
  res
    "UpdateCachePolicyResponse"
    "fixture/UpdateCachePolicyResponse.proto"
    cloudFrontService
    (Proxy :: Proxy UpdateCachePolicy)

responseGetFieldLevelEncryption :: GetFieldLevelEncryptionResponse -> TestTree
responseGetFieldLevelEncryption =
  res
    "GetFieldLevelEncryptionResponse"
    "fixture/GetFieldLevelEncryptionResponse.proto"
    cloudFrontService
    (Proxy :: Proxy GetFieldLevelEncryption)

responseListRealtimeLogConfigs :: ListRealtimeLogConfigsResponse -> TestTree
responseListRealtimeLogConfigs =
  res
    "ListRealtimeLogConfigsResponse"
    "fixture/ListRealtimeLogConfigsResponse.proto"
    cloudFrontService
    (Proxy :: Proxy ListRealtimeLogConfigs)

responseGetPublicKey :: GetPublicKeyResponse -> TestTree
responseGetPublicKey =
  res
    "GetPublicKeyResponse"
    "fixture/GetPublicKeyResponse.proto"
    cloudFrontService
    (Proxy :: Proxy GetPublicKey)

responseDeleteRealtimeLogConfig :: DeleteRealtimeLogConfigResponse -> TestTree
responseDeleteRealtimeLogConfig =
  res
    "DeleteRealtimeLogConfigResponse"
    "fixture/DeleteRealtimeLogConfigResponse.proto"
    cloudFrontService
    (Proxy :: Proxy DeleteRealtimeLogConfig)

responseUpdateRealtimeLogConfig :: UpdateRealtimeLogConfigResponse -> TestTree
responseUpdateRealtimeLogConfig =
  res
    "UpdateRealtimeLogConfigResponse"
    "fixture/UpdateRealtimeLogConfigResponse.proto"
    cloudFrontService
    (Proxy :: Proxy UpdateRealtimeLogConfig)

responseListDistributionsByOriginRequestPolicyId :: ListDistributionsByOriginRequestPolicyIdResponse -> TestTree
responseListDistributionsByOriginRequestPolicyId =
  res
    "ListDistributionsByOriginRequestPolicyIdResponse"
    "fixture/ListDistributionsByOriginRequestPolicyIdResponse.proto"
    cloudFrontService
    (Proxy :: Proxy ListDistributionsByOriginRequestPolicyId)

responseDeleteFieldLevelEncryptionConfig :: DeleteFieldLevelEncryptionConfigResponse -> TestTree
responseDeleteFieldLevelEncryptionConfig =
  res
    "DeleteFieldLevelEncryptionConfigResponse"
    "fixture/DeleteFieldLevelEncryptionConfigResponse.proto"
    cloudFrontService
    (Proxy :: Proxy DeleteFieldLevelEncryptionConfig)

responseUpdateFieldLevelEncryptionConfig :: UpdateFieldLevelEncryptionConfigResponse -> TestTree
responseUpdateFieldLevelEncryptionConfig =
  res
    "UpdateFieldLevelEncryptionConfigResponse"
    "fixture/UpdateFieldLevelEncryptionConfigResponse.proto"
    cloudFrontService
    (Proxy :: Proxy UpdateFieldLevelEncryptionConfig)

responseGetKeyGroup :: GetKeyGroupResponse -> TestTree
responseGetKeyGroup =
  res
    "GetKeyGroupResponse"
    "fixture/GetKeyGroupResponse.proto"
    cloudFrontService
    (Proxy :: Proxy GetKeyGroup)

responseCreateDistribution :: CreateDistributionResponse -> TestTree
responseCreateDistribution =
  res
    "CreateDistributionResponse"
    "fixture/CreateDistributionResponse.proto"
    cloudFrontService
    (Proxy :: Proxy CreateDistribution)

responseGetFieldLevelEncryptionProfile :: GetFieldLevelEncryptionProfileResponse -> TestTree
responseGetFieldLevelEncryptionProfile =
  res
    "GetFieldLevelEncryptionProfileResponse"
    "fixture/GetFieldLevelEncryptionProfileResponse.proto"
    cloudFrontService
    (Proxy :: Proxy GetFieldLevelEncryptionProfile)

responseDeleteMonitoringSubscription :: DeleteMonitoringSubscriptionResponse -> TestTree
responseDeleteMonitoringSubscription =
  res
    "DeleteMonitoringSubscriptionResponse"
    "fixture/DeleteMonitoringSubscriptionResponse.proto"
    cloudFrontService
    (Proxy :: Proxy DeleteMonitoringSubscription)

responseGetDistributionConfig :: GetDistributionConfigResponse -> TestTree
responseGetDistributionConfig =
  res
    "GetDistributionConfigResponse"
    "fixture/GetDistributionConfigResponse.proto"
    cloudFrontService
    (Proxy :: Proxy GetDistributionConfig)

responseCreateStreamingDistributionWithTags :: CreateStreamingDistributionWithTagsResponse -> TestTree
responseCreateStreamingDistributionWithTags =
  res
    "CreateStreamingDistributionWithTagsResponse"
    "fixture/CreateStreamingDistributionWithTagsResponse.proto"
    cloudFrontService
    (Proxy :: Proxy CreateStreamingDistributionWithTags)

responseDeleteFieldLevelEncryptionProfile :: DeleteFieldLevelEncryptionProfileResponse -> TestTree
responseDeleteFieldLevelEncryptionProfile =
  res
    "DeleteFieldLevelEncryptionProfileResponse"
    "fixture/DeleteFieldLevelEncryptionProfileResponse.proto"
    cloudFrontService
    (Proxy :: Proxy DeleteFieldLevelEncryptionProfile)

responseUpdateFieldLevelEncryptionProfile :: UpdateFieldLevelEncryptionProfileResponse -> TestTree
responseUpdateFieldLevelEncryptionProfile =
  res
    "UpdateFieldLevelEncryptionProfileResponse"
    "fixture/UpdateFieldLevelEncryptionProfileResponse.proto"
    cloudFrontService
    (Proxy :: Proxy UpdateFieldLevelEncryptionProfile)

responseListDistributionsByCachePolicyId :: ListDistributionsByCachePolicyIdResponse -> TestTree
responseListDistributionsByCachePolicyId =
  res
    "ListDistributionsByCachePolicyIdResponse"
    "fixture/ListDistributionsByCachePolicyIdResponse.proto"
    cloudFrontService
    (Proxy :: Proxy ListDistributionsByCachePolicyId)

responseCreateFieldLevelEncryptionProfile :: CreateFieldLevelEncryptionProfileResponse -> TestTree
responseCreateFieldLevelEncryptionProfile =
  res
    "CreateFieldLevelEncryptionProfileResponse"
    "fixture/CreateFieldLevelEncryptionProfileResponse.proto"
    cloudFrontService
    (Proxy :: Proxy CreateFieldLevelEncryptionProfile)

responseGetKeyGroupConfig :: GetKeyGroupConfigResponse -> TestTree
responseGetKeyGroupConfig =
  res
    "GetKeyGroupConfigResponse"
    "fixture/GetKeyGroupConfigResponse.proto"
    cloudFrontService
    (Proxy :: Proxy GetKeyGroupConfig)

responseGetDistribution :: GetDistributionResponse -> TestTree
responseGetDistribution =
  res
    "GetDistributionResponse"
    "fixture/GetDistributionResponse.proto"
    cloudFrontService
    (Proxy :: Proxy GetDistribution)

responseGetFieldLevelEncryptionProfileConfig :: GetFieldLevelEncryptionProfileConfigResponse -> TestTree
responseGetFieldLevelEncryptionProfileConfig =
  res
    "GetFieldLevelEncryptionProfileConfigResponse"
    "fixture/GetFieldLevelEncryptionProfileConfigResponse.proto"
    cloudFrontService
    (Proxy :: Proxy GetFieldLevelEncryptionProfileConfig)

responseCreateKeyGroup :: CreateKeyGroupResponse -> TestTree
responseCreateKeyGroup =
  res
    "CreateKeyGroupResponse"
    "fixture/CreateKeyGroupResponse.proto"
    cloudFrontService
    (Proxy :: Proxy CreateKeyGroup)

responseUpdateCloudFrontOriginAccessIdentity :: UpdateCloudFrontOriginAccessIdentityResponse -> TestTree
responseUpdateCloudFrontOriginAccessIdentity =
  res
    "UpdateCloudFrontOriginAccessIdentityResponse"
    "fixture/UpdateCloudFrontOriginAccessIdentityResponse.proto"
    cloudFrontService
    (Proxy :: Proxy UpdateCloudFrontOriginAccessIdentity)

responseDeleteCloudFrontOriginAccessIdentity :: DeleteCloudFrontOriginAccessIdentityResponse -> TestTree
responseDeleteCloudFrontOriginAccessIdentity =
  res
    "DeleteCloudFrontOriginAccessIdentityResponse"
    "fixture/DeleteCloudFrontOriginAccessIdentityResponse.proto"
    cloudFrontService
    (Proxy :: Proxy DeleteCloudFrontOriginAccessIdentity)

responseListStreamingDistributions :: ListStreamingDistributionsResponse -> TestTree
responseListStreamingDistributions =
  res
    "ListStreamingDistributionsResponse"
    "fixture/ListStreamingDistributionsResponse.proto"
    cloudFrontService
    (Proxy :: Proxy ListStreamingDistributions)

responseDeletePublicKey :: DeletePublicKeyResponse -> TestTree
responseDeletePublicKey =
  res
    "DeletePublicKeyResponse"
    "fixture/DeletePublicKeyResponse.proto"
    cloudFrontService
    (Proxy :: Proxy DeletePublicKey)

responseUpdatePublicKey :: UpdatePublicKeyResponse -> TestTree
responseUpdatePublicKey =
  res
    "UpdatePublicKeyResponse"
    "fixture/UpdatePublicKeyResponse.proto"
    cloudFrontService
    (Proxy :: Proxy UpdatePublicKey)

responseGetRealtimeLogConfig :: GetRealtimeLogConfigResponse -> TestTree
responseGetRealtimeLogConfig =
  res
    "GetRealtimeLogConfigResponse"
    "fixture/GetRealtimeLogConfigResponse.proto"
    cloudFrontService
    (Proxy :: Proxy GetRealtimeLogConfig)

responseGetStreamingDistributionConfig :: GetStreamingDistributionConfigResponse -> TestTree
responseGetStreamingDistributionConfig =
  res
    "GetStreamingDistributionConfigResponse"
    "fixture/GetStreamingDistributionConfigResponse.proto"
    cloudFrontService
    (Proxy :: Proxy GetStreamingDistributionConfig)

responseGetCloudFrontOriginAccessIdentityConfig :: GetCloudFrontOriginAccessIdentityConfigResponse -> TestTree
responseGetCloudFrontOriginAccessIdentityConfig =
  res
    "GetCloudFrontOriginAccessIdentityConfigResponse"
    "fixture/GetCloudFrontOriginAccessIdentityConfigResponse.proto"
    cloudFrontService
    (Proxy :: Proxy GetCloudFrontOriginAccessIdentityConfig)

responseCreateStreamingDistribution :: CreateStreamingDistributionResponse -> TestTree
responseCreateStreamingDistribution =
  res
    "CreateStreamingDistributionResponse"
    "fixture/CreateStreamingDistributionResponse.proto"
    cloudFrontService
    (Proxy :: Proxy CreateStreamingDistribution)

responseCreateCloudFrontOriginAccessIdentity :: CreateCloudFrontOriginAccessIdentityResponse -> TestTree
responseCreateCloudFrontOriginAccessIdentity =
  res
    "CreateCloudFrontOriginAccessIdentityResponse"
    "fixture/CreateCloudFrontOriginAccessIdentityResponse.proto"
    cloudFrontService
    (Proxy :: Proxy CreateCloudFrontOriginAccessIdentity)

responseListCloudFrontOriginAccessIdentities :: ListCloudFrontOriginAccessIdentitiesResponse -> TestTree
responseListCloudFrontOriginAccessIdentities =
  res
    "ListCloudFrontOriginAccessIdentitiesResponse"
    "fixture/ListCloudFrontOriginAccessIdentitiesResponse.proto"
    cloudFrontService
    (Proxy :: Proxy ListCloudFrontOriginAccessIdentities)

responseGetInvalidation :: GetInvalidationResponse -> TestTree
responseGetInvalidation =
  res
    "GetInvalidationResponse"
    "fixture/GetInvalidationResponse.proto"
    cloudFrontService
    (Proxy :: Proxy GetInvalidation)

responseGetCachePolicy :: GetCachePolicyResponse -> TestTree
responseGetCachePolicy =
  res
    "GetCachePolicyResponse"
    "fixture/GetCachePolicyResponse.proto"
    cloudFrontService
    (Proxy :: Proxy GetCachePolicy)

responseCreateRealtimeLogConfig :: CreateRealtimeLogConfigResponse -> TestTree
responseCreateRealtimeLogConfig =
  res
    "CreateRealtimeLogConfigResponse"
    "fixture/CreateRealtimeLogConfigResponse.proto"
    cloudFrontService
    (Proxy :: Proxy CreateRealtimeLogConfig)

responseListInvalidations :: ListInvalidationsResponse -> TestTree
responseListInvalidations =
  res
    "ListInvalidationsResponse"
    "fixture/ListInvalidationsResponse.proto"
    cloudFrontService
    (Proxy :: Proxy ListInvalidations)

responseCreateInvalidation :: CreateInvalidationResponse -> TestTree
responseCreateInvalidation =
  res
    "CreateInvalidationResponse"
    "fixture/CreateInvalidationResponse.proto"
    cloudFrontService
    (Proxy :: Proxy CreateInvalidation)

responseGetCloudFrontOriginAccessIdentity :: GetCloudFrontOriginAccessIdentityResponse -> TestTree
responseGetCloudFrontOriginAccessIdentity =
  res
    "GetCloudFrontOriginAccessIdentityResponse"
    "fixture/GetCloudFrontOriginAccessIdentityResponse.proto"
    cloudFrontService
    (Proxy :: Proxy GetCloudFrontOriginAccessIdentity)

responseListCachePolicies :: ListCachePoliciesResponse -> TestTree
responseListCachePolicies =
  res
    "ListCachePoliciesResponse"
    "fixture/ListCachePoliciesResponse.proto"
    cloudFrontService
    (Proxy :: Proxy ListCachePolicies)

responseCreateCachePolicy :: CreateCachePolicyResponse -> TestTree
responseCreateCachePolicy =
  res
    "CreateCachePolicyResponse"
    "fixture/CreateCachePolicyResponse.proto"
    cloudFrontService
    (Proxy :: Proxy CreateCachePolicy)

responseGetCachePolicyConfig :: GetCachePolicyConfigResponse -> TestTree
responseGetCachePolicyConfig =
  res
    "GetCachePolicyConfigResponse"
    "fixture/GetCachePolicyConfigResponse.proto"
    cloudFrontService
    (Proxy :: Proxy GetCachePolicyConfig)

responseListFieldLevelEncryptionConfigs :: ListFieldLevelEncryptionConfigsResponse -> TestTree
responseListFieldLevelEncryptionConfigs =
  res
    "ListFieldLevelEncryptionConfigsResponse"
    "fixture/ListFieldLevelEncryptionConfigsResponse.proto"
    cloudFrontService
    (Proxy :: Proxy ListFieldLevelEncryptionConfigs)

responseListDistributionsByKeyGroup :: ListDistributionsByKeyGroupResponse -> TestTree
responseListDistributionsByKeyGroup =
  res
    "ListDistributionsByKeyGroupResponse"
    "fixture/ListDistributionsByKeyGroupResponse.proto"
    cloudFrontService
    (Proxy :: Proxy ListDistributionsByKeyGroup)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    cloudFrontService
    (Proxy :: Proxy TagResource)

responseGetStreamingDistribution :: GetStreamingDistributionResponse -> TestTree
responseGetStreamingDistribution =
  res
    "GetStreamingDistributionResponse"
    "fixture/GetStreamingDistributionResponse.proto"
    cloudFrontService
    (Proxy :: Proxy GetStreamingDistribution)

responseUpdateDistribution :: UpdateDistributionResponse -> TestTree
responseUpdateDistribution =
  res
    "UpdateDistributionResponse"
    "fixture/UpdateDistributionResponse.proto"
    cloudFrontService
    (Proxy :: Proxy UpdateDistribution)

responseDeleteDistribution :: DeleteDistributionResponse -> TestTree
responseDeleteDistribution =
  res
    "DeleteDistributionResponse"
    "fixture/DeleteDistributionResponse.proto"
    cloudFrontService
    (Proxy :: Proxy DeleteDistribution)

responseGetOriginRequestPolicy :: GetOriginRequestPolicyResponse -> TestTree
responseGetOriginRequestPolicy =
  res
    "GetOriginRequestPolicyResponse"
    "fixture/GetOriginRequestPolicyResponse.proto"
    cloudFrontService
    (Proxy :: Proxy GetOriginRequestPolicy)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    cloudFrontService
    (Proxy :: Proxy UntagResource)

responseCreateMonitoringSubscription :: CreateMonitoringSubscriptionResponse -> TestTree
responseCreateMonitoringSubscription =
  res
    "CreateMonitoringSubscriptionResponse"
    "fixture/CreateMonitoringSubscriptionResponse.proto"
    cloudFrontService
    (Proxy :: Proxy CreateMonitoringSubscription)

responseListDistributionsByWebACLId :: ListDistributionsByWebACLIdResponse -> TestTree
responseListDistributionsByWebACLId =
  res
    "ListDistributionsByWebACLIdResponse"
    "fixture/ListDistributionsByWebACLIdResponse.proto"
    cloudFrontService
    (Proxy :: Proxy ListDistributionsByWebACLId)

responseListDistributions :: ListDistributionsResponse -> TestTree
responseListDistributions =
  res
    "ListDistributionsResponse"
    "fixture/ListDistributionsResponse.proto"
    cloudFrontService
    (Proxy :: Proxy ListDistributions)

responseListDistributionsByRealtimeLogConfig :: ListDistributionsByRealtimeLogConfigResponse -> TestTree
responseListDistributionsByRealtimeLogConfig =
  res
    "ListDistributionsByRealtimeLogConfigResponse"
    "fixture/ListDistributionsByRealtimeLogConfigResponse.proto"
    cloudFrontService
    (Proxy :: Proxy ListDistributionsByRealtimeLogConfig)

responseCreateOriginRequestPolicy :: CreateOriginRequestPolicyResponse -> TestTree
responseCreateOriginRequestPolicy =
  res
    "CreateOriginRequestPolicyResponse"
    "fixture/CreateOriginRequestPolicyResponse.proto"
    cloudFrontService
    (Proxy :: Proxy CreateOriginRequestPolicy)

responseListKeyGroups :: ListKeyGroupsResponse -> TestTree
responseListKeyGroups =
  res
    "ListKeyGroupsResponse"
    "fixture/ListKeyGroupsResponse.proto"
    cloudFrontService
    (Proxy :: Proxy ListKeyGroups)

responseListFieldLevelEncryptionProfiles :: ListFieldLevelEncryptionProfilesResponse -> TestTree
responseListFieldLevelEncryptionProfiles =
  res
    "ListFieldLevelEncryptionProfilesResponse"
    "fixture/ListFieldLevelEncryptionProfilesResponse.proto"
    cloudFrontService
    (Proxy :: Proxy ListFieldLevelEncryptionProfiles)

responseGetMonitoringSubscription :: GetMonitoringSubscriptionResponse -> TestTree
responseGetMonitoringSubscription =
  res
    "GetMonitoringSubscriptionResponse"
    "fixture/GetMonitoringSubscriptionResponse.proto"
    cloudFrontService
    (Proxy :: Proxy GetMonitoringSubscription)

responseUpdateKeyGroup :: UpdateKeyGroupResponse -> TestTree
responseUpdateKeyGroup =
  res
    "UpdateKeyGroupResponse"
    "fixture/UpdateKeyGroupResponse.proto"
    cloudFrontService
    (Proxy :: Proxy UpdateKeyGroup)

responseDeleteKeyGroup :: DeleteKeyGroupResponse -> TestTree
responseDeleteKeyGroup =
  res
    "DeleteKeyGroupResponse"
    "fixture/DeleteKeyGroupResponse.proto"
    cloudFrontService
    (Proxy :: Proxy DeleteKeyGroup)

responseListOriginRequestPolicies :: ListOriginRequestPoliciesResponse -> TestTree
responseListOriginRequestPolicies =
  res
    "ListOriginRequestPoliciesResponse"
    "fixture/ListOriginRequestPoliciesResponse.proto"
    cloudFrontService
    (Proxy :: Proxy ListOriginRequestPolicies)

responseGetOriginRequestPolicyConfig :: GetOriginRequestPolicyConfigResponse -> TestTree
responseGetOriginRequestPolicyConfig =
  res
    "GetOriginRequestPolicyConfigResponse"
    "fixture/GetOriginRequestPolicyConfigResponse.proto"
    cloudFrontService
    (Proxy :: Proxy GetOriginRequestPolicyConfig)
