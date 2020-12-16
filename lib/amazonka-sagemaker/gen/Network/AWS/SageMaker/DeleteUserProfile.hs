{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.DeleteUserProfile
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a user profile. When a user profile is deleted, the user loses access to their EFS volume, including data, notebooks, and other artifacts.
module Network.AWS.SageMaker.DeleteUserProfile
  ( -- * Creating a request
    DeleteUserProfile (..),
    mkDeleteUserProfile,

    -- ** Request lenses
    dupfUserProfileName,
    dupfDomainId,

    -- * Destructuring the response
    DeleteUserProfileResponse (..),
    mkDeleteUserProfileResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.SageMaker.Types

-- | /See:/ 'mkDeleteUserProfile' smart constructor.
data DeleteUserProfile = DeleteUserProfile'
  { -- | The user profile name.
    userProfileName :: Lude.Text,
    -- | The domain ID.
    domainId :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DeleteUserProfile' with the minimum fields required to make a request.
--
-- * 'userProfileName' - The user profile name.
-- * 'domainId' - The domain ID.
mkDeleteUserProfile ::
  -- | 'userProfileName'
  Lude.Text ->
  -- | 'domainId'
  Lude.Text ->
  DeleteUserProfile
mkDeleteUserProfile pUserProfileName_ pDomainId_ =
  DeleteUserProfile'
    { userProfileName = pUserProfileName_,
      domainId = pDomainId_
    }

-- | The user profile name.
--
-- /Note:/ Consider using 'userProfileName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dupfUserProfileName :: Lens.Lens' DeleteUserProfile Lude.Text
dupfUserProfileName = Lens.lens (userProfileName :: DeleteUserProfile -> Lude.Text) (\s a -> s {userProfileName = a} :: DeleteUserProfile)
{-# DEPRECATED dupfUserProfileName "Use generic-lens or generic-optics with 'userProfileName' instead." #-}

-- | The domain ID.
--
-- /Note:/ Consider using 'domainId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dupfDomainId :: Lens.Lens' DeleteUserProfile Lude.Text
dupfDomainId = Lens.lens (domainId :: DeleteUserProfile -> Lude.Text) (\s a -> s {domainId = a} :: DeleteUserProfile)
{-# DEPRECATED dupfDomainId "Use generic-lens or generic-optics with 'domainId' instead." #-}

instance Lude.AWSRequest DeleteUserProfile where
  type Rs DeleteUserProfile = DeleteUserProfileResponse
  request = Req.postJSON sageMakerService
  response = Res.receiveNull DeleteUserProfileResponse'

instance Lude.ToHeaders DeleteUserProfile where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("SageMaker.DeleteUserProfile" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON DeleteUserProfile where
  toJSON DeleteUserProfile' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("UserProfileName" Lude..= userProfileName),
            Lude.Just ("DomainId" Lude..= domainId)
          ]
      )

instance Lude.ToPath DeleteUserProfile where
  toPath = Lude.const "/"

instance Lude.ToQuery DeleteUserProfile where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkDeleteUserProfileResponse' smart constructor.
data DeleteUserProfileResponse = DeleteUserProfileResponse'
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DeleteUserProfileResponse' with the minimum fields required to make a request.
mkDeleteUserProfileResponse ::
  DeleteUserProfileResponse
mkDeleteUserProfileResponse = DeleteUserProfileResponse'