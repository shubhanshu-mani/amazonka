-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.CustomSMSLambdaVersionConfigType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.CustomSMSLambdaVersionConfigType
  ( CustomSMSLambdaVersionConfigType (..),

    -- * Smart constructor
    mkCustomSMSLambdaVersionConfigType,

    -- * Lenses
    csmslvctLambdaVersion,
    csmslvctLambdaARN,
  )
where

import Network.AWS.CognitoIdentityProvider.Types.CustomSMSSenderLambdaVersionType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | A custom SMS sender Lambda configuration type.
--
-- /See:/ 'mkCustomSMSLambdaVersionConfigType' smart constructor.
data CustomSMSLambdaVersionConfigType = CustomSMSLambdaVersionConfigType'
  { lambdaVersion ::
      CustomSMSSenderLambdaVersionType,
    lambdaARN :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'CustomSMSLambdaVersionConfigType' with the minimum fields required to make a request.
--
-- * 'lambdaARN' - The Lambda Amazon Resource Name of the Lambda function that Amazon Cognito triggers to send SMS notifications to users.
-- * 'lambdaVersion' - The Lambda version represents the signature of the "request" attribute in the "event" information Amazon Cognito passes to your custom SMS Lambda function. The only supported value is @V1_0@ .
mkCustomSMSLambdaVersionConfigType ::
  -- | 'lambdaVersion'
  CustomSMSSenderLambdaVersionType ->
  -- | 'lambdaARN'
  Lude.Text ->
  CustomSMSLambdaVersionConfigType
mkCustomSMSLambdaVersionConfigType pLambdaVersion_ pLambdaARN_ =
  CustomSMSLambdaVersionConfigType'
    { lambdaVersion =
        pLambdaVersion_,
      lambdaARN = pLambdaARN_
    }

-- | The Lambda version represents the signature of the "request" attribute in the "event" information Amazon Cognito passes to your custom SMS Lambda function. The only supported value is @V1_0@ .
--
-- /Note:/ Consider using 'lambdaVersion' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csmslvctLambdaVersion :: Lens.Lens' CustomSMSLambdaVersionConfigType CustomSMSSenderLambdaVersionType
csmslvctLambdaVersion = Lens.lens (lambdaVersion :: CustomSMSLambdaVersionConfigType -> CustomSMSSenderLambdaVersionType) (\s a -> s {lambdaVersion = a} :: CustomSMSLambdaVersionConfigType)
{-# DEPRECATED csmslvctLambdaVersion "Use generic-lens or generic-optics with 'lambdaVersion' instead." #-}

-- | The Lambda Amazon Resource Name of the Lambda function that Amazon Cognito triggers to send SMS notifications to users.
--
-- /Note:/ Consider using 'lambdaARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
csmslvctLambdaARN :: Lens.Lens' CustomSMSLambdaVersionConfigType Lude.Text
csmslvctLambdaARN = Lens.lens (lambdaARN :: CustomSMSLambdaVersionConfigType -> Lude.Text) (\s a -> s {lambdaARN = a} :: CustomSMSLambdaVersionConfigType)
{-# DEPRECATED csmslvctLambdaARN "Use generic-lens or generic-optics with 'lambdaARN' instead." #-}

instance Lude.FromJSON CustomSMSLambdaVersionConfigType where
  parseJSON =
    Lude.withObject
      "CustomSMSLambdaVersionConfigType"
      ( \x ->
          CustomSMSLambdaVersionConfigType'
            Lude.<$> (x Lude..: "LambdaVersion") Lude.<*> (x Lude..: "LambdaArn")
      )

instance Lude.ToJSON CustomSMSLambdaVersionConfigType where
  toJSON CustomSMSLambdaVersionConfigType' {..} =
    Lude.object
      ( Lude.catMaybes
          [ Lude.Just ("LambdaVersion" Lude..= lambdaVersion),
            Lude.Just ("LambdaArn" Lude..= lambdaARN)
          ]
      )
