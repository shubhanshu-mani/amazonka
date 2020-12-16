{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.Template
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.Template
  ( Template (..),

    -- * Smart constructor
    mkTemplate,

    -- * Lenses
    tTemplateName,
    tTextPart,
    tSubjectPart,
    tHTMLPart,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | The content of the email, composed of a subject line, an HTML part, and a text-only part.
--
-- /See:/ 'mkTemplate' smart constructor.
data Template = Template'
  { -- | The name of the template. You will refer to this name when you send email using the @SendTemplatedEmail@ or @SendBulkTemplatedEmail@ operations.
    templateName :: Lude.Text,
    -- | The email body that will be visible to recipients whose email clients do not display HTML.
    textPart :: Lude.Maybe Lude.Text,
    -- | The subject line of the email.
    subjectPart :: Lude.Maybe Lude.Text,
    -- | The HTML body of the email.
    htmlPart :: Lude.Maybe Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Read, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'Template' with the minimum fields required to make a request.
--
-- * 'templateName' - The name of the template. You will refer to this name when you send email using the @SendTemplatedEmail@ or @SendBulkTemplatedEmail@ operations.
-- * 'textPart' - The email body that will be visible to recipients whose email clients do not display HTML.
-- * 'subjectPart' - The subject line of the email.
-- * 'htmlPart' - The HTML body of the email.
mkTemplate ::
  -- | 'templateName'
  Lude.Text ->
  Template
mkTemplate pTemplateName_ =
  Template'
    { templateName = pTemplateName_,
      textPart = Lude.Nothing,
      subjectPart = Lude.Nothing,
      htmlPart = Lude.Nothing
    }

-- | The name of the template. You will refer to this name when you send email using the @SendTemplatedEmail@ or @SendBulkTemplatedEmail@ operations.
--
-- /Note:/ Consider using 'templateName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tTemplateName :: Lens.Lens' Template Lude.Text
tTemplateName = Lens.lens (templateName :: Template -> Lude.Text) (\s a -> s {templateName = a} :: Template)
{-# DEPRECATED tTemplateName "Use generic-lens or generic-optics with 'templateName' instead." #-}

-- | The email body that will be visible to recipients whose email clients do not display HTML.
--
-- /Note:/ Consider using 'textPart' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tTextPart :: Lens.Lens' Template (Lude.Maybe Lude.Text)
tTextPart = Lens.lens (textPart :: Template -> Lude.Maybe Lude.Text) (\s a -> s {textPart = a} :: Template)
{-# DEPRECATED tTextPart "Use generic-lens or generic-optics with 'textPart' instead." #-}

-- | The subject line of the email.
--
-- /Note:/ Consider using 'subjectPart' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tSubjectPart :: Lens.Lens' Template (Lude.Maybe Lude.Text)
tSubjectPart = Lens.lens (subjectPart :: Template -> Lude.Maybe Lude.Text) (\s a -> s {subjectPart = a} :: Template)
{-# DEPRECATED tSubjectPart "Use generic-lens or generic-optics with 'subjectPart' instead." #-}

-- | The HTML body of the email.
--
-- /Note:/ Consider using 'htmlPart' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tHTMLPart :: Lens.Lens' Template (Lude.Maybe Lude.Text)
tHTMLPart = Lens.lens (htmlPart :: Template -> Lude.Maybe Lude.Text) (\s a -> s {htmlPart = a} :: Template)
{-# DEPRECATED tHTMLPart "Use generic-lens or generic-optics with 'htmlPart' instead." #-}

instance Lude.FromXML Template where
  parseXML x =
    Template'
      Lude.<$> (x Lude..@ "TemplateName")
      Lude.<*> (x Lude..@? "TextPart")
      Lude.<*> (x Lude..@? "SubjectPart")
      Lude.<*> (x Lude..@? "HtmlPart")

instance Lude.ToQuery Template where
  toQuery Template' {..} =
    Lude.mconcat
      [ "TemplateName" Lude.=: templateName,
        "TextPart" Lude.=: textPart,
        "SubjectPart" Lude.=: subjectPart,
        "HtmlPart" Lude.=: htmlPart
      ]