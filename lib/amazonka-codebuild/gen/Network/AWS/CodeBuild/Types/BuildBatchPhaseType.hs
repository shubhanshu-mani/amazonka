{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.BuildBatchPhaseType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.BuildBatchPhaseType
  ( BuildBatchPhaseType
      ( BuildBatchPhaseType',
        BBPTSubmitted,
        BBPTDownloadBatchspec,
        BBPTInProgress,
        BBPTCombineArtifacts,
        BBPTSucceeded,
        BBPTFailed,
        BBPTStopped
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype BuildBatchPhaseType = BuildBatchPhaseType' Lude.Text
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

pattern BBPTSubmitted :: BuildBatchPhaseType
pattern BBPTSubmitted = BuildBatchPhaseType' "SUBMITTED"

pattern BBPTDownloadBatchspec :: BuildBatchPhaseType
pattern BBPTDownloadBatchspec = BuildBatchPhaseType' "DOWNLOAD_BATCHSPEC"

pattern BBPTInProgress :: BuildBatchPhaseType
pattern BBPTInProgress = BuildBatchPhaseType' "IN_PROGRESS"

pattern BBPTCombineArtifacts :: BuildBatchPhaseType
pattern BBPTCombineArtifacts = BuildBatchPhaseType' "COMBINE_ARTIFACTS"

pattern BBPTSucceeded :: BuildBatchPhaseType
pattern BBPTSucceeded = BuildBatchPhaseType' "SUCCEEDED"

pattern BBPTFailed :: BuildBatchPhaseType
pattern BBPTFailed = BuildBatchPhaseType' "FAILED"

pattern BBPTStopped :: BuildBatchPhaseType
pattern BBPTStopped = BuildBatchPhaseType' "STOPPED"

{-# COMPLETE
  BBPTSubmitted,
  BBPTDownloadBatchspec,
  BBPTInProgress,
  BBPTCombineArtifacts,
  BBPTSucceeded,
  BBPTFailed,
  BBPTStopped,
  BuildBatchPhaseType'
  #-}