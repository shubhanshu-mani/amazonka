{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.CreateAssessmentTemplate
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an assessment template for the assessment target that is specified by the ARN of the assessment target. If the <https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html service-linked role> isn’t already registered, this action also creates and registers a service-linked role to grant Amazon Inspector access to AWS Services needed to perform security assessments.
module Network.AWS.Inspector.CreateAssessmentTemplate
  ( -- * Creating a request
    CreateAssessmentTemplate (..),
    mkCreateAssessmentTemplate,

    -- ** Request lenses
    catUserAttributesForFindings,
    catAssessmentTargetARN,
    catAssessmentTemplateName,
    catDurationInSeconds,
    catRulesPackageARNs,

    -- * Destructuring the response
    CreateAssessmentTemplateResponse (..),
    mkCreateAssessmentTemplateResponse,

    -- ** Response lenses
    crsResponseStatus,
    crsAssessmentTemplateARN,
  )
where

import Network.AWS.Inspector.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkCreateAssessmentTemplate' smart constructor.
data CreateAssessmentTemplate = CreateAssessmentTemplate'
  { userAttributesForFindings ::
      Lude.Maybe [Attribute],
    assessmentTargetARN :: Lude.Text,
    assessmentTemplateName :: Lude.Text,
    durationInSeconds :: Lude.Natural,
    rulesPackageARNs :: [Lude.Text]
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CreateAssessmentTemplate' with the minimum fields required to make a request.
--
-- * 'assessmentTargetARN' - The ARN that specifies the assessment target for which you want to create the assessment template.
-- * 'assessmentTemplateName' - The user-defined name that identifies the assessment template that you want to create. You can create several assessment templates for an assessment target. The names of the assessment templates that correspond to a particular assessment target must be unique.
-- * 'durationInSeconds' - The duration of the assessment run in seconds.
-- * 'rulesPackageARNs' - The ARNs that specify the rules packages that you want to attach to the assessment template.
-- * 'userAttributesForFindings' - The user-defined attributes that are assigned to every finding that is generated by the assessment run that uses this assessment template. An attribute is a key and value pair (an 'Attribute' object). Within an assessment template, each key must be unique.
mkCreateAssessmentTemplate ::
  -- | 'assessmentTargetARN'
  Lude.Text ->
  -- | 'assessmentTemplateName'
  Lude.Text ->
  -- | 'durationInSeconds'
  Lude.Natural ->
  CreateAssessmentTemplate
mkCreateAssessmentTemplate
  pAssessmentTargetARN_
  pAssessmentTemplateName_
  pDurationInSeconds_ =
    CreateAssessmentTemplate'
      { userAttributesForFindings =
          Lude.Nothing,
        assessmentTargetARN = pAssessmentTargetARN_,
        assessmentTemplateName = pAssessmentTemplateName_,
        durationInSeconds = pDurationInSeconds_,
        rulesPackageARNs = Lude.mempty
      }

-- | The user-defined attributes that are assigned to every finding that is generated by the assessment run that uses this assessment template. An attribute is a key and value pair (an 'Attribute' object). Within an assessment template, each key must be unique.
--
-- /Note:/ Consider using 'userAttributesForFindings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
catUserAttributesForFindings :: Lens.Lens' CreateAssessmentTemplate (Lude.Maybe [Attribute])
catUserAttributesForFindings = Lens.lens (userAttributesForFindings :: CreateAssessmentTemplate -> Lude.Maybe [Attribute]) (\s a -> s {userAttributesForFindings = a} :: CreateAssessmentTemplate)
{-# DEPRECATED catUserAttributesForFindings "Use generic-lens or generic-optics with 'userAttributesForFindings' instead." #-}

-- | The ARN that specifies the assessment target for which you want to create the assessment template.
--
-- /Note:/ Consider using 'assessmentTargetARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
catAssessmentTargetARN :: Lens.Lens' CreateAssessmentTemplate Lude.Text
catAssessmentTargetARN = Lens.lens (assessmentTargetARN :: CreateAssessmentTemplate -> Lude.Text) (\s a -> s {assessmentTargetARN = a} :: CreateAssessmentTemplate)
{-# DEPRECATED catAssessmentTargetARN "Use generic-lens or generic-optics with 'assessmentTargetARN' instead." #-}

-- | The user-defined name that identifies the assessment template that you want to create. You can create several assessment templates for an assessment target. The names of the assessment templates that correspond to a particular assessment target must be unique.
--
-- /Note:/ Consider using 'assessmentTemplateName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
catAssessmentTemplateName :: Lens.Lens' CreateAssessmentTemplate Lude.Text
catAssessmentTemplateName = Lens.lens (assessmentTemplateName :: CreateAssessmentTemplate -> Lude.Text) (\s a -> s {assessmentTemplateName = a} :: CreateAssessmentTemplate)
{-# DEPRECATED catAssessmentTemplateName "Use generic-lens or generic-optics with 'assessmentTemplateName' instead." #-}

-- | The duration of the assessment run in seconds.
--
-- /Note:/ Consider using 'durationInSeconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
catDurationInSeconds :: Lens.Lens' CreateAssessmentTemplate Lude.Natural
catDurationInSeconds = Lens.lens (durationInSeconds :: CreateAssessmentTemplate -> Lude.Natural) (\s a -> s {durationInSeconds = a} :: CreateAssessmentTemplate)
{-# DEPRECATED catDurationInSeconds "Use generic-lens or generic-optics with 'durationInSeconds' instead." #-}

-- | The ARNs that specify the rules packages that you want to attach to the assessment template.
--
-- /Note:/ Consider using 'rulesPackageARNs' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
catRulesPackageARNs :: Lens.Lens' CreateAssessmentTemplate [Lude.Text]
catRulesPackageARNs = Lens.lens (rulesPackageARNs :: CreateAssessmentTemplate -> [Lude.Text]) (\s a -> s {rulesPackageARNs = a} :: CreateAssessmentTemplate)
{-# DEPRECATED catRulesPackageARNs "Use generic-lens or generic-optics with 'rulesPackageARNs' instead." #-}

instance Lude.AWSRequest CreateAssessmentTemplate where
  type Rs CreateAssessmentTemplate = CreateAssessmentTemplateResponse
  request = Req.postJSON inspectorService
  response =
    Res.receiveJSON
      ( \s h x ->
          CreateAssessmentTemplateResponse'
            Lude.<$> (Lude.pure (Lude.fromEnum s))
            Lude.<*> (x Lude..:> "assessmentTemplateArn")
      )

instance Lude.ToHeaders CreateAssessmentTemplate where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("InspectorService.CreateAssessmentTemplate" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON CreateAssessmentTemplate where
  toJSON CreateAssessmentTemplate' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("userAttributesForFindings" Lude..=)
              Lude.<$> userAttributesForFindings,
            Lude.Just ("assessmentTargetArn" Lude..= assessmentTargetARN),
            Lude.Just
              ("assessmentTemplateName" Lude..= assessmentTemplateName),
            Lude.Just ("durationInSeconds" Lude..= durationInSeconds),
            Lude.Just ("rulesPackageArns" Lude..= rulesPackageARNs)
          ]
      )

instance Lude.ToPath CreateAssessmentTemplate where
  toPath = Lude.const "/"

instance Lude.ToQuery CreateAssessmentTemplate where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkCreateAssessmentTemplateResponse' smart constructor.
data CreateAssessmentTemplateResponse = CreateAssessmentTemplateResponse'
  { responseStatus ::
      Lude.Int,
    assessmentTemplateARN ::
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

-- | Creates a value of 'CreateAssessmentTemplateResponse' with the minimum fields required to make a request.
--
-- * 'assessmentTemplateARN' - The ARN that specifies the assessment template that is created.
-- * 'responseStatus' - The response status code.
mkCreateAssessmentTemplateResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  -- | 'assessmentTemplateARN'
  Lude.Text ->
  CreateAssessmentTemplateResponse
mkCreateAssessmentTemplateResponse
  pResponseStatus_
  pAssessmentTemplateARN_ =
    CreateAssessmentTemplateResponse'
      { responseStatus =
          pResponseStatus_,
        assessmentTemplateARN = pAssessmentTemplateARN_
      }

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crsResponseStatus :: Lens.Lens' CreateAssessmentTemplateResponse Lude.Int
crsResponseStatus = Lens.lens (responseStatus :: CreateAssessmentTemplateResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: CreateAssessmentTemplateResponse)
{-# DEPRECATED crsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}

-- | The ARN that specifies the assessment template that is created.
--
-- /Note:/ Consider using 'assessmentTemplateARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crsAssessmentTemplateARN :: Lens.Lens' CreateAssessmentTemplateResponse Lude.Text
crsAssessmentTemplateARN = Lens.lens (assessmentTemplateARN :: CreateAssessmentTemplateResponse -> Lude.Text) (\s a -> s {assessmentTemplateARN = a} :: CreateAssessmentTemplateResponse)
{-# DEPRECATED crsAssessmentTemplateARN "Use generic-lens or generic-optics with 'assessmentTemplateARN' instead." #-}
