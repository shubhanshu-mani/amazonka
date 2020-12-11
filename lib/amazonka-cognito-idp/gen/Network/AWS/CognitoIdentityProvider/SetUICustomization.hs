{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.SetUICustomization
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the UI customization information for a user pool's built-in app UI.
--
-- You can specify app UI customization settings for a single client (with a specific @clientId@ ) or for all clients (by setting the @clientId@ to @ALL@ ). If you specify @ALL@ , the default configuration will be used for every client that has no UI customization set previously. If you specify UI customization settings for a particular client, it will no longer fall back to the @ALL@ configuration.
module Network.AWS.CognitoIdentityProvider.SetUICustomization
  ( -- * Creating a request
    SetUICustomization (..),
    mkSetUICustomization,

    -- ** Request lenses
    suicClientId,
    suicCSS,
    suicImageFile,
    suicUserPoolId,

    -- * Destructuring the response
    SetUICustomizationResponse (..),
    mkSetUICustomizationResponse,

    -- ** Response lenses
    suicrsResponseStatus,
    suicrsUICustomization,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkSetUICustomization' smart constructor.
data SetUICustomization = SetUICustomization'
  { clientId ::
      Lude.Maybe (Lude.Sensitive Lude.Text),
    cSS :: Lude.Maybe Lude.Text,
    imageFile :: Lude.Maybe Lude.Base64,
    userPoolId :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'SetUICustomization' with the minimum fields required to make a request.
--
-- * 'cSS' - The CSS values in the UI customization.
-- * 'clientId' - The client ID for the client app.
-- * 'imageFile' - The uploaded logo image for the UI customization.--
-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- The underlying isomorphism will encode to Base64 representation during
-- serialisation, and decode from Base64 representation during deserialisation.
-- This 'Lens' accepts and returns only raw unencoded data.
-- * 'userPoolId' - The user pool ID for the user pool.
mkSetUICustomization ::
  -- | 'userPoolId'
  Lude.Text ->
  SetUICustomization
mkSetUICustomization pUserPoolId_ =
  SetUICustomization'
    { clientId = Lude.Nothing,
      cSS = Lude.Nothing,
      imageFile = Lude.Nothing,
      userPoolId = pUserPoolId_
    }

-- | The client ID for the client app.
--
-- /Note:/ Consider using 'clientId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
suicClientId :: Lens.Lens' SetUICustomization (Lude.Maybe (Lude.Sensitive Lude.Text))
suicClientId = Lens.lens (clientId :: SetUICustomization -> Lude.Maybe (Lude.Sensitive Lude.Text)) (\s a -> s {clientId = a} :: SetUICustomization)
{-# DEPRECATED suicClientId "Use generic-lens or generic-optics with 'clientId' instead." #-}

-- | The CSS values in the UI customization.
--
-- /Note:/ Consider using 'cSS' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
suicCSS :: Lens.Lens' SetUICustomization (Lude.Maybe Lude.Text)
suicCSS = Lens.lens (cSS :: SetUICustomization -> Lude.Maybe Lude.Text) (\s a -> s {cSS = a} :: SetUICustomization)
{-# DEPRECATED suicCSS "Use generic-lens or generic-optics with 'cSS' instead." #-}

-- | The uploaded logo image for the UI customization.--
-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- The underlying isomorphism will encode to Base64 representation during
-- serialisation, and decode from Base64 representation during deserialisation.
-- This 'Lens' accepts and returns only raw unencoded data.
--
-- /Note:/ Consider using 'imageFile' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
suicImageFile :: Lens.Lens' SetUICustomization (Lude.Maybe Lude.Base64)
suicImageFile = Lens.lens (imageFile :: SetUICustomization -> Lude.Maybe Lude.Base64) (\s a -> s {imageFile = a} :: SetUICustomization)
{-# DEPRECATED suicImageFile "Use generic-lens or generic-optics with 'imageFile' instead." #-}

-- | The user pool ID for the user pool.
--
-- /Note:/ Consider using 'userPoolId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
suicUserPoolId :: Lens.Lens' SetUICustomization Lude.Text
suicUserPoolId = Lens.lens (userPoolId :: SetUICustomization -> Lude.Text) (\s a -> s {userPoolId = a} :: SetUICustomization)
{-# DEPRECATED suicUserPoolId "Use generic-lens or generic-optics with 'userPoolId' instead." #-}

instance Lude.AWSRequest SetUICustomization where
  type Rs SetUICustomization = SetUICustomizationResponse
  request = Req.postJSON cognitoIdentityProviderService
  response =
    Res.receiveJSON
      ( \s h x ->
          SetUICustomizationResponse'
            Lude.<$> (Lude.pure (Lude.fromEnum s))
            Lude.<*> (x Lude..:> "UICustomization")
      )

instance Lude.ToHeaders SetUICustomization where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ( "AWSCognitoIdentityProviderService.SetUICustomization" ::
                          Lude.ByteString
                      ),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON SetUICustomization where
  toJSON SetUICustomization' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("ClientId" Lude..=) Lude.<$> clientId,
            ("CSS" Lude..=) Lude.<$> cSS,
            ("ImageFile" Lude..=) Lude.<$> imageFile,
            Lude.Just ("UserPoolId" Lude..= userPoolId)
          ]
      )

instance Lude.ToPath SetUICustomization where
  toPath = Lude.const "/"

instance Lude.ToQuery SetUICustomization where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkSetUICustomizationResponse' smart constructor.
data SetUICustomizationResponse = SetUICustomizationResponse'
  { responseStatus ::
      Lude.Int,
    uICustomization ::
      UICustomizationType
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'SetUICustomizationResponse' with the minimum fields required to make a request.
--
-- * 'responseStatus' - The response status code.
-- * 'uICustomization' - The UI customization information.
mkSetUICustomizationResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  -- | 'uICustomization'
  UICustomizationType ->
  SetUICustomizationResponse
mkSetUICustomizationResponse pResponseStatus_ pUICustomization_ =
  SetUICustomizationResponse'
    { responseStatus = pResponseStatus_,
      uICustomization = pUICustomization_
    }

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
suicrsResponseStatus :: Lens.Lens' SetUICustomizationResponse Lude.Int
suicrsResponseStatus = Lens.lens (responseStatus :: SetUICustomizationResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: SetUICustomizationResponse)
{-# DEPRECATED suicrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}

-- | The UI customization information.
--
-- /Note:/ Consider using 'uICustomization' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
suicrsUICustomization :: Lens.Lens' SetUICustomizationResponse UICustomizationType
suicrsUICustomization = Lens.lens (uICustomization :: SetUICustomizationResponse -> UICustomizationType) (\s a -> s {uICustomization = a} :: SetUICustomizationResponse)
{-# DEPRECATED suicrsUICustomization "Use generic-lens or generic-optics with 'uICustomization' instead." #-}
