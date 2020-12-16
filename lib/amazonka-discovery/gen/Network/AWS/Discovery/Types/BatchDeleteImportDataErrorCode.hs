{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Discovery.Types.BatchDeleteImportDataErrorCode
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Discovery.Types.BatchDeleteImportDataErrorCode
  ( BatchDeleteImportDataErrorCode
      ( BatchDeleteImportDataErrorCode',
        NotFound,
        InternalServerError,
        OverLimit
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype BatchDeleteImportDataErrorCode = BatchDeleteImportDataErrorCode' Lude.Text
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

pattern NotFound :: BatchDeleteImportDataErrorCode
pattern NotFound = BatchDeleteImportDataErrorCode' "NOT_FOUND"

pattern InternalServerError :: BatchDeleteImportDataErrorCode
pattern InternalServerError = BatchDeleteImportDataErrorCode' "INTERNAL_SERVER_ERROR"

pattern OverLimit :: BatchDeleteImportDataErrorCode
pattern OverLimit = BatchDeleteImportDataErrorCode' "OVER_LIMIT"

{-# COMPLETE
  NotFound,
  InternalServerError,
  OverLimit,
  BatchDeleteImportDataErrorCode'
  #-}