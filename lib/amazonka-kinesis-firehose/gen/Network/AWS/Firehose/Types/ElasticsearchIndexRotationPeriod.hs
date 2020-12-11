-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.ElasticsearchIndexRotationPeriod
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.ElasticsearchIndexRotationPeriod
  ( ElasticsearchIndexRotationPeriod
      ( ElasticsearchIndexRotationPeriod',
        NoRotation,
        OneDay,
        OneHour,
        OneMonth,
        OneWeek
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ElasticsearchIndexRotationPeriod = ElasticsearchIndexRotationPeriod' Lude.Text
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

pattern NoRotation :: ElasticsearchIndexRotationPeriod
pattern NoRotation = ElasticsearchIndexRotationPeriod' "NoRotation"

pattern OneDay :: ElasticsearchIndexRotationPeriod
pattern OneDay = ElasticsearchIndexRotationPeriod' "OneDay"

pattern OneHour :: ElasticsearchIndexRotationPeriod
pattern OneHour = ElasticsearchIndexRotationPeriod' "OneHour"

pattern OneMonth :: ElasticsearchIndexRotationPeriod
pattern OneMonth = ElasticsearchIndexRotationPeriod' "OneMonth"

pattern OneWeek :: ElasticsearchIndexRotationPeriod
pattern OneWeek = ElasticsearchIndexRotationPeriod' "OneWeek"

{-# COMPLETE
  NoRotation,
  OneDay,
  OneHour,
  OneMonth,
  OneWeek,
  ElasticsearchIndexRotationPeriod'
  #-}
