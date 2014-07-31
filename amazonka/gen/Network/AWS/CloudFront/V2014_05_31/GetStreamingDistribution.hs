{-# LANGUAGE DeriveGeneric               #-}
{-# LANGUAGE FlexibleInstances           #-}
{-# LANGUAGE NoImplicitPrelude           #-}
{-# LANGUAGE OverloadedStrings           #-}
{-# LANGUAGE RecordWildCards             #-}
{-# LANGUAGE TypeFamilies                #-}

-- Module      : Network.AWS.CloudFront.V2014_05_31.GetStreamingDistribution
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Get the information about a streaming distribution.
module Network.AWS.CloudFront.V2014_05_31.GetStreamingDistribution where

import Network.AWS.Request.RestXML
import Network.AWS.CloudFront.V2014_05_31.Types
import Network.AWS.Prelude

data GetStreamingDistribution = GetStreamingDistribution
    { _gsdrId :: Text
      -- ^ The streaming distribution's id.
    } deriving (Generic)

instance ToPath GetStreamingDistribution where
    toPath GetStreamingDistribution{..} = mconcat
        [ "/2014-05-31/streaming-distribution/"
        , toBS _gsdrId
        ]

instance ToQuery GetStreamingDistribution

instance ToHeaders GetStreamingDistribution

instance ToXML GetStreamingDistributionRequest where
    toXMLOptions = xmlOptions
    toXMLRoot    = toRoot "GetStreamingDistributionRequest"

instance AWSRequest GetStreamingDistribution where
    type Sv GetStreamingDistribution = CloudFront
    type Rs GetStreamingDistribution = GetStreamingDistributionResponse

    request = get
    response _ = cursorResponse $ \hs xml ->
        pure GetStreamingDistributionResponse
            <*> xml %|? "StreamingDistribution"
            <*> hs ~:? "ETag"

data GetStreamingDistributionResponse = GetStreamingDistributionResponse
    { _gsdsStreamingDistribution :: Maybe StreamingDistribution
      -- ^ The streaming distribution's information.
    , _gsdsETag :: Maybe Text
      -- ^ The current version of the streaming distribution's information.
      -- For example: E2QWRUHAPOMQZL.
    } deriving (Generic)
