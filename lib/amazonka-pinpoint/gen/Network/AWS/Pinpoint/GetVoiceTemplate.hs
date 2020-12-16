{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.GetVoiceTemplate
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the content and settings of a message template for messages that are sent through the voice channel.
module Network.AWS.Pinpoint.GetVoiceTemplate
  ( -- * Creating a request
    GetVoiceTemplate (..),
    mkGetVoiceTemplate,

    -- ** Request lenses
    gvtTemplateName,
    gvtVersion,

    -- * Destructuring the response
    GetVoiceTemplateResponse (..),
    mkGetVoiceTemplateResponse,

    -- ** Response lenses
    gvtrsVoiceTemplateResponse,
    gvtrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkGetVoiceTemplate' smart constructor.
data GetVoiceTemplate = GetVoiceTemplate'
  { -- | The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
    templateName :: Lude.Text,
    -- | The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link>Template Versions resource.
    --
    -- If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.
    -- If you don't specify a value for this parameter, Amazon Pinpoint does the following:
    --
    --     * For a get operation, retrieves information about the active version of the template.
    --
    --
    --     * For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.
    --
    --
    --     * For a delete operation, deletes the template, including all versions of the template.
    version :: Lude.Maybe Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetVoiceTemplate' with the minimum fields required to make a request.
--
-- * 'templateName' - The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
-- * 'version' - The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link>Template Versions resource.
--
-- If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.
-- If you don't specify a value for this parameter, Amazon Pinpoint does the following:
--
--     * For a get operation, retrieves information about the active version of the template.
--
--
--     * For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.
--
--
--     * For a delete operation, deletes the template, including all versions of the template.
mkGetVoiceTemplate ::
  -- | 'templateName'
  Lude.Text ->
  GetVoiceTemplate
mkGetVoiceTemplate pTemplateName_ =
  GetVoiceTemplate'
    { templateName = pTemplateName_,
      version = Lude.Nothing
    }

-- | The name of the message template. A template name must start with an alphanumeric character and can contain a maximum of 128 characters. The characters can be alphanumeric characters, underscores (_), or hyphens (-). Template names are case sensitive.
--
-- /Note:/ Consider using 'templateName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gvtTemplateName :: Lens.Lens' GetVoiceTemplate Lude.Text
gvtTemplateName = Lens.lens (templateName :: GetVoiceTemplate -> Lude.Text) (\s a -> s {templateName = a} :: GetVoiceTemplate)
{-# DEPRECATED gvtTemplateName "Use generic-lens or generic-optics with 'templateName' instead." #-}

-- | The unique identifier for the version of the message template to update, retrieve information about, or delete. To retrieve identifiers and other information for all the versions of a template, use the <link>Template Versions resource.
--
-- If specified, this value must match the identifier for an existing template version. If specified for an update operation, this value must match the identifier for the latest existing version of the template. This restriction helps ensure that race conditions don't occur.
-- If you don't specify a value for this parameter, Amazon Pinpoint does the following:
--
--     * For a get operation, retrieves information about the active version of the template.
--
--
--     * For an update operation, saves the updates to (overwrites) the latest existing version of the template, if the create-new-version parameter isn't used or is set to false.
--
--
--     * For a delete operation, deletes the template, including all versions of the template.
--
--
--
-- /Note:/ Consider using 'version' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gvtVersion :: Lens.Lens' GetVoiceTemplate (Lude.Maybe Lude.Text)
gvtVersion = Lens.lens (version :: GetVoiceTemplate -> Lude.Maybe Lude.Text) (\s a -> s {version = a} :: GetVoiceTemplate)
{-# DEPRECATED gvtVersion "Use generic-lens or generic-optics with 'version' instead." #-}

instance Lude.AWSRequest GetVoiceTemplate where
  type Rs GetVoiceTemplate = GetVoiceTemplateResponse
  request = Req.get pinpointService
  response =
    Res.receiveJSON
      ( \s h x ->
          GetVoiceTemplateResponse'
            Lude.<$> (Lude.eitherParseJSON x) Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders GetVoiceTemplate where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToPath GetVoiceTemplate where
  toPath GetVoiceTemplate' {..} =
    Lude.mconcat ["/v1/templates/", Lude.toBS templateName, "/voice"]

instance Lude.ToQuery GetVoiceTemplate where
  toQuery GetVoiceTemplate' {..} =
    Lude.mconcat ["version" Lude.=: version]

-- | /See:/ 'mkGetVoiceTemplateResponse' smart constructor.
data GetVoiceTemplateResponse = GetVoiceTemplateResponse'
  { voiceTemplateResponse :: VoiceTemplateResponse,
    -- | The response status code.
    responseStatus :: Lude.Int
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'GetVoiceTemplateResponse' with the minimum fields required to make a request.
--
-- * 'voiceTemplateResponse' -
-- * 'responseStatus' - The response status code.
mkGetVoiceTemplateResponse ::
  -- | 'voiceTemplateResponse'
  VoiceTemplateResponse ->
  -- | 'responseStatus'
  Lude.Int ->
  GetVoiceTemplateResponse
mkGetVoiceTemplateResponse pVoiceTemplateResponse_ pResponseStatus_ =
  GetVoiceTemplateResponse'
    { voiceTemplateResponse =
        pVoiceTemplateResponse_,
      responseStatus = pResponseStatus_
    }

-- | Undocumented field.
--
-- /Note:/ Consider using 'voiceTemplateResponse' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gvtrsVoiceTemplateResponse :: Lens.Lens' GetVoiceTemplateResponse VoiceTemplateResponse
gvtrsVoiceTemplateResponse = Lens.lens (voiceTemplateResponse :: GetVoiceTemplateResponse -> VoiceTemplateResponse) (\s a -> s {voiceTemplateResponse = a} :: GetVoiceTemplateResponse)
{-# DEPRECATED gvtrsVoiceTemplateResponse "Use generic-lens or generic-optics with 'voiceTemplateResponse' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gvtrsResponseStatus :: Lens.Lens' GetVoiceTemplateResponse Lude.Int
gvtrsResponseStatus = Lens.lens (responseStatus :: GetVoiceTemplateResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: GetVoiceTemplateResponse)
{-# DEPRECATED gvtrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}