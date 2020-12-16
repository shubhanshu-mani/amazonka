{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.Dimension
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.Dimension
  ( Dimension
      ( Dimension',
        DimensionAZ,
        DimensionInstanceType,
        DimensionLinkedAccount,
        DimensionLinkedAccountName,
        DimensionOperation,
        DimensionPurchaseType,
        DimensionRegion,
        DimensionService,
        DimensionServiceCode,
        DimensionUsageType,
        DimensionUsageTypeGroup,
        DimensionRecordType,
        DimensionOperatingSystem,
        DimensionTenancy,
        DimensionScope,
        DimensionPlatform,
        DimensionSubscriptionId,
        DimensionLegalEntityName,
        DimensionDeploymentOption,
        DimensionDatabaseEngine,
        DimensionCacheEngine,
        DimensionInstanceTypeFamily,
        DimensionBillingEntity,
        DimensionReservationId,
        DimensionResourceId,
        DimensionRightsizingType,
        DimensionSavingsPlansType,
        DimensionSavingsPlanARN,
        DimensionPaymentOption
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype Dimension = Dimension' Lude.Text
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

pattern DimensionAZ :: Dimension
pattern DimensionAZ = Dimension' "AZ"

pattern DimensionInstanceType :: Dimension
pattern DimensionInstanceType = Dimension' "INSTANCE_TYPE"

pattern DimensionLinkedAccount :: Dimension
pattern DimensionLinkedAccount = Dimension' "LINKED_ACCOUNT"

pattern DimensionLinkedAccountName :: Dimension
pattern DimensionLinkedAccountName = Dimension' "LINKED_ACCOUNT_NAME"

pattern DimensionOperation :: Dimension
pattern DimensionOperation = Dimension' "OPERATION"

pattern DimensionPurchaseType :: Dimension
pattern DimensionPurchaseType = Dimension' "PURCHASE_TYPE"

pattern DimensionRegion :: Dimension
pattern DimensionRegion = Dimension' "REGION"

pattern DimensionService :: Dimension
pattern DimensionService = Dimension' "SERVICE"

pattern DimensionServiceCode :: Dimension
pattern DimensionServiceCode = Dimension' "SERVICE_CODE"

pattern DimensionUsageType :: Dimension
pattern DimensionUsageType = Dimension' "USAGE_TYPE"

pattern DimensionUsageTypeGroup :: Dimension
pattern DimensionUsageTypeGroup = Dimension' "USAGE_TYPE_GROUP"

pattern DimensionRecordType :: Dimension
pattern DimensionRecordType = Dimension' "RECORD_TYPE"

pattern DimensionOperatingSystem :: Dimension
pattern DimensionOperatingSystem = Dimension' "OPERATING_SYSTEM"

pattern DimensionTenancy :: Dimension
pattern DimensionTenancy = Dimension' "TENANCY"

pattern DimensionScope :: Dimension
pattern DimensionScope = Dimension' "SCOPE"

pattern DimensionPlatform :: Dimension
pattern DimensionPlatform = Dimension' "PLATFORM"

pattern DimensionSubscriptionId :: Dimension
pattern DimensionSubscriptionId = Dimension' "SUBSCRIPTION_ID"

pattern DimensionLegalEntityName :: Dimension
pattern DimensionLegalEntityName = Dimension' "LEGAL_ENTITY_NAME"

pattern DimensionDeploymentOption :: Dimension
pattern DimensionDeploymentOption = Dimension' "DEPLOYMENT_OPTION"

pattern DimensionDatabaseEngine :: Dimension
pattern DimensionDatabaseEngine = Dimension' "DATABASE_ENGINE"

pattern DimensionCacheEngine :: Dimension
pattern DimensionCacheEngine = Dimension' "CACHE_ENGINE"

pattern DimensionInstanceTypeFamily :: Dimension
pattern DimensionInstanceTypeFamily = Dimension' "INSTANCE_TYPE_FAMILY"

pattern DimensionBillingEntity :: Dimension
pattern DimensionBillingEntity = Dimension' "BILLING_ENTITY"

pattern DimensionReservationId :: Dimension
pattern DimensionReservationId = Dimension' "RESERVATION_ID"

pattern DimensionResourceId :: Dimension
pattern DimensionResourceId = Dimension' "RESOURCE_ID"

pattern DimensionRightsizingType :: Dimension
pattern DimensionRightsizingType = Dimension' "RIGHTSIZING_TYPE"

pattern DimensionSavingsPlansType :: Dimension
pattern DimensionSavingsPlansType = Dimension' "SAVINGS_PLANS_TYPE"

pattern DimensionSavingsPlanARN :: Dimension
pattern DimensionSavingsPlanARN = Dimension' "SAVINGS_PLAN_ARN"

pattern DimensionPaymentOption :: Dimension
pattern DimensionPaymentOption = Dimension' "PAYMENT_OPTION"

{-# COMPLETE
  DimensionAZ,
  DimensionInstanceType,
  DimensionLinkedAccount,
  DimensionLinkedAccountName,
  DimensionOperation,
  DimensionPurchaseType,
  DimensionRegion,
  DimensionService,
  DimensionServiceCode,
  DimensionUsageType,
  DimensionUsageTypeGroup,
  DimensionRecordType,
  DimensionOperatingSystem,
  DimensionTenancy,
  DimensionScope,
  DimensionPlatform,
  DimensionSubscriptionId,
  DimensionLegalEntityName,
  DimensionDeploymentOption,
  DimensionDatabaseEngine,
  DimensionCacheEngine,
  DimensionInstanceTypeFamily,
  DimensionBillingEntity,
  DimensionReservationId,
  DimensionResourceId,
  DimensionRightsizingType,
  DimensionSavingsPlansType,
  DimensionSavingsPlanARN,
  DimensionPaymentOption,
  Dimension'
  #-}