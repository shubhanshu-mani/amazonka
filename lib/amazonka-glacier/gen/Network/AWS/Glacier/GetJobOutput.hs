{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glacier.GetJobOutput
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation downloads the output of the job you initiated using 'InitiateJob' . Depending on the job type you specified when you initiated the job, the output will be either the content of an archive or a vault inventory.
--
-- You can download all the job output or download a portion of the output by specifying a byte range. In the case of an archive retrieval job, depending on the byte range you specify, Amazon S3 Glacier (Glacier) returns the checksum for the portion of the data. You can compute the checksum on the client and verify that the values match to ensure the portion you downloaded is the correct data.
-- A job ID will not expire for at least 24 hours after Glacier completes the job. That a byte range. For both archive and inventory retrieval jobs, you should verify the downloaded size against the size returned in the headers from the __Get Job Output__ response.
-- For archive retrieval jobs, you should also verify that the size is what you expected. If you download a portion of the output, the expected size is based on the range of bytes you specified. For example, if you specify a range of @bytes=0-1048575@ , you should verify your download size is 1,048,576 bytes. If you download an entire archive, the expected size is the size of the archive when you uploaded it to Amazon S3 Glacier The expected size is also returned in the headers from the __Get Job Output__ response.
-- In the case of an archive retrieval job, depending on the byte range you specify, Glacier returns the checksum for the portion of the data. To ensure the portion you downloaded is the correct data, compute the checksum on the client, verify that the values match, and verify that the size is what you expected.
-- A job ID does not expire for at least 24 hours after Glacier completes the job. That is, you can download the job output within the 24 hours period after Amazon Glacier completes the job.
-- An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html Access Control Using AWS Identity and Access Management (IAM)> .
-- For conceptual information and the underlying REST API, see <https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-inventory.html Downloading a Vault Inventory> , <https://docs.aws.amazon.com/amazonglacier/latest/dev/downloading-an-archive.html Downloading an Archive> , and <https://docs.aws.amazon.com/amazonglacier/latest/dev/api-job-output-get.html Get Job Output >
module Network.AWS.Glacier.GetJobOutput
  ( -- * Creating a request
    GetJobOutput (..),
    mkGetJobOutput,

    -- ** Request lenses
    gjoRange,
    gjoAccountId,
    gjoVaultName,
    gjoJobId,

    -- * Destructuring the response
    GetJobOutputResponse (..),
    mkGetJobOutputResponse,

    -- ** Response lenses
    gjorsChecksum,
    gjorsAcceptRanges,
    gjorsArchiveDescription,
    gjorsContentRange,
    gjorsContentType,
    gjorsStatus,
    gjorsBody,
  )
where

import Network.AWS.Glacier.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | Provides options for downloading output of an Amazon S3 Glacier job.
--
-- /See:/ 'mkGetJobOutput' smart constructor.
data GetJobOutput = GetJobOutput'
  { range :: Lude.Maybe Lude.Text,
    accountId :: Lude.Text,
    vaultName :: Lude.Text,
    jobId :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetJobOutput' with the minimum fields required to make a request.
--
-- * 'accountId' - The @AccountId@ value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '@-@ ' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.
-- * 'jobId' - The job ID whose data is downloaded.
-- * 'range' - The range of bytes to retrieve from the output. For example, if you want to download the first 1,048,576 bytes, specify the range as @bytes=0-1048575@ . By default, this operation downloads the entire output.
--
-- If the job output is large, then you can use a range to retrieve a portion of the output. This allows you to download the entire output in smaller chunks of bytes. For example, suppose you have 1 GB of job output you want to download and you decide to download 128 MB chunks of data at a time, which is a total of eight Get Job Output requests. You use the following process to download the job output:
--
--     * Download a 128 MB chunk of output by specifying the appropriate byte range. Verify that all 128 MB of data was received.
--
--
--     * Along with the data, the response includes a SHA256 tree hash of the payload. You compute the checksum of the payload on the client and compare it with the checksum you received in the response to ensure you received all the expected data.
--
--
--     * Repeat steps 1 and 2 for all the eight 128 MB chunks of output data, each time specifying the appropriate byte range.
--
--
--     * After downloading all the parts of the job output, you have a list of eight checksum values. Compute the tree hash of these values to find the checksum of the entire output. Using the 'DescribeJob' API, obtain job information of the job that provided you the output. The response includes the checksum of the entire archive stored in Amazon S3 Glacier. You compare this value with the checksum you computed to ensure you have downloaded the entire archive content with no errors.
--
--
--
-- * 'vaultName' - The name of the vault.
mkGetJobOutput ::
  -- | 'accountId'
  Lude.Text ->
  -- | 'vaultName'
  Lude.Text ->
  -- | 'jobId'
  Lude.Text ->
  GetJobOutput
mkGetJobOutput pAccountId_ pVaultName_ pJobId_ =
  GetJobOutput'
    { range = Lude.Nothing,
      accountId = pAccountId_,
      vaultName = pVaultName_,
      jobId = pJobId_
    }

-- | The range of bytes to retrieve from the output. For example, if you want to download the first 1,048,576 bytes, specify the range as @bytes=0-1048575@ . By default, this operation downloads the entire output.
--
-- If the job output is large, then you can use a range to retrieve a portion of the output. This allows you to download the entire output in smaller chunks of bytes. For example, suppose you have 1 GB of job output you want to download and you decide to download 128 MB chunks of data at a time, which is a total of eight Get Job Output requests. You use the following process to download the job output:
--
--     * Download a 128 MB chunk of output by specifying the appropriate byte range. Verify that all 128 MB of data was received.
--
--
--     * Along with the data, the response includes a SHA256 tree hash of the payload. You compute the checksum of the payload on the client and compare it with the checksum you received in the response to ensure you received all the expected data.
--
--
--     * Repeat steps 1 and 2 for all the eight 128 MB chunks of output data, each time specifying the appropriate byte range.
--
--
--     * After downloading all the parts of the job output, you have a list of eight checksum values. Compute the tree hash of these values to find the checksum of the entire output. Using the 'DescribeJob' API, obtain job information of the job that provided you the output. The response includes the checksum of the entire archive stored in Amazon S3 Glacier. You compare this value with the checksum you computed to ensure you have downloaded the entire archive content with no errors.
--
--
--
--
-- /Note:/ Consider using 'range' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gjoRange :: Lens.Lens' GetJobOutput (Lude.Maybe Lude.Text)
gjoRange = Lens.lens (range :: GetJobOutput -> Lude.Maybe Lude.Text) (\s a -> s {range = a} :: GetJobOutput)
{-# DEPRECATED gjoRange "Use generic-lens or generic-optics with 'range' instead." #-}

-- | The @AccountId@ value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '@-@ ' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.
--
-- /Note:/ Consider using 'accountId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gjoAccountId :: Lens.Lens' GetJobOutput Lude.Text
gjoAccountId = Lens.lens (accountId :: GetJobOutput -> Lude.Text) (\s a -> s {accountId = a} :: GetJobOutput)
{-# DEPRECATED gjoAccountId "Use generic-lens or generic-optics with 'accountId' instead." #-}

-- | The name of the vault.
--
-- /Note:/ Consider using 'vaultName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gjoVaultName :: Lens.Lens' GetJobOutput Lude.Text
gjoVaultName = Lens.lens (vaultName :: GetJobOutput -> Lude.Text) (\s a -> s {vaultName = a} :: GetJobOutput)
{-# DEPRECATED gjoVaultName "Use generic-lens or generic-optics with 'vaultName' instead." #-}

-- | The job ID whose data is downloaded.
--
-- /Note:/ Consider using 'jobId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gjoJobId :: Lens.Lens' GetJobOutput Lude.Text
gjoJobId = Lens.lens (jobId :: GetJobOutput -> Lude.Text) (\s a -> s {jobId = a} :: GetJobOutput)
{-# DEPRECATED gjoJobId "Use generic-lens or generic-optics with 'jobId' instead." #-}

instance Lude.AWSRequest GetJobOutput where
  type Rs GetJobOutput = GetJobOutputResponse
  request = Req.get glacierService
  response =
    Res.receiveBody
      ( \s h x ->
          GetJobOutputResponse'
            Lude.<$> (h Lude..#? "x-amz-sha256-tree-hash")
            Lude.<*> (h Lude..#? "Accept-Ranges")
            Lude.<*> (h Lude..#? "x-amz-archive-description")
            Lude.<*> (h Lude..#? "Content-Range")
            Lude.<*> (h Lude..#? "Content-Type")
            Lude.<*> (Lude.pure (Lude.fromEnum s))
            Lude.<*> (Lude.pure x)
      )

instance Lude.ToHeaders GetJobOutput where
  toHeaders GetJobOutput' {..} = Lude.mconcat ["Range" Lude.=# range]

instance Lude.ToPath GetJobOutput where
  toPath GetJobOutput' {..} =
    Lude.mconcat
      [ "/",
        Lude.toBS accountId,
        "/vaults/",
        Lude.toBS vaultName,
        "/jobs/",
        Lude.toBS jobId,
        "/output"
      ]

instance Lude.ToQuery GetJobOutput where
  toQuery = Lude.const Lude.mempty

-- | Contains the Amazon S3 Glacier response to your request.
--
-- /See:/ 'mkGetJobOutputResponse' smart constructor.
data GetJobOutputResponse = GetJobOutputResponse'
  { checksum ::
      Lude.Maybe Lude.Text,
    acceptRanges :: Lude.Maybe Lude.Text,
    archiveDescription :: Lude.Maybe Lude.Text,
    contentRange :: Lude.Maybe Lude.Text,
    contentType :: Lude.Maybe Lude.Text,
    status :: Lude.Int,
    body :: Lude.RsBody
  }
  deriving stock (Lude.Show, Lude.Generic)

-- | Creates a value of 'GetJobOutputResponse' with the minimum fields required to make a request.
--
-- * 'acceptRanges' - Indicates the range units accepted. For more information, see <http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html RFC2616> .
-- * 'archiveDescription' - The description of an archive.
-- * 'body' - The job data, either archive data or inventory data.
-- * 'checksum' - The checksum of the data in the response. This header is returned only when retrieving the output for an archive retrieval job. Furthermore, this header appears only under the following conditions:
--
--
--     * You get the entire range of the archive.
--
--
--     * You request a range to return of the archive that starts and ends on a multiple of 1 MB. For example, if you have an 3.1 MB archive and you specify a range to return that starts at 1 MB and ends at 2 MB, then the x-amz-sha256-tree-hash is returned as a response header.
--
--
--     * You request a range of the archive to return that starts on a multiple of 1 MB and goes to the end of the archive. For example, if you have a 3.1 MB archive and you specify a range that starts at 2 MB and ends at 3.1 MB (the end of the archive), then the x-amz-sha256-tree-hash is returned as a response header.
--
--
-- * 'contentRange' - The range of bytes returned by Amazon S3 Glacier. If only partial output is downloaded, the response provides the range of bytes Amazon S3 Glacier returned. For example, bytes 0-1048575/8388608 returns the first 1 MB from 8 MB.
-- * 'contentType' - The Content-Type depends on whether the job output is an archive or a vault inventory. For archive data, the Content-Type is application/octet-stream. For vault inventory, if you requested CSV format when you initiated the job, the Content-Type is text/csv. Otherwise, by default, vault inventory is returned as JSON, and the Content-Type is application/json.
-- * 'status' - The HTTP response code for a job output request. The value depends on whether a range was specified in the request.
mkGetJobOutputResponse ::
  -- | 'status'
  Lude.Int ->
  -- | 'body'
  Lude.RsBody ->
  GetJobOutputResponse
mkGetJobOutputResponse pStatus_ pBody_ =
  GetJobOutputResponse'
    { checksum = Lude.Nothing,
      acceptRanges = Lude.Nothing,
      archiveDescription = Lude.Nothing,
      contentRange = Lude.Nothing,
      contentType = Lude.Nothing,
      status = pStatus_,
      body = pBody_
    }

-- | The checksum of the data in the response. This header is returned only when retrieving the output for an archive retrieval job. Furthermore, this header appears only under the following conditions:
--
--
--     * You get the entire range of the archive.
--
--
--     * You request a range to return of the archive that starts and ends on a multiple of 1 MB. For example, if you have an 3.1 MB archive and you specify a range to return that starts at 1 MB and ends at 2 MB, then the x-amz-sha256-tree-hash is returned as a response header.
--
--
--     * You request a range of the archive to return that starts on a multiple of 1 MB and goes to the end of the archive. For example, if you have a 3.1 MB archive and you specify a range that starts at 2 MB and ends at 3.1 MB (the end of the archive), then the x-amz-sha256-tree-hash is returned as a response header.
--
--
--
-- /Note:/ Consider using 'checksum' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gjorsChecksum :: Lens.Lens' GetJobOutputResponse (Lude.Maybe Lude.Text)
gjorsChecksum = Lens.lens (checksum :: GetJobOutputResponse -> Lude.Maybe Lude.Text) (\s a -> s {checksum = a} :: GetJobOutputResponse)
{-# DEPRECATED gjorsChecksum "Use generic-lens or generic-optics with 'checksum' instead." #-}

-- | Indicates the range units accepted. For more information, see <http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html RFC2616> .
--
-- /Note:/ Consider using 'acceptRanges' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gjorsAcceptRanges :: Lens.Lens' GetJobOutputResponse (Lude.Maybe Lude.Text)
gjorsAcceptRanges = Lens.lens (acceptRanges :: GetJobOutputResponse -> Lude.Maybe Lude.Text) (\s a -> s {acceptRanges = a} :: GetJobOutputResponse)
{-# DEPRECATED gjorsAcceptRanges "Use generic-lens or generic-optics with 'acceptRanges' instead." #-}

-- | The description of an archive.
--
-- /Note:/ Consider using 'archiveDescription' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gjorsArchiveDescription :: Lens.Lens' GetJobOutputResponse (Lude.Maybe Lude.Text)
gjorsArchiveDescription = Lens.lens (archiveDescription :: GetJobOutputResponse -> Lude.Maybe Lude.Text) (\s a -> s {archiveDescription = a} :: GetJobOutputResponse)
{-# DEPRECATED gjorsArchiveDescription "Use generic-lens or generic-optics with 'archiveDescription' instead." #-}

-- | The range of bytes returned by Amazon S3 Glacier. If only partial output is downloaded, the response provides the range of bytes Amazon S3 Glacier returned. For example, bytes 0-1048575/8388608 returns the first 1 MB from 8 MB.
--
-- /Note:/ Consider using 'contentRange' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gjorsContentRange :: Lens.Lens' GetJobOutputResponse (Lude.Maybe Lude.Text)
gjorsContentRange = Lens.lens (contentRange :: GetJobOutputResponse -> Lude.Maybe Lude.Text) (\s a -> s {contentRange = a} :: GetJobOutputResponse)
{-# DEPRECATED gjorsContentRange "Use generic-lens or generic-optics with 'contentRange' instead." #-}

-- | The Content-Type depends on whether the job output is an archive or a vault inventory. For archive data, the Content-Type is application/octet-stream. For vault inventory, if you requested CSV format when you initiated the job, the Content-Type is text/csv. Otherwise, by default, vault inventory is returned as JSON, and the Content-Type is application/json.
--
-- /Note:/ Consider using 'contentType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gjorsContentType :: Lens.Lens' GetJobOutputResponse (Lude.Maybe Lude.Text)
gjorsContentType = Lens.lens (contentType :: GetJobOutputResponse -> Lude.Maybe Lude.Text) (\s a -> s {contentType = a} :: GetJobOutputResponse)
{-# DEPRECATED gjorsContentType "Use generic-lens or generic-optics with 'contentType' instead." #-}

-- | The HTTP response code for a job output request. The value depends on whether a range was specified in the request.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gjorsStatus :: Lens.Lens' GetJobOutputResponse Lude.Int
gjorsStatus = Lens.lens (status :: GetJobOutputResponse -> Lude.Int) (\s a -> s {status = a} :: GetJobOutputResponse)
{-# DEPRECATED gjorsStatus "Use generic-lens or generic-optics with 'status' instead." #-}

-- | The job data, either archive data or inventory data.
--
-- /Note:/ Consider using 'body' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gjorsBody :: Lens.Lens' GetJobOutputResponse Lude.RsBody
gjorsBody = Lens.lens (body :: GetJobOutputResponse -> Lude.RsBody) (\s a -> s {body = a} :: GetJobOutputResponse)
{-# DEPRECATED gjorsBody "Use generic-lens or generic-optics with 'body' instead." #-}
