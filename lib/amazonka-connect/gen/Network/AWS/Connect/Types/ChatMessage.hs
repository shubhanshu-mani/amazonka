{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.ChatMessage
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.ChatMessage
  ( ChatMessage (..),

    -- * Smart constructor
    mkChatMessage,

    -- * Lenses
    cmContent,
    cmContentType,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | A chat message.
--
-- /See:/ 'mkChatMessage' smart constructor.
data ChatMessage = ChatMessage'
  { -- | The content of the chat message.
    content :: Lude.Text,
    -- | The type of the content. Supported types are text/plain.
    contentType :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'ChatMessage' with the minimum fields required to make a request.
--
-- * 'content' - The content of the chat message.
-- * 'contentType' - The type of the content. Supported types are text/plain.
mkChatMessage ::
  -- | 'content'
  Lude.Text ->
  -- | 'contentType'
  Lude.Text ->
  ChatMessage
mkChatMessage pContent_ pContentType_ =
  ChatMessage' {content = pContent_, contentType = pContentType_}

-- | The content of the chat message.
--
-- /Note:/ Consider using 'content' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cmContent :: Lens.Lens' ChatMessage Lude.Text
cmContent = Lens.lens (content :: ChatMessage -> Lude.Text) (\s a -> s {content = a} :: ChatMessage)
{-# DEPRECATED cmContent "Use generic-lens or generic-optics with 'content' instead." #-}

-- | The type of the content. Supported types are text/plain.
--
-- /Note:/ Consider using 'contentType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cmContentType :: Lens.Lens' ChatMessage Lude.Text
cmContentType = Lens.lens (contentType :: ChatMessage -> Lude.Text) (\s a -> s {contentType = a} :: ChatMessage)
{-# DEPRECATED cmContentType "Use generic-lens or generic-optics with 'contentType' instead." #-}

instance Lude.ToJSON ChatMessage where
  toJSON ChatMessage' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("Content" Lude..= content),
            Lude.Just ("ContentType" Lude..= contentType)
          ]
      )