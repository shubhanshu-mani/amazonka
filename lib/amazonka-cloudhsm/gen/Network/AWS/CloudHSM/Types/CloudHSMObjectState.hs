{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudHSM.Types.CloudHSMObjectState
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudHSM.Types.CloudHSMObjectState
  ( CloudHSMObjectState
      ( CloudHSMObjectState',
        Ready,
        Updating,
        Degraded
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype CloudHSMObjectState = CloudHSMObjectState' Lude.Text
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

pattern Ready :: CloudHSMObjectState
pattern Ready = CloudHSMObjectState' "READY"

pattern Updating :: CloudHSMObjectState
pattern Updating = CloudHSMObjectState' "UPDATING"

pattern Degraded :: CloudHSMObjectState
pattern Degraded = CloudHSMObjectState' "DEGRADED"

{-# COMPLETE
  Ready,
  Updating,
  Degraded,
  CloudHSMObjectState'
  #-}