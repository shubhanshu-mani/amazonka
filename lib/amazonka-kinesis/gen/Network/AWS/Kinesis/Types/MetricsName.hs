-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Kinesis.Types.MetricsName
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kinesis.Types.MetricsName
  ( MetricsName
      ( MetricsName',
        All,
        IncomingBytes,
        IncomingRecords,
        IteratorAgeMilliseconds,
        OutgoingBytes,
        OutgoingRecords,
        ReadProvisionedThroughputExceeded,
        WriteProvisionedThroughputExceeded
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype MetricsName = MetricsName' Lude.Text
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

pattern All :: MetricsName
pattern All = MetricsName' "ALL"

pattern IncomingBytes :: MetricsName
pattern IncomingBytes = MetricsName' "IncomingBytes"

pattern IncomingRecords :: MetricsName
pattern IncomingRecords = MetricsName' "IncomingRecords"

pattern IteratorAgeMilliseconds :: MetricsName
pattern IteratorAgeMilliseconds = MetricsName' "IteratorAgeMilliseconds"

pattern OutgoingBytes :: MetricsName
pattern OutgoingBytes = MetricsName' "OutgoingBytes"

pattern OutgoingRecords :: MetricsName
pattern OutgoingRecords = MetricsName' "OutgoingRecords"

pattern ReadProvisionedThroughputExceeded :: MetricsName
pattern ReadProvisionedThroughputExceeded = MetricsName' "ReadProvisionedThroughputExceeded"

pattern WriteProvisionedThroughputExceeded :: MetricsName
pattern WriteProvisionedThroughputExceeded = MetricsName' "WriteProvisionedThroughputExceeded"

{-# COMPLETE
  All,
  IncomingBytes,
  IncomingRecords,
  IteratorAgeMilliseconds,
  OutgoingBytes,
  OutgoingRecords,
  ReadProvisionedThroughputExceeded,
  WriteProvisionedThroughputExceeded,
  MetricsName'
  #-}
