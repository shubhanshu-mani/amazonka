{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.CreateApprovalRuleTemplate
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a template for approval rules that can then be associated with one or more repositories in your AWS account. When you associate a template with a repository, AWS CodeCommit creates an approval rule that matches the conditions of the template for all pull requests that meet the conditions of the template. For more information, see 'AssociateApprovalRuleTemplateWithRepository' .
module Network.AWS.CodeCommit.CreateApprovalRuleTemplate
  ( -- * Creating a request
    CreateApprovalRuleTemplate (..),
    mkCreateApprovalRuleTemplate,

    -- ** Request lenses
    cartApprovalRuleTemplateDescription,
    cartApprovalRuleTemplateName,
    cartApprovalRuleTemplateContent,

    -- * Destructuring the response
    CreateApprovalRuleTemplateResponse (..),
    mkCreateApprovalRuleTemplateResponse,

    -- ** Response lenses
    cartrsResponseStatus,
    cartrsApprovalRuleTemplate,
  )
where

import Network.AWS.CodeCommit.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkCreateApprovalRuleTemplate' smart constructor.
data CreateApprovalRuleTemplate = CreateApprovalRuleTemplate'
  { approvalRuleTemplateDescription ::
      Lude.Maybe Lude.Text,
    approvalRuleTemplateName :: Lude.Text,
    approvalRuleTemplateContent ::
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

-- | Creates a value of 'CreateApprovalRuleTemplate' with the minimum fields required to make a request.
--
-- * 'approvalRuleTemplateContent' - The content of the approval rule that is created on pull requests in associated repositories. If you specify one or more destination references (branches), approval rules are created in an associated repository only if their destination references (branches) match those specified in the template.
-- * 'approvalRuleTemplateDescription' - The description of the approval rule template. Consider providing a description that explains what this template does and when it might be appropriate to associate it with repositories.
-- * 'approvalRuleTemplateName' - The name of the approval rule template. Provide descriptive names, because this name is applied to the approval rules created automatically in associated repositories.
mkCreateApprovalRuleTemplate ::
  -- | 'approvalRuleTemplateName'
  Lude.Text ->
  -- | 'approvalRuleTemplateContent'
  Lude.Text ->
  CreateApprovalRuleTemplate
mkCreateApprovalRuleTemplate
  pApprovalRuleTemplateName_
  pApprovalRuleTemplateContent_ =
    CreateApprovalRuleTemplate'
      { approvalRuleTemplateDescription =
          Lude.Nothing,
        approvalRuleTemplateName = pApprovalRuleTemplateName_,
        approvalRuleTemplateContent = pApprovalRuleTemplateContent_
      }

-- | The description of the approval rule template. Consider providing a description that explains what this template does and when it might be appropriate to associate it with repositories.
--
-- /Note:/ Consider using 'approvalRuleTemplateDescription' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cartApprovalRuleTemplateDescription :: Lens.Lens' CreateApprovalRuleTemplate (Lude.Maybe Lude.Text)
cartApprovalRuleTemplateDescription = Lens.lens (approvalRuleTemplateDescription :: CreateApprovalRuleTemplate -> Lude.Maybe Lude.Text) (\s a -> s {approvalRuleTemplateDescription = a} :: CreateApprovalRuleTemplate)
{-# DEPRECATED cartApprovalRuleTemplateDescription "Use generic-lens or generic-optics with 'approvalRuleTemplateDescription' instead." #-}

-- | The name of the approval rule template. Provide descriptive names, because this name is applied to the approval rules created automatically in associated repositories.
--
-- /Note:/ Consider using 'approvalRuleTemplateName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cartApprovalRuleTemplateName :: Lens.Lens' CreateApprovalRuleTemplate Lude.Text
cartApprovalRuleTemplateName = Lens.lens (approvalRuleTemplateName :: CreateApprovalRuleTemplate -> Lude.Text) (\s a -> s {approvalRuleTemplateName = a} :: CreateApprovalRuleTemplate)
{-# DEPRECATED cartApprovalRuleTemplateName "Use generic-lens or generic-optics with 'approvalRuleTemplateName' instead." #-}

-- | The content of the approval rule that is created on pull requests in associated repositories. If you specify one or more destination references (branches), approval rules are created in an associated repository only if their destination references (branches) match those specified in the template.
--
-- /Note:/ Consider using 'approvalRuleTemplateContent' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cartApprovalRuleTemplateContent :: Lens.Lens' CreateApprovalRuleTemplate Lude.Text
cartApprovalRuleTemplateContent = Lens.lens (approvalRuleTemplateContent :: CreateApprovalRuleTemplate -> Lude.Text) (\s a -> s {approvalRuleTemplateContent = a} :: CreateApprovalRuleTemplate)
{-# DEPRECATED cartApprovalRuleTemplateContent "Use generic-lens or generic-optics with 'approvalRuleTemplateContent' instead." #-}

instance Lude.AWSRequest CreateApprovalRuleTemplate where
  type
    Rs CreateApprovalRuleTemplate =
      CreateApprovalRuleTemplateResponse
  request = Req.postJSON codeCommitService
  response =
    Res.receiveJSON
      ( \s h x ->
          CreateApprovalRuleTemplateResponse'
            Lude.<$> (Lude.pure (Lude.fromEnum s))
            Lude.<*> (x Lude..:> "approvalRuleTemplate")
      )

instance Lude.ToHeaders CreateApprovalRuleTemplate where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ( "CodeCommit_20150413.CreateApprovalRuleTemplate" ::
                          Lude.ByteString
                      ),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON CreateApprovalRuleTemplate where
  toJSON CreateApprovalRuleTemplate' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("approvalRuleTemplateDescription" Lude..=)
              Lude.<$> approvalRuleTemplateDescription,
            Lude.Just
              ("approvalRuleTemplateName" Lude..= approvalRuleTemplateName),
            Lude.Just
              ( "approvalRuleTemplateContent"
                  Lude..= approvalRuleTemplateContent
              )
          ]
      )

instance Lude.ToPath CreateApprovalRuleTemplate where
  toPath = Lude.const "/"

instance Lude.ToQuery CreateApprovalRuleTemplate where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkCreateApprovalRuleTemplateResponse' smart constructor.
data CreateApprovalRuleTemplateResponse = CreateApprovalRuleTemplateResponse'
  { responseStatus ::
      Lude.Int,
    approvalRuleTemplate ::
      ApprovalRuleTemplate
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateApprovalRuleTemplateResponse' with the minimum fields required to make a request.
--
-- * 'approvalRuleTemplate' - The content and structure of the created approval rule template.
-- * 'responseStatus' - The response status code.
mkCreateApprovalRuleTemplateResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  -- | 'approvalRuleTemplate'
  ApprovalRuleTemplate ->
  CreateApprovalRuleTemplateResponse
mkCreateApprovalRuleTemplateResponse
  pResponseStatus_
  pApprovalRuleTemplate_ =
    CreateApprovalRuleTemplateResponse'
      { responseStatus =
          pResponseStatus_,
        approvalRuleTemplate = pApprovalRuleTemplate_
      }

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cartrsResponseStatus :: Lens.Lens' CreateApprovalRuleTemplateResponse Lude.Int
cartrsResponseStatus = Lens.lens (responseStatus :: CreateApprovalRuleTemplateResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: CreateApprovalRuleTemplateResponse)
{-# DEPRECATED cartrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}

-- | The content and structure of the created approval rule template.
--
-- /Note:/ Consider using 'approvalRuleTemplate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cartrsApprovalRuleTemplate :: Lens.Lens' CreateApprovalRuleTemplateResponse ApprovalRuleTemplate
cartrsApprovalRuleTemplate = Lens.lens (approvalRuleTemplate :: CreateApprovalRuleTemplateResponse -> ApprovalRuleTemplate) (\s a -> s {approvalRuleTemplate = a} :: CreateApprovalRuleTemplateResponse)
{-# DEPRECATED cartrsApprovalRuleTemplate "Use generic-lens or generic-optics with 'approvalRuleTemplate' instead." #-}
