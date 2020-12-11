{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.DescribeExpressions
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the expressions configured for the search domain. Can be limited to specific expressions by name. By default, shows all expressions and includes any pending changes to the configuration. Set the @Deployed@ option to @true@ to show the active configuration and exclude pending changes. For more information, see <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html Configuring Expressions> in the /Amazon CloudSearch Developer Guide/ .
module Network.AWS.CloudSearch.DescribeExpressions
  ( -- * Creating a request
    DescribeExpressions (..),
    mkDescribeExpressions,

    -- ** Request lenses
    deDeployed,
    deExpressionNames,
    deDomainName,

    -- * Destructuring the response
    DescribeExpressionsResponse (..),
    mkDescribeExpressionsResponse,

    -- ** Response lenses
    drsResponseStatus,
    drsExpressions,
  )
where

import Network.AWS.CloudSearch.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | Container for the parameters to the @'DescribeDomains' @ operation. Specifies the name of the domain you want to describe. To restrict the response to particular expressions, specify the names of the expressions you want to describe. To show the active configuration and exclude any pending changes, set the @Deployed@ option to @true@ .
--
-- /See:/ 'mkDescribeExpressions' smart constructor.
data DescribeExpressions = DescribeExpressions'
  { deployed ::
      Lude.Maybe Lude.Bool,
    expressionNames :: Lude.Maybe [Lude.Text],
    domainName :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DescribeExpressions' with the minimum fields required to make a request.
--
-- * 'deployed' - Whether to display the deployed configuration (@true@ ) or include any pending changes (@false@ ). Defaults to @false@ .
-- * 'domainName' - The name of the domain you want to describe.
-- * 'expressionNames' - Limits the @'DescribeExpressions' @ response to the specified expressions. If not specified, all expressions are shown.
mkDescribeExpressions ::
  -- | 'domainName'
  Lude.Text ->
  DescribeExpressions
mkDescribeExpressions pDomainName_ =
  DescribeExpressions'
    { deployed = Lude.Nothing,
      expressionNames = Lude.Nothing,
      domainName = pDomainName_
    }

-- | Whether to display the deployed configuration (@true@ ) or include any pending changes (@false@ ). Defaults to @false@ .
--
-- /Note:/ Consider using 'deployed' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
deDeployed :: Lens.Lens' DescribeExpressions (Lude.Maybe Lude.Bool)
deDeployed = Lens.lens (deployed :: DescribeExpressions -> Lude.Maybe Lude.Bool) (\s a -> s {deployed = a} :: DescribeExpressions)
{-# DEPRECATED deDeployed "Use generic-lens or generic-optics with 'deployed' instead." #-}

-- | Limits the @'DescribeExpressions' @ response to the specified expressions. If not specified, all expressions are shown.
--
-- /Note:/ Consider using 'expressionNames' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
deExpressionNames :: Lens.Lens' DescribeExpressions (Lude.Maybe [Lude.Text])
deExpressionNames = Lens.lens (expressionNames :: DescribeExpressions -> Lude.Maybe [Lude.Text]) (\s a -> s {expressionNames = a} :: DescribeExpressions)
{-# DEPRECATED deExpressionNames "Use generic-lens or generic-optics with 'expressionNames' instead." #-}

-- | The name of the domain you want to describe.
--
-- /Note:/ Consider using 'domainName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
deDomainName :: Lens.Lens' DescribeExpressions Lude.Text
deDomainName = Lens.lens (domainName :: DescribeExpressions -> Lude.Text) (\s a -> s {domainName = a} :: DescribeExpressions)
{-# DEPRECATED deDomainName "Use generic-lens or generic-optics with 'domainName' instead." #-}

instance Lude.AWSRequest DescribeExpressions where
  type Rs DescribeExpressions = DescribeExpressionsResponse
  request = Req.postQuery cloudSearchService
  response =
    Res.receiveXMLWrapper
      "DescribeExpressionsResult"
      ( \s h x ->
          DescribeExpressionsResponse'
            Lude.<$> (Lude.pure (Lude.fromEnum s))
            Lude.<*> ( x Lude..@? "Expressions" Lude..!@ Lude.mempty
                         Lude.>>= Lude.parseXMLList "member"
                     )
      )

instance Lude.ToHeaders DescribeExpressions where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToPath DescribeExpressions where
  toPath = Lude.const "/"

instance Lude.ToQuery DescribeExpressions where
  toQuery DescribeExpressions' {..} =
    Lude.mconcat
      [ "Action" Lude.=: ("DescribeExpressions" :: Lude.ByteString),
        "Version" Lude.=: ("2013-01-01" :: Lude.ByteString),
        "Deployed" Lude.=: deployed,
        "ExpressionNames"
          Lude.=: Lude.toQuery (Lude.toQueryList "member" Lude.<$> expressionNames),
        "DomainName" Lude.=: domainName
      ]

-- | The result of a @DescribeExpressions@ request. Contains the expressions configured for the domain specified in the request.
--
-- /See:/ 'mkDescribeExpressionsResponse' smart constructor.
data DescribeExpressionsResponse = DescribeExpressionsResponse'
  { responseStatus ::
      Lude.Int,
    expressions :: [ExpressionStatus]
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'DescribeExpressionsResponse' with the minimum fields required to make a request.
--
-- * 'expressions' - The expressions configured for the domain.
-- * 'responseStatus' - The response status code.
mkDescribeExpressionsResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  DescribeExpressionsResponse
mkDescribeExpressionsResponse pResponseStatus_ =
  DescribeExpressionsResponse'
    { responseStatus = pResponseStatus_,
      expressions = Lude.mempty
    }

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsResponseStatus :: Lens.Lens' DescribeExpressionsResponse Lude.Int
drsResponseStatus = Lens.lens (responseStatus :: DescribeExpressionsResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: DescribeExpressionsResponse)
{-# DEPRECATED drsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}

-- | The expressions configured for the domain.
--
-- /Note:/ Consider using 'expressions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsExpressions :: Lens.Lens' DescribeExpressionsResponse [ExpressionStatus]
drsExpressions = Lens.lens (expressions :: DescribeExpressionsResponse -> [ExpressionStatus]) (\s a -> s {expressions = a} :: DescribeExpressionsResponse)
{-# DEPRECATED drsExpressions "Use generic-lens or generic-optics with 'expressions' instead." #-}
