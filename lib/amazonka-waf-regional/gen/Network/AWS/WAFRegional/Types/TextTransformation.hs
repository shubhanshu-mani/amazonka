{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAFRegional.Types.TextTransformation
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAFRegional.Types.TextTransformation
  ( TextTransformation
      ( TextTransformation',
        None,
        CompressWhiteSpace,
        HTMLEntityDecode,
        Lowercase,
        CmdLine,
        URLDecode
      ),
  )
where

import qualified Network.AWS.Prelude as Lude

newtype TextTransformation = TextTransformation' Lude.Text
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

pattern None :: TextTransformation
pattern None = TextTransformation' "NONE"

pattern CompressWhiteSpace :: TextTransformation
pattern CompressWhiteSpace = TextTransformation' "COMPRESS_WHITE_SPACE"

pattern HTMLEntityDecode :: TextTransformation
pattern HTMLEntityDecode = TextTransformation' "HTML_ENTITY_DECODE"

pattern Lowercase :: TextTransformation
pattern Lowercase = TextTransformation' "LOWERCASE"

pattern CmdLine :: TextTransformation
pattern CmdLine = TextTransformation' "CMD_LINE"

pattern URLDecode :: TextTransformation
pattern URLDecode = TextTransformation' "URL_DECODE"

{-# COMPLETE
  None,
  CompressWhiteSpace,
  HTMLEntityDecode,
  Lowercase,
  CmdLine,
  URLDecode,
  TextTransformation'
  #-}