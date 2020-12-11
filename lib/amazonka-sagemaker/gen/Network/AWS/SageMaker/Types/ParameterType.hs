-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ParameterType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ParameterType
  ( ParameterType
      ( ParameterType',
        PTCategorical,
        PTContinuous,
        PTFreeText,
        PTInteger
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype ParameterType = ParameterType' Lude.Text
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

pattern PTCategorical :: ParameterType
pattern PTCategorical = ParameterType' "Categorical"

pattern PTContinuous :: ParameterType
pattern PTContinuous = ParameterType' "Continuous"

pattern PTFreeText :: ParameterType
pattern PTFreeText = ParameterType' "FreeText"

pattern PTInteger :: ParameterType
pattern PTInteger = ParameterType' "Integer"

{-# COMPLETE
  PTCategorical,
  PTContinuous,
  PTFreeText,
  PTInteger,
  ParameterType'
  #-}
