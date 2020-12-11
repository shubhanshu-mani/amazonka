-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.Artifact
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.Artifact
  ( Artifact (..),

    -- * Smart constructor
    mkArtifact,

    -- * Lenses
    artLocation,
    artName,
    artRevision,
  )
where

import Network.AWS.CodePipeline.Types.ArtifactLocation
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Represents information about an artifact that is worked on by actions in the pipeline.
--
-- /See:/ 'mkArtifact' smart constructor.
data Artifact = Artifact'
  { location :: Lude.Maybe ArtifactLocation,
    name :: Lude.Maybe Lude.Text,
    revision :: Lude.Maybe Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'Artifact' with the minimum fields required to make a request.
--
-- * 'location' - The location of an artifact.
-- * 'name' - The artifact's name.
-- * 'revision' - The artifact's revision ID. Depending on the type of object, this could be a commit ID (GitHub) or a revision ID (Amazon S3).
mkArtifact ::
  Artifact
mkArtifact =
  Artifact'
    { location = Lude.Nothing,
      name = Lude.Nothing,
      revision = Lude.Nothing
    }

-- | The location of an artifact.
--
-- /Note:/ Consider using 'location' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
artLocation :: Lens.Lens' Artifact (Lude.Maybe ArtifactLocation)
artLocation = Lens.lens (location :: Artifact -> Lude.Maybe ArtifactLocation) (\s a -> s {location = a} :: Artifact)
{-# DEPRECATED artLocation "Use generic-lens or generic-optics with 'location' instead." #-}

-- | The artifact's name.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
artName :: Lens.Lens' Artifact (Lude.Maybe Lude.Text)
artName = Lens.lens (name :: Artifact -> Lude.Maybe Lude.Text) (\s a -> s {name = a} :: Artifact)
{-# DEPRECATED artName "Use generic-lens or generic-optics with 'name' instead." #-}

-- | The artifact's revision ID. Depending on the type of object, this could be a commit ID (GitHub) or a revision ID (Amazon S3).
--
-- /Note:/ Consider using 'revision' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
artRevision :: Lens.Lens' Artifact (Lude.Maybe Lude.Text)
artRevision = Lens.lens (revision :: Artifact -> Lude.Maybe Lude.Text) (\s a -> s {revision = a} :: Artifact)
{-# DEPRECATED artRevision "Use generic-lens or generic-optics with 'revision' instead." #-}

instance Lude.FromJSON Artifact where
  parseJSON =
    Lude.withObject
      "Artifact"
      ( \x ->
          Artifact'
            Lude.<$> (x Lude..:? "location")
            Lude.<*> (x Lude..:? "name")
            Lude.<*> (x Lude..:? "revision")
      )
