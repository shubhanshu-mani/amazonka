{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.UpdateDatastore
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the settings of a data store.
module Network.AWS.IoTAnalytics.UpdateDatastore
  ( -- * Creating a request
    UpdateDatastore (..),
    mkUpdateDatastore,

    -- ** Request lenses
    uRetentionPeriod,
    uDatastoreStorage,
    uDatastoreName,

    -- * Destructuring the response
    UpdateDatastoreResponse (..),
    mkUpdateDatastoreResponse,
  )
where

import Network.AWS.IoTAnalytics.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkUpdateDatastore' smart constructor.
data UpdateDatastore = UpdateDatastore'
  { retentionPeriod ::
      Lude.Maybe RetentionPeriod,
    datastoreStorage :: Lude.Maybe DatastoreStorage,
    datastoreName :: Lude.Text
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'UpdateDatastore' with the minimum fields required to make a request.
--
-- * 'datastoreName' - The name of the data store to be updated.
-- * 'datastoreStorage' - Where data store data is stored. You can choose one of @serviceManagedS3@ or @customerManagedS3@ storage. If not specified, the default is@serviceManagedS3@ . You cannot change this storage option after the data store is created.
-- * 'retentionPeriod' - How long, in days, message data is kept for the data store. The retention period cannot be updated if the data store's S3 storage is customer-managed.
mkUpdateDatastore ::
  -- | 'datastoreName'
  Lude.Text ->
  UpdateDatastore
mkUpdateDatastore pDatastoreName_ =
  UpdateDatastore'
    { retentionPeriod = Lude.Nothing,
      datastoreStorage = Lude.Nothing,
      datastoreName = pDatastoreName_
    }

-- | How long, in days, message data is kept for the data store. The retention period cannot be updated if the data store's S3 storage is customer-managed.
--
-- /Note:/ Consider using 'retentionPeriod' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uRetentionPeriod :: Lens.Lens' UpdateDatastore (Lude.Maybe RetentionPeriod)
uRetentionPeriod = Lens.lens (retentionPeriod :: UpdateDatastore -> Lude.Maybe RetentionPeriod) (\s a -> s {retentionPeriod = a} :: UpdateDatastore)
{-# DEPRECATED uRetentionPeriod "Use generic-lens or generic-optics with 'retentionPeriod' instead." #-}

-- | Where data store data is stored. You can choose one of @serviceManagedS3@ or @customerManagedS3@ storage. If not specified, the default is@serviceManagedS3@ . You cannot change this storage option after the data store is created.
--
-- /Note:/ Consider using 'datastoreStorage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uDatastoreStorage :: Lens.Lens' UpdateDatastore (Lude.Maybe DatastoreStorage)
uDatastoreStorage = Lens.lens (datastoreStorage :: UpdateDatastore -> Lude.Maybe DatastoreStorage) (\s a -> s {datastoreStorage = a} :: UpdateDatastore)
{-# DEPRECATED uDatastoreStorage "Use generic-lens or generic-optics with 'datastoreStorage' instead." #-}

-- | The name of the data store to be updated.
--
-- /Note:/ Consider using 'datastoreName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uDatastoreName :: Lens.Lens' UpdateDatastore Lude.Text
uDatastoreName = Lens.lens (datastoreName :: UpdateDatastore -> Lude.Text) (\s a -> s {datastoreName = a} :: UpdateDatastore)
{-# DEPRECATED uDatastoreName "Use generic-lens or generic-optics with 'datastoreName' instead." #-}

instance Lude.AWSRequest UpdateDatastore where
  type Rs UpdateDatastore = UpdateDatastoreResponse
  request = Req.putJSON ioTAnalyticsService
  response = Res.receiveNull UpdateDatastoreResponse'

instance Lude.ToHeaders UpdateDatastore where
  toHeaders = Lude.const Lude.mempty

instance Lude.ToJSON UpdateDatastore where
  toJSON UpdateDatastore' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("retentionPeriod" Lude..=) Lude.<$> retentionPeriod,
            ("datastoreStorage" Lude..=) Lude.<$> datastoreStorage
          ]
      )

instance Lude.ToPath UpdateDatastore where
  toPath UpdateDatastore' {..} =
    Lude.mconcat ["/datastores/", Lude.toBS datastoreName]

instance Lude.ToQuery UpdateDatastore where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkUpdateDatastoreResponse' smart constructor.
data UpdateDatastoreResponse = UpdateDatastoreResponse'
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'UpdateDatastoreResponse' with the minimum fields required to make a request.
mkUpdateDatastoreResponse ::
  UpdateDatastoreResponse
mkUpdateDatastoreResponse = UpdateDatastoreResponse'
