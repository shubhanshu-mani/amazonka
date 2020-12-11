-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SQS.Types.BatchResultErrorEntry
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SQS.Types.BatchResultErrorEntry
  ( BatchResultErrorEntry (..),

    -- * Smart constructor
    mkBatchResultErrorEntry,

    -- * Lenses
    breeMessage,
    breeId,
    breeSenderFault,
    breeCode,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Gives a detailed description of the result of an action on each entry in the request.
--
-- /See:/ 'mkBatchResultErrorEntry' smart constructor.
data BatchResultErrorEntry = BatchResultErrorEntry'
  { message ::
      Lude.Maybe Lude.Text,
    id :: Lude.Text,
    senderFault :: Lude.Bool,
    code :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'BatchResultErrorEntry' with the minimum fields required to make a request.
--
-- * 'code' - An error code representing why the action failed on this entry.
-- * 'id' - The @Id@ of an entry in a batch request.
-- * 'message' - A message explaining why the action failed on this entry.
-- * 'senderFault' - Specifies whether the error happened due to the caller of the batch API action.
mkBatchResultErrorEntry ::
  -- | 'id'
  Lude.Text ->
  -- | 'senderFault'
  Lude.Bool ->
  -- | 'code'
  Lude.Text ->
  BatchResultErrorEntry
mkBatchResultErrorEntry pId_ pSenderFault_ pCode_ =
  BatchResultErrorEntry'
    { message = Lude.Nothing,
      id = pId_,
      senderFault = pSenderFault_,
      code = pCode_
    }

-- | A message explaining why the action failed on this entry.
--
-- /Note:/ Consider using 'message' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
breeMessage :: Lens.Lens' BatchResultErrorEntry (Lude.Maybe Lude.Text)
breeMessage = Lens.lens (message :: BatchResultErrorEntry -> Lude.Maybe Lude.Text) (\s a -> s {message = a} :: BatchResultErrorEntry)
{-# DEPRECATED breeMessage "Use generic-lens or generic-optics with 'message' instead." #-}

-- | The @Id@ of an entry in a batch request.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
breeId :: Lens.Lens' BatchResultErrorEntry Lude.Text
breeId = Lens.lens (id :: BatchResultErrorEntry -> Lude.Text) (\s a -> s {id = a} :: BatchResultErrorEntry)
{-# DEPRECATED breeId "Use generic-lens or generic-optics with 'id' instead." #-}

-- | Specifies whether the error happened due to the caller of the batch API action.
--
-- /Note:/ Consider using 'senderFault' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
breeSenderFault :: Lens.Lens' BatchResultErrorEntry Lude.Bool
breeSenderFault = Lens.lens (senderFault :: BatchResultErrorEntry -> Lude.Bool) (\s a -> s {senderFault = a} :: BatchResultErrorEntry)
{-# DEPRECATED breeSenderFault "Use generic-lens or generic-optics with 'senderFault' instead." #-}

-- | An error code representing why the action failed on this entry.
--
-- /Note:/ Consider using 'code' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
breeCode :: Lens.Lens' BatchResultErrorEntry Lude.Text
breeCode = Lens.lens (code :: BatchResultErrorEntry -> Lude.Text) (\s a -> s {code = a} :: BatchResultErrorEntry)
{-# DEPRECATED breeCode "Use generic-lens or generic-optics with 'code' instead." #-}

instance Lude.FromXML BatchResultErrorEntry where
  parseXML x =
    BatchResultErrorEntry'
      Lude.<$> (x Lude..@? "Message")
      Lude.<*> (x Lude..@ "Id")
      Lude.<*> (x Lude..@ "SenderFault")
      Lude.<*> (x Lude..@ "Code")
