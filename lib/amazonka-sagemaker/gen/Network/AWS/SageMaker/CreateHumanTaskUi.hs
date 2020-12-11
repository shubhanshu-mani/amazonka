{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.CreateHumanTaskUi
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Defines the settings you will use for the human review workflow user interface. Reviewers will see a three-panel interface with an instruction area, the item to review, and an input area.
module Network.AWS.SageMaker.CreateHumanTaskUi
  ( -- * Creating a request
    CreateHumanTaskUi (..),
    mkCreateHumanTaskUi,

    -- ** Request lenses
    chtuTags,
    chtuHumanTaskUiName,
    chtuUiTemplate,

    -- * Destructuring the response
    CreateHumanTaskUiResponse (..),
    mkCreateHumanTaskUiResponse,

    -- ** Response lenses
    chtursResponseStatus,
    chtursHumanTaskUiARN,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res
import Network.AWS.SageMaker.Types

-- | /See:/ 'mkCreateHumanTaskUi' smart constructor.
data CreateHumanTaskUi = CreateHumanTaskUi'
  { tags ::
      Lude.Maybe [Tag],
    humanTaskUiName :: Lude.Text,
    uiTemplate :: UiTemplate
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateHumanTaskUi' with the minimum fields required to make a request.
--
-- * 'humanTaskUiName' - The name of the user interface you are creating.
-- * 'tags' - An array of key-value pairs that contain metadata to help you categorize and organize a human review workflow user interface. Each tag consists of a key and a value, both of which you define.
-- * 'uiTemplate' - Undocumented field.
mkCreateHumanTaskUi ::
  -- | 'humanTaskUiName'
  Lude.Text ->
  -- | 'uiTemplate'
  UiTemplate ->
  CreateHumanTaskUi
mkCreateHumanTaskUi pHumanTaskUiName_ pUiTemplate_ =
  CreateHumanTaskUi'
    { tags = Lude.Nothing,
      humanTaskUiName = pHumanTaskUiName_,
      uiTemplate = pUiTemplate_
    }

-- | An array of key-value pairs that contain metadata to help you categorize and organize a human review workflow user interface. Each tag consists of a key and a value, both of which you define.
--
-- /Note:/ Consider using 'tags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chtuTags :: Lens.Lens' CreateHumanTaskUi (Lude.Maybe [Tag])
chtuTags = Lens.lens (tags :: CreateHumanTaskUi -> Lude.Maybe [Tag]) (\s a -> s {tags = a} :: CreateHumanTaskUi)
{-# DEPRECATED chtuTags "Use generic-lens or generic-optics with 'tags' instead." #-}

-- | The name of the user interface you are creating.
--
-- /Note:/ Consider using 'humanTaskUiName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chtuHumanTaskUiName :: Lens.Lens' CreateHumanTaskUi Lude.Text
chtuHumanTaskUiName = Lens.lens (humanTaskUiName :: CreateHumanTaskUi -> Lude.Text) (\s a -> s {humanTaskUiName = a} :: CreateHumanTaskUi)
{-# DEPRECATED chtuHumanTaskUiName "Use generic-lens or generic-optics with 'humanTaskUiName' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'uiTemplate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chtuUiTemplate :: Lens.Lens' CreateHumanTaskUi UiTemplate
chtuUiTemplate = Lens.lens (uiTemplate :: CreateHumanTaskUi -> UiTemplate) (\s a -> s {uiTemplate = a} :: CreateHumanTaskUi)
{-# DEPRECATED chtuUiTemplate "Use generic-lens or generic-optics with 'uiTemplate' instead." #-}

instance Lude.AWSRequest CreateHumanTaskUi where
  type Rs CreateHumanTaskUi = CreateHumanTaskUiResponse
  request = Req.postJSON sageMakerService
  response =
    Res.receiveJSON
      ( \s h x ->
          CreateHumanTaskUiResponse'
            Lude.<$> (Lude.pure (Lude.fromEnum s))
            Lude.<*> (x Lude..:> "HumanTaskUiArn")
      )

instance Lude.ToHeaders CreateHumanTaskUi where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("SageMaker.CreateHumanTaskUi" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON CreateHumanTaskUi where
  toJSON CreateHumanTaskUi' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("Tags" Lude..=) Lude.<$> tags,
            Lude.Just ("HumanTaskUiName" Lude..= humanTaskUiName),
            Lude.Just ("UiTemplate" Lude..= uiTemplate)
          ]
      )

instance Lude.ToPath CreateHumanTaskUi where
  toPath = Lude.const "/"

instance Lude.ToQuery CreateHumanTaskUi where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkCreateHumanTaskUiResponse' smart constructor.
data CreateHumanTaskUiResponse = CreateHumanTaskUiResponse'
  { responseStatus ::
      Lude.Int,
    humanTaskUiARN :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateHumanTaskUiResponse' with the minimum fields required to make a request.
--
-- * 'humanTaskUiARN' - The Amazon Resource Name (ARN) of the human review workflow user interface you create.
-- * 'responseStatus' - The response status code.
mkCreateHumanTaskUiResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  -- | 'humanTaskUiARN'
  Lude.Text ->
  CreateHumanTaskUiResponse
mkCreateHumanTaskUiResponse pResponseStatus_ pHumanTaskUiARN_ =
  CreateHumanTaskUiResponse'
    { responseStatus = pResponseStatus_,
      humanTaskUiARN = pHumanTaskUiARN_
    }

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chtursResponseStatus :: Lens.Lens' CreateHumanTaskUiResponse Lude.Int
chtursResponseStatus = Lens.lens (responseStatus :: CreateHumanTaskUiResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: CreateHumanTaskUiResponse)
{-# DEPRECATED chtursResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}

-- | The Amazon Resource Name (ARN) of the human review workflow user interface you create.
--
-- /Note:/ Consider using 'humanTaskUiARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
chtursHumanTaskUiARN :: Lens.Lens' CreateHumanTaskUiResponse Lude.Text
chtursHumanTaskUiARN = Lens.lens (humanTaskUiARN :: CreateHumanTaskUiResponse -> Lude.Text) (\s a -> s {humanTaskUiARN = a} :: CreateHumanTaskUiResponse)
{-# DEPRECATED chtursHumanTaskUiARN "Use generic-lens or generic-optics with 'humanTaskUiARN' instead." #-}
