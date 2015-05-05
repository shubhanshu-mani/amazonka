{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ViewPatterns      #-}

-- Module      : Compiler.Formatting
-- Copyright   : (c) 2013-2015 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

module Compiler.Formatting
    ( module Compiler.Formatting
    , module Formatting
    , module Formatting.Time
    , runFormat
    ) where

import           Compiler.Types
import           Control.Lens
import           Control.Monad.Except
import qualified Data.HashMap.Strict    as Map
import           Data.Monoid
import qualified Data.Text              as Text
import qualified Data.Text.Lazy.Builder as Build
import           Formatting             hiding (left, right)
import           Formatting.Internal    (runFormat)
import           Formatting.Time

fcomma :: Format a ([Id] -> a)
fcomma = later (Build.fromText . Text.intercalate "," . map (^. keyOriginal))

fid :: Format a (Id -> a)
fid = later (\i -> Build.fromText $ i ^. keyOriginal <> "/" <> i ^. keyActual)

path :: Format a (Path -> a)
path = later (Build.fromText . toTextIgnore)

partial :: Show b => Format a ((Id, Map.HashMap Id b) -> a)
partial = later (Build.fromString . show . Map.toList . prefix)
  where
    prefix (view keyOriginal -> Text.take 3 -> p, m) =
        Map.filterWithKey (const . Text.isPrefixOf p . view keyOriginal) m

failure :: MonadError e m => Format LazyText (a -> e) -> a -> m b
failure m = throwError . format m
