-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SQS.Types
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SQS.Types
  ( -- * Service configuration
    sqsService,

    -- * Errors

    -- * MessageAttribute
    MessageAttribute (..),

    -- * MessageSystemAttributeNameForSends
    MessageSystemAttributeNameForSends (..),

    -- * QueueAttributeName
    QueueAttributeName (..),

    -- * BatchResultErrorEntry
    BatchResultErrorEntry (..),
    mkBatchResultErrorEntry,
    breeMessage,
    breeId,
    breeSenderFault,
    breeCode,

    -- * ChangeMessageVisibilityBatchRequestEntry
    ChangeMessageVisibilityBatchRequestEntry (..),
    mkChangeMessageVisibilityBatchRequestEntry,
    cVisibilityTimeout,
    cId,
    cReceiptHandle,

    -- * ChangeMessageVisibilityBatchResultEntry
    ChangeMessageVisibilityBatchResultEntry (..),
    mkChangeMessageVisibilityBatchResultEntry,
    cmvbreId,

    -- * DeleteMessageBatchRequestEntry
    DeleteMessageBatchRequestEntry (..),
    mkDeleteMessageBatchRequestEntry,
    dmbreId,
    dmbreReceiptHandle,

    -- * DeleteMessageBatchResultEntry
    DeleteMessageBatchResultEntry (..),
    mkDeleteMessageBatchResultEntry,
    dId,

    -- * Message
    Message (..),
    mkMessage,
    mMessageAttributes,
    mMD5OfBody,
    mBody,
    mAttributes,
    mReceiptHandle,
    mMessageId,
    mMD5OfMessageAttributes,

    -- * MessageAttributeValue
    MessageAttributeValue (..),
    mkMessageAttributeValue,
    mavBinaryValue,
    mavStringListValues,
    mavStringValue,
    mavBinaryListValues,
    mavDataType,

    -- * MessageSystemAttributeValue
    MessageSystemAttributeValue (..),
    mkMessageSystemAttributeValue,
    msavBinaryValue,
    msavStringListValues,
    msavStringValue,
    msavBinaryListValues,
    msavDataType,

    -- * SendMessageBatchRequestEntry
    SendMessageBatchRequestEntry (..),
    mkSendMessageBatchRequestEntry,
    sMessageAttributes,
    sDelaySeconds,
    sMessageSystemAttributes,
    sMessageDeduplicationId,
    sMessageGroupId,
    sId,
    sMessageBody,

    -- * SendMessageBatchResultEntry
    SendMessageBatchResultEntry (..),
    mkSendMessageBatchResultEntry,
    smbreSequenceNumber,
    smbreMD5OfMessageSystemAttributes,
    smbreMD5OfMessageAttributes,
    smbreId,
    smbreMessageId,
    smbreMD5OfMessageBody,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import Network.AWS.SQS.Types.BatchResultErrorEntry
import Network.AWS.SQS.Types.ChangeMessageVisibilityBatchRequestEntry
import Network.AWS.SQS.Types.ChangeMessageVisibilityBatchResultEntry
import Network.AWS.SQS.Types.DeleteMessageBatchRequestEntry
import Network.AWS.SQS.Types.DeleteMessageBatchResultEntry
import Network.AWS.SQS.Types.Message
import Network.AWS.SQS.Types.MessageAttribute
import Network.AWS.SQS.Types.MessageAttributeValue
import Network.AWS.SQS.Types.MessageSystemAttributeNameForSends
import Network.AWS.SQS.Types.MessageSystemAttributeValue
import Network.AWS.SQS.Types.QueueAttributeName
import Network.AWS.SQS.Types.SendMessageBatchRequestEntry
import Network.AWS.SQS.Types.SendMessageBatchResultEntry
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2012-11-05@ of the Amazon Simple Queue Service SDK configuration.
sqsService :: Lude.Service
sqsService =
  Lude.Service
    { Lude._svcAbbrev = "SQS",
      Lude._svcSigner = Sign.v4,
      Lude._svcPrefix = "sqs",
      Lude._svcVersion = "2012-11-05",
      Lude._svcEndpoint = Lude.defaultEndpoint sqsService,
      Lude._svcTimeout = Lude.Just 70,
      Lude._svcCheck = Lude.statusSuccess,
      Lude._svcError = Lude.parseXMLError "SQS",
      Lude._svcRetry = retry
    }
  where
    retry =
      Lude.Exponential
        { Lude._retryBase = 5.0e-2,
          Lude._retryGrowth = 2,
          Lude._retryAttempts = 5,
          Lude._retryCheck = check
        }
    check e
      | Lens.has
          (Lude.hasCode "ThrottledException" Lude.. Lude.hasStatus 400)
          e =
        Lude.Just "throttled_exception"
      | Lens.has
          (Lude.hasCode "RequestThrottled" Lude.. Lude.hasStatus 403)
          e =
        Lude.Just "request_limit_exceeded"
      | Lens.has (Lude.hasStatus 429) e = Lude.Just "too_many_requests"
      | Lens.has
          (Lude.hasCode "ThrottlingException" Lude.. Lude.hasStatus 400)
          e =
        Lude.Just "throttling_exception"
      | Lens.has (Lude.hasCode "Throttling" Lude.. Lude.hasStatus 400) e =
        Lude.Just "throttling"
      | Lens.has
          ( Lude.hasCode "ProvisionedThroughputExceededException"
              Lude.. Lude.hasStatus 400
          )
          e =
        Lude.Just "throughput_exceeded"
      | Lens.has (Lude.hasStatus 504) e = Lude.Just "gateway_timeout"
      | Lens.has
          ( Lude.hasCode "RequestThrottledException"
              Lude.. Lude.hasStatus 400
          )
          e =
        Lude.Just "request_throttled_exception"
      | Lens.has (Lude.hasStatus 502) e = Lude.Just "bad_gateway"
      | Lens.has (Lude.hasStatus 503) e = Lude.Just "service_unavailable"
      | Lens.has (Lude.hasStatus 500) e =
        Lude.Just "general_server_error"
      | Lens.has (Lude.hasStatus 509) e = Lude.Just "limit_exceeded"
      | Lude.otherwise = Lude.Nothing
