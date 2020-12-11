-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.SchemaStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.SchemaStatus
  ( SchemaStatus
      ( SchemaStatus',
        SSActive,
        SSDeleting,
        SSFailed,
        SSNotApplicable,
        SSProcessing,
        SSSuccess
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype SchemaStatus = SchemaStatus' Lude.Text
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

pattern SSActive :: SchemaStatus
pattern SSActive = SchemaStatus' "ACTIVE"

pattern SSDeleting :: SchemaStatus
pattern SSDeleting = SchemaStatus' "DELETING"

pattern SSFailed :: SchemaStatus
pattern SSFailed = SchemaStatus' "FAILED"

pattern SSNotApplicable :: SchemaStatus
pattern SSNotApplicable = SchemaStatus' "NOT_APPLICABLE"

pattern SSProcessing :: SchemaStatus
pattern SSProcessing = SchemaStatus' "PROCESSING"

pattern SSSuccess :: SchemaStatus
pattern SSSuccess = SchemaStatus' "SUCCESS"

{-# COMPLETE
  SSActive,
  SSDeleting,
  SSFailed,
  SSNotApplicable,
  SSProcessing,
  SSSuccess,
  SchemaStatus'
  #-}
