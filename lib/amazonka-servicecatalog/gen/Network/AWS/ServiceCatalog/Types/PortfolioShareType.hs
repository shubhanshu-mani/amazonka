-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.PortfolioShareType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.PortfolioShareType
  ( PortfolioShareType
      ( PortfolioShareType',
        AWSOrganizations,
        AWSServicecatalog,
        Imported
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype PortfolioShareType = PortfolioShareType' Lude.Text
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

pattern AWSOrganizations :: PortfolioShareType
pattern AWSOrganizations = PortfolioShareType' "AWS_ORGANIZATIONS"

pattern AWSServicecatalog :: PortfolioShareType
pattern AWSServicecatalog = PortfolioShareType' "AWS_SERVICECATALOG"

pattern Imported :: PortfolioShareType
pattern Imported = PortfolioShareType' "IMPORTED"

{-# COMPLETE
  AWSOrganizations,
  AWSServicecatalog,
  Imported,
  PortfolioShareType'
  #-}
