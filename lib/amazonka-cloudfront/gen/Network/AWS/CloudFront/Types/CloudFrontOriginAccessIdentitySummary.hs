-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.CloudFrontOriginAccessIdentitySummary
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.CloudFrontOriginAccessIdentitySummary
  ( CloudFrontOriginAccessIdentitySummary (..),

    -- * Smart constructor
    mkCloudFrontOriginAccessIdentitySummary,

    -- * Lenses
    cfoaisId,
    cfoaisS3CanonicalUserId,
    cfoaisComment,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Summary of the information about a CloudFront origin access identity.
--
-- /See:/ 'mkCloudFrontOriginAccessIdentitySummary' smart constructor.
data CloudFrontOriginAccessIdentitySummary = CloudFrontOriginAccessIdentitySummary'
  { id ::
      Lude.Text,
    s3CanonicalUserId ::
      Lude.Text,
    comment ::
      Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CloudFrontOriginAccessIdentitySummary' with the minimum fields required to make a request.
--
-- * 'comment' - The comment for this origin access identity, as originally specified when created.
-- * 'id' - The ID for the origin access identity. For example: @E74FTE3AJFJ256A@ .
-- * 's3CanonicalUserId' - The Amazon S3 canonical user ID for the origin access identity, which you use when giving the origin access identity read permission to an object in Amazon S3.
mkCloudFrontOriginAccessIdentitySummary ::
  -- | 'id'
  Lude.Text ->
  -- | 's3CanonicalUserId'
  Lude.Text ->
  -- | 'comment'
  Lude.Text ->
  CloudFrontOriginAccessIdentitySummary
mkCloudFrontOriginAccessIdentitySummary
  pId_
  pS3CanonicalUserId_
  pComment_ =
    CloudFrontOriginAccessIdentitySummary'
      { id = pId_,
        s3CanonicalUserId = pS3CanonicalUserId_,
        comment = pComment_
      }

-- | The ID for the origin access identity. For example: @E74FTE3AJFJ256A@ .
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfoaisId :: Lens.Lens' CloudFrontOriginAccessIdentitySummary Lude.Text
cfoaisId = Lens.lens (id :: CloudFrontOriginAccessIdentitySummary -> Lude.Text) (\s a -> s {id = a} :: CloudFrontOriginAccessIdentitySummary)
{-# DEPRECATED cfoaisId "Use generic-lens or generic-optics with 'id' instead." #-}

-- | The Amazon S3 canonical user ID for the origin access identity, which you use when giving the origin access identity read permission to an object in Amazon S3.
--
-- /Note:/ Consider using 's3CanonicalUserId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfoaisS3CanonicalUserId :: Lens.Lens' CloudFrontOriginAccessIdentitySummary Lude.Text
cfoaisS3CanonicalUserId = Lens.lens (s3CanonicalUserId :: CloudFrontOriginAccessIdentitySummary -> Lude.Text) (\s a -> s {s3CanonicalUserId = a} :: CloudFrontOriginAccessIdentitySummary)
{-# DEPRECATED cfoaisS3CanonicalUserId "Use generic-lens or generic-optics with 's3CanonicalUserId' instead." #-}

-- | The comment for this origin access identity, as originally specified when created.
--
-- /Note:/ Consider using 'comment' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cfoaisComment :: Lens.Lens' CloudFrontOriginAccessIdentitySummary Lude.Text
cfoaisComment = Lens.lens (comment :: CloudFrontOriginAccessIdentitySummary -> Lude.Text) (\s a -> s {comment = a} :: CloudFrontOriginAccessIdentitySummary)
{-# DEPRECATED cfoaisComment "Use generic-lens or generic-optics with 'comment' instead." #-}

instance Lude.FromXML CloudFrontOriginAccessIdentitySummary where
  parseXML x =
    CloudFrontOriginAccessIdentitySummary'
      Lude.<$> (x Lude..@ "Id")
      Lude.<*> (x Lude..@ "S3CanonicalUserId")
      Lude.<*> (x Lude..@ "Comment")
