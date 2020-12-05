{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ProvisionedProductViewFilterBy
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProvisionedProductViewFilterBy where

import Network.AWS.Prelude

data ProvisionedProductViewFilterBy = SearchQuery
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Enum,
      Bounded,
      Data,
      Typeable,
      Generic
    )

instance FromText ProvisionedProductViewFilterBy where
  parser =
    takeLowerText >>= \case
      "searchquery" -> pure SearchQuery
      e ->
        fromTextError $
          "Failure parsing ProvisionedProductViewFilterBy from value: '" <> e
            <> "'. Accepted values: searchquery"

instance ToText ProvisionedProductViewFilterBy where
  toText = \case
    SearchQuery -> "SearchQuery"

instance Hashable ProvisionedProductViewFilterBy

instance NFData ProvisionedProductViewFilterBy

instance ToByteString ProvisionedProductViewFilterBy

instance ToQuery ProvisionedProductViewFilterBy

instance ToHeader ProvisionedProductViewFilterBy

instance ToJSON ProvisionedProductViewFilterBy where
  toJSON = toJSONText