-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.DeliveryStreamEncryptionStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.DeliveryStreamEncryptionStatus
  ( DeliveryStreamEncryptionStatus
      ( DeliveryStreamEncryptionStatus',
        DSESDisabled,
        DSESDisabling,
        DSESDisablingFailed,
        DSESEnabled,
        DSESEnabling,
        DSESEnablingFailed
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype DeliveryStreamEncryptionStatus = DeliveryStreamEncryptionStatus' Lude.Text
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

pattern DSESDisabled :: DeliveryStreamEncryptionStatus
pattern DSESDisabled = DeliveryStreamEncryptionStatus' "DISABLED"

pattern DSESDisabling :: DeliveryStreamEncryptionStatus
pattern DSESDisabling = DeliveryStreamEncryptionStatus' "DISABLING"

pattern DSESDisablingFailed :: DeliveryStreamEncryptionStatus
pattern DSESDisablingFailed = DeliveryStreamEncryptionStatus' "DISABLING_FAILED"

pattern DSESEnabled :: DeliveryStreamEncryptionStatus
pattern DSESEnabled = DeliveryStreamEncryptionStatus' "ENABLED"

pattern DSESEnabling :: DeliveryStreamEncryptionStatus
pattern DSESEnabling = DeliveryStreamEncryptionStatus' "ENABLING"

pattern DSESEnablingFailed :: DeliveryStreamEncryptionStatus
pattern DSESEnablingFailed = DeliveryStreamEncryptionStatus' "ENABLING_FAILED"

{-# COMPLETE
  DSESDisabled,
  DSESDisabling,
  DSESDisablingFailed,
  DSESEnabled,
  DSESEnabling,
  DSESEnablingFailed,
  DeliveryStreamEncryptionStatus'
  #-}
