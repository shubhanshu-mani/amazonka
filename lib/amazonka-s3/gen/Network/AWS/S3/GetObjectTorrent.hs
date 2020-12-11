{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.GetObjectTorrent
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns torrent files from a bucket. BitTorrent can save you bandwidth when you're distributing large files. For more information about BitTorrent, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3Torrent.html Using BitTorrent with Amazon S3> .
--
-- To use GET, you must have READ access to the object.
-- This action is not supported by Amazon S3 on Outposts.
-- The following operation is related to @GetObjectTorrent@ :
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html GetObject>
module Network.AWS.S3.GetObjectTorrent
  ( -- * Creating a request
    GetObjectTorrent (..),
    mkGetObjectTorrent,

    -- ** Request lenses
    gotRequestPayer,
    gotExpectedBucketOwner,
    gotBucket,
    gotKey,

    -- * Destructuring the response
    GetObjectTorrentResponse (..),
    mkGetObjectTorrentResponse,

    -- ** Response lenses
    getrsRequestCharged,
    getrsResponseStatus,
    getrsBody,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.S3.Types

-- | /See:/ 'mkGetObjectTorrent' smart constructor.
data GetObjectTorrent = GetObjectTorrent'
  { requestPayer ::
      Lude.Maybe RequestPayer,
    expectedBucketOwner :: Lude.Maybe Lude.Text,
    bucket :: BucketName,
    key :: ObjectKey
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetObjectTorrent' with the minimum fields required to make a request.
--
-- * 'bucket' - The name of the bucket containing the object for which to get the torrent files.
-- * 'expectedBucketOwner' - The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
-- * 'key' - The object key for which to get the information.
-- * 'requestPayer' - Undocumented field.
mkGetObjectTorrent ::
  -- | 'bucket'
  BucketName ->
  -- | 'key'
  ObjectKey ->
  GetObjectTorrent
mkGetObjectTorrent pBucket_ pKey_ =
  GetObjectTorrent'
    { requestPayer = Lude.Nothing,
      expectedBucketOwner = Lude.Nothing,
      bucket = pBucket_,
      key = pKey_
    }

-- | Undocumented field.
--
-- /Note:/ Consider using 'requestPayer' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gotRequestPayer :: Lens.Lens' GetObjectTorrent (Lude.Maybe RequestPayer)
gotRequestPayer = Lens.lens (requestPayer :: GetObjectTorrent -> Lude.Maybe RequestPayer) (\s a -> s {requestPayer = a} :: GetObjectTorrent)
{-# DEPRECATED gotRequestPayer "Use generic-lens or generic-optics with 'requestPayer' instead." #-}

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- /Note:/ Consider using 'expectedBucketOwner' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gotExpectedBucketOwner :: Lens.Lens' GetObjectTorrent (Lude.Maybe Lude.Text)
gotExpectedBucketOwner = Lens.lens (expectedBucketOwner :: GetObjectTorrent -> Lude.Maybe Lude.Text) (\s a -> s {expectedBucketOwner = a} :: GetObjectTorrent)
{-# DEPRECATED gotExpectedBucketOwner "Use generic-lens or generic-optics with 'expectedBucketOwner' instead." #-}

-- | The name of the bucket containing the object for which to get the torrent files.
--
-- /Note:/ Consider using 'bucket' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gotBucket :: Lens.Lens' GetObjectTorrent BucketName
gotBucket = Lens.lens (bucket :: GetObjectTorrent -> BucketName) (\s a -> s {bucket = a} :: GetObjectTorrent)
{-# DEPRECATED gotBucket "Use generic-lens or generic-optics with 'bucket' instead." #-}

-- | The object key for which to get the information.
--
-- /Note:/ Consider using 'key' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gotKey :: Lens.Lens' GetObjectTorrent ObjectKey
gotKey = Lens.lens (key :: GetObjectTorrent -> ObjectKey) (\s a -> s {key = a} :: GetObjectTorrent)
{-# DEPRECATED gotKey "Use generic-lens or generic-optics with 'key' instead." #-}

instance Lude.AWSRequest GetObjectTorrent where
  type Rs GetObjectTorrent = GetObjectTorrentResponse
  request = Req.get s3Service
  response =
    Res.receiveBody
      ( \s h x ->
          GetObjectTorrentResponse'
            Lude.<$> (h Lude..#? "x-amz-request-charged")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
            Lude.<*> (Lude.pure x)
      )

instance Lude.ToHeaders GetObjectTorrent where
  toHeaders GetObjectTorrent' {..} =
    Lude.mconcat
      [ "x-amz-request-payer" Lude.=# requestPayer,
        "x-amz-expected-bucket-owner" Lude.=# expectedBucketOwner
      ]

instance Lude.ToPath GetObjectTorrent where
  toPath GetObjectTorrent' {..} =
    Lude.mconcat ["/", Lude.toBS bucket, "/", Lude.toBS key]

instance Lude.ToQuery GetObjectTorrent where
  toQuery = Lude.const (Lude.mconcat ["torrent"])

-- | /See:/ 'mkGetObjectTorrentResponse' smart constructor.
data GetObjectTorrentResponse = GetObjectTorrentResponse'
  { requestCharged ::
      Lude.Maybe RequestCharged,
    responseStatus :: Lude.Int,
    body :: Lude.RsBody
  }
  deriving stock (Lude.Show, Lude.Generic)

-- | Creates a value of 'GetObjectTorrentResponse' with the minimum fields required to make a request.
--
-- * 'body' - A Bencoded dictionary as defined by the BitTorrent specification
-- * 'requestCharged' - Undocumented field.
-- * 'responseStatus' - The response status code.
mkGetObjectTorrentResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  -- | 'body'
  Lude.RsBody ->
  GetObjectTorrentResponse
mkGetObjectTorrentResponse pResponseStatus_ pBody_ =
  GetObjectTorrentResponse'
    { requestCharged = Lude.Nothing,
      responseStatus = pResponseStatus_,
      body = pBody_
    }

-- | Undocumented field.
--
-- /Note:/ Consider using 'requestCharged' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
getrsRequestCharged :: Lens.Lens' GetObjectTorrentResponse (Lude.Maybe RequestCharged)
getrsRequestCharged = Lens.lens (requestCharged :: GetObjectTorrentResponse -> Lude.Maybe RequestCharged) (\s a -> s {requestCharged = a} :: GetObjectTorrentResponse)
{-# DEPRECATED getrsRequestCharged "Use generic-lens or generic-optics with 'requestCharged' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
getrsResponseStatus :: Lens.Lens' GetObjectTorrentResponse Lude.Int
getrsResponseStatus = Lens.lens (responseStatus :: GetObjectTorrentResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: GetObjectTorrentResponse)
{-# DEPRECATED getrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}

-- | A Bencoded dictionary as defined by the BitTorrent specification
--
-- /Note:/ Consider using 'body' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
getrsBody :: Lens.Lens' GetObjectTorrentResponse Lude.RsBody
getrsBody = Lens.lens (body :: GetObjectTorrentResponse -> Lude.RsBody) (\s a -> s {body = a} :: GetObjectTorrentResponse)
{-# DEPRECATED getrsBody "Use generic-lens or generic-optics with 'body' instead." #-}
