{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.UpdateRelationalDatabase
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows the update of one or more attributes of a database in Amazon Lightsail.
--
-- Updates are applied immediately, or in cases where the updates could result in an outage, are applied during the database's predefined maintenance window.
-- The @update relational database@ operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.UpdateRelationalDatabase
  ( -- * Creating a request
    UpdateRelationalDatabase (..),
    mkUpdateRelationalDatabase,

    -- ** Request lenses
    urdMasterUserPassword,
    urdPubliclyAccessible,
    urdEnableBackupRetention,
    urdPreferredMaintenanceWindow,
    urdCaCertificateIdentifier,
    urdPreferredBackupWindow,
    urdApplyImmediately,
    urdRotateMasterUserPassword,
    urdDisableBackupRetention,
    urdRelationalDatabaseName,

    -- * Destructuring the response
    UpdateRelationalDatabaseResponse (..),
    mkUpdateRelationalDatabaseResponse,

    -- ** Response lenses
    urdrsOperations,
    urdrsResponseStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Lightsail.Types
import qualified Network.AWS.Prelude as Lude
import qualified Network.AWS.Request as Req
import qualified Network.AWS.Response as Res

-- | /See:/ 'mkUpdateRelationalDatabase' smart constructor.
data UpdateRelationalDatabase = UpdateRelationalDatabase'
  { masterUserPassword ::
      Lude.Maybe (Lude.Sensitive Lude.Text),
    publiclyAccessible ::
      Lude.Maybe Lude.Bool,
    enableBackupRetention ::
      Lude.Maybe Lude.Bool,
    preferredMaintenanceWindow ::
      Lude.Maybe Lude.Text,
    caCertificateIdentifier ::
      Lude.Maybe Lude.Text,
    preferredBackupWindow ::
      Lude.Maybe Lude.Text,
    applyImmediately :: Lude.Maybe Lude.Bool,
    rotateMasterUserPassword ::
      Lude.Maybe Lude.Bool,
    disableBackupRetention ::
      Lude.Maybe Lude.Bool,
    relationalDatabaseName :: Lude.Text
  }
  deriving stock (Lude.Eq, Lude.Ord, Lude.Show, Lude.Generic)
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'UpdateRelationalDatabase' with the minimum fields required to make a request.
--
-- * 'applyImmediately' - When @true@ , applies changes immediately. When @false@ , applies changes during the preferred maintenance window. Some changes may cause an outage.
--
-- Default: @false@
-- * 'caCertificateIdentifier' - Indicates the certificate that needs to be associated with the database.
-- * 'disableBackupRetention' - When @true@ , disables automated backup retention for your database.
--
-- Disabling backup retention deletes all automated database backups. Before disabling this, you may want to create a snapshot of your database using the @create relational database snapshot@ operation.
-- Updates are applied during the next maintenance window because this can result in an outage.
-- * 'enableBackupRetention' - When @true@ , enables automated backup retention for your database.
--
-- Updates are applied during the next maintenance window because this can result in an outage.
-- * 'masterUserPassword' - The password for the master user of your database. The password can include any printable ASCII character except "/", """, or "@".
--
-- Constraints: Must contain 8 to 41 characters.
-- * 'preferredBackupWindow' - The daily time range during which automated backups are created for your database if automated backups are enabled.
--
-- Constraints:
--
--     * Must be in the @hh24:mi-hh24:mi@ format.
-- Example: @16:00-16:30@
--
--
--     * Specified in Coordinated Universal Time (UTC).
--
--
--     * Must not conflict with the preferred maintenance window.
--
--
--     * Must be at least 30 minutes.
--
--
-- * 'preferredMaintenanceWindow' - The weekly time range during which system maintenance can occur on your database.
--
-- The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week.
-- Constraints:
--
--     * Must be in the @ddd:hh24:mi-ddd:hh24:mi@ format.
--
--
--     * Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
--
--
--     * Must be at least 30 minutes.
--
--
--     * Specified in Coordinated Universal Time (UTC).
--
--
--     * Example: @Tue:17:00-Tue:17:30@
--
--
-- * 'publiclyAccessible' - Specifies the accessibility options for your database. A value of @true@ specifies a database that is available to resources outside of your Lightsail account. A value of @false@ specifies a database that is available only to your Lightsail resources in the same region as your database.
-- * 'relationalDatabaseName' - The name of your database to update.
-- * 'rotateMasterUserPassword' - When @true@ , the master user password is changed to a new strong password generated by Lightsail.
--
-- Use the @get relational database master user password@ operation to get the new password.
mkUpdateRelationalDatabase ::
  -- | 'relationalDatabaseName'
  Lude.Text ->
  UpdateRelationalDatabase
mkUpdateRelationalDatabase pRelationalDatabaseName_ =
  UpdateRelationalDatabase'
    { masterUserPassword = Lude.Nothing,
      publiclyAccessible = Lude.Nothing,
      enableBackupRetention = Lude.Nothing,
      preferredMaintenanceWindow = Lude.Nothing,
      caCertificateIdentifier = Lude.Nothing,
      preferredBackupWindow = Lude.Nothing,
      applyImmediately = Lude.Nothing,
      rotateMasterUserPassword = Lude.Nothing,
      disableBackupRetention = Lude.Nothing,
      relationalDatabaseName = pRelationalDatabaseName_
    }

-- | The password for the master user of your database. The password can include any printable ASCII character except "/", """, or "@".
--
-- Constraints: Must contain 8 to 41 characters.
--
-- /Note:/ Consider using 'masterUserPassword' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdMasterUserPassword :: Lens.Lens' UpdateRelationalDatabase (Lude.Maybe (Lude.Sensitive Lude.Text))
urdMasterUserPassword = Lens.lens (masterUserPassword :: UpdateRelationalDatabase -> Lude.Maybe (Lude.Sensitive Lude.Text)) (\s a -> s {masterUserPassword = a} :: UpdateRelationalDatabase)
{-# DEPRECATED urdMasterUserPassword "Use generic-lens or generic-optics with 'masterUserPassword' instead." #-}

-- | Specifies the accessibility options for your database. A value of @true@ specifies a database that is available to resources outside of your Lightsail account. A value of @false@ specifies a database that is available only to your Lightsail resources in the same region as your database.
--
-- /Note:/ Consider using 'publiclyAccessible' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdPubliclyAccessible :: Lens.Lens' UpdateRelationalDatabase (Lude.Maybe Lude.Bool)
urdPubliclyAccessible = Lens.lens (publiclyAccessible :: UpdateRelationalDatabase -> Lude.Maybe Lude.Bool) (\s a -> s {publiclyAccessible = a} :: UpdateRelationalDatabase)
{-# DEPRECATED urdPubliclyAccessible "Use generic-lens or generic-optics with 'publiclyAccessible' instead." #-}

-- | When @true@ , enables automated backup retention for your database.
--
-- Updates are applied during the next maintenance window because this can result in an outage.
--
-- /Note:/ Consider using 'enableBackupRetention' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdEnableBackupRetention :: Lens.Lens' UpdateRelationalDatabase (Lude.Maybe Lude.Bool)
urdEnableBackupRetention = Lens.lens (enableBackupRetention :: UpdateRelationalDatabase -> Lude.Maybe Lude.Bool) (\s a -> s {enableBackupRetention = a} :: UpdateRelationalDatabase)
{-# DEPRECATED urdEnableBackupRetention "Use generic-lens or generic-optics with 'enableBackupRetention' instead." #-}

-- | The weekly time range during which system maintenance can occur on your database.
--
-- The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week.
-- Constraints:
--
--     * Must be in the @ddd:hh24:mi-ddd:hh24:mi@ format.
--
--
--     * Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
--
--
--     * Must be at least 30 minutes.
--
--
--     * Specified in Coordinated Universal Time (UTC).
--
--
--     * Example: @Tue:17:00-Tue:17:30@
--
--
--
-- /Note:/ Consider using 'preferredMaintenanceWindow' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdPreferredMaintenanceWindow :: Lens.Lens' UpdateRelationalDatabase (Lude.Maybe Lude.Text)
urdPreferredMaintenanceWindow = Lens.lens (preferredMaintenanceWindow :: UpdateRelationalDatabase -> Lude.Maybe Lude.Text) (\s a -> s {preferredMaintenanceWindow = a} :: UpdateRelationalDatabase)
{-# DEPRECATED urdPreferredMaintenanceWindow "Use generic-lens or generic-optics with 'preferredMaintenanceWindow' instead." #-}

-- | Indicates the certificate that needs to be associated with the database.
--
-- /Note:/ Consider using 'caCertificateIdentifier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdCaCertificateIdentifier :: Lens.Lens' UpdateRelationalDatabase (Lude.Maybe Lude.Text)
urdCaCertificateIdentifier = Lens.lens (caCertificateIdentifier :: UpdateRelationalDatabase -> Lude.Maybe Lude.Text) (\s a -> s {caCertificateIdentifier = a} :: UpdateRelationalDatabase)
{-# DEPRECATED urdCaCertificateIdentifier "Use generic-lens or generic-optics with 'caCertificateIdentifier' instead." #-}

-- | The daily time range during which automated backups are created for your database if automated backups are enabled.
--
-- Constraints:
--
--     * Must be in the @hh24:mi-hh24:mi@ format.
-- Example: @16:00-16:30@
--
--
--     * Specified in Coordinated Universal Time (UTC).
--
--
--     * Must not conflict with the preferred maintenance window.
--
--
--     * Must be at least 30 minutes.
--
--
--
-- /Note:/ Consider using 'preferredBackupWindow' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdPreferredBackupWindow :: Lens.Lens' UpdateRelationalDatabase (Lude.Maybe Lude.Text)
urdPreferredBackupWindow = Lens.lens (preferredBackupWindow :: UpdateRelationalDatabase -> Lude.Maybe Lude.Text) (\s a -> s {preferredBackupWindow = a} :: UpdateRelationalDatabase)
{-# DEPRECATED urdPreferredBackupWindow "Use generic-lens or generic-optics with 'preferredBackupWindow' instead." #-}

-- | When @true@ , applies changes immediately. When @false@ , applies changes during the preferred maintenance window. Some changes may cause an outage.
--
-- Default: @false@
--
-- /Note:/ Consider using 'applyImmediately' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdApplyImmediately :: Lens.Lens' UpdateRelationalDatabase (Lude.Maybe Lude.Bool)
urdApplyImmediately = Lens.lens (applyImmediately :: UpdateRelationalDatabase -> Lude.Maybe Lude.Bool) (\s a -> s {applyImmediately = a} :: UpdateRelationalDatabase)
{-# DEPRECATED urdApplyImmediately "Use generic-lens or generic-optics with 'applyImmediately' instead." #-}

-- | When @true@ , the master user password is changed to a new strong password generated by Lightsail.
--
-- Use the @get relational database master user password@ operation to get the new password.
--
-- /Note:/ Consider using 'rotateMasterUserPassword' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdRotateMasterUserPassword :: Lens.Lens' UpdateRelationalDatabase (Lude.Maybe Lude.Bool)
urdRotateMasterUserPassword = Lens.lens (rotateMasterUserPassword :: UpdateRelationalDatabase -> Lude.Maybe Lude.Bool) (\s a -> s {rotateMasterUserPassword = a} :: UpdateRelationalDatabase)
{-# DEPRECATED urdRotateMasterUserPassword "Use generic-lens or generic-optics with 'rotateMasterUserPassword' instead." #-}

-- | When @true@ , disables automated backup retention for your database.
--
-- Disabling backup retention deletes all automated database backups. Before disabling this, you may want to create a snapshot of your database using the @create relational database snapshot@ operation.
-- Updates are applied during the next maintenance window because this can result in an outage.
--
-- /Note:/ Consider using 'disableBackupRetention' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdDisableBackupRetention :: Lens.Lens' UpdateRelationalDatabase (Lude.Maybe Lude.Bool)
urdDisableBackupRetention = Lens.lens (disableBackupRetention :: UpdateRelationalDatabase -> Lude.Maybe Lude.Bool) (\s a -> s {disableBackupRetention = a} :: UpdateRelationalDatabase)
{-# DEPRECATED urdDisableBackupRetention "Use generic-lens or generic-optics with 'disableBackupRetention' instead." #-}

-- | The name of your database to update.
--
-- /Note:/ Consider using 'relationalDatabaseName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdRelationalDatabaseName :: Lens.Lens' UpdateRelationalDatabase Lude.Text
urdRelationalDatabaseName = Lens.lens (relationalDatabaseName :: UpdateRelationalDatabase -> Lude.Text) (\s a -> s {relationalDatabaseName = a} :: UpdateRelationalDatabase)
{-# DEPRECATED urdRelationalDatabaseName "Use generic-lens or generic-optics with 'relationalDatabaseName' instead." #-}

instance Lude.AWSRequest UpdateRelationalDatabase where
  type Rs UpdateRelationalDatabase = UpdateRelationalDatabaseResponse
  request = Req.postJSON lightsailService
  response =
    Res.receiveJSON
      ( \s h x ->
          UpdateRelationalDatabaseResponse'
            Lude.<$> (x Lude..?> "operations" Lude..!@ Lude.mempty)
            Lude.<*> (Lude.pure (Lude.fromEnum s))
      )

instance Lude.ToHeaders UpdateRelationalDatabase where
  toHeaders =
    Lude.const
      ( Lude.mconcat
          [ "X-Amz-Target"
              Lude.=# ("Lightsail_20161128.UpdateRelationalDatabase" :: Lude.ByteString),
            "Content-Type"
              Lude.=# ("application/x-amz-json-1.1" :: Lude.ByteString)
          ]
      )

instance Lude.ToJSON UpdateRelationalDatabase where
  toJSON UpdateRelationalDatabase' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("masterUserPassword" Lude..=) Lude.<$> masterUserPassword,
            ("publiclyAccessible" Lude..=) Lude.<$> publiclyAccessible,
            ("enableBackupRetention" Lude..=) Lude.<$> enableBackupRetention,
            ("preferredMaintenanceWindow" Lude..=)
              Lude.<$> preferredMaintenanceWindow,
            ("caCertificateIdentifier" Lude..=)
              Lude.<$> caCertificateIdentifier,
            ("preferredBackupWindow" Lude..=) Lude.<$> preferredBackupWindow,
            ("applyImmediately" Lude..=) Lude.<$> applyImmediately,
            ("rotateMasterUserPassword" Lude..=)
              Lude.<$> rotateMasterUserPassword,
            ("disableBackupRetention" Lude..=) Lude.<$> disableBackupRetention,
            Lude.Just
              ("relationalDatabaseName" Lude..= relationalDatabaseName)
          ]
      )

instance Lude.ToPath UpdateRelationalDatabase where
  toPath = Lude.const "/"

instance Lude.ToQuery UpdateRelationalDatabase where
  toQuery = Lude.const Lude.mempty

-- | /See:/ 'mkUpdateRelationalDatabaseResponse' smart constructor.
data UpdateRelationalDatabaseResponse = UpdateRelationalDatabaseResponse'
  { operations ::
      Lude.Maybe [Operation],
    responseStatus ::
      Lude.Int
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'UpdateRelationalDatabaseResponse' with the minimum fields required to make a request.
--
-- * 'operations' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
-- * 'responseStatus' - The response status code.
mkUpdateRelationalDatabaseResponse ::
  -- | 'responseStatus'
  Lude.Int ->
  UpdateRelationalDatabaseResponse
mkUpdateRelationalDatabaseResponse pResponseStatus_ =
  UpdateRelationalDatabaseResponse'
    { operations = Lude.Nothing,
      responseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- /Note:/ Consider using 'operations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdrsOperations :: Lens.Lens' UpdateRelationalDatabaseResponse (Lude.Maybe [Operation])
urdrsOperations = Lens.lens (operations :: UpdateRelationalDatabaseResponse -> Lude.Maybe [Operation]) (\s a -> s {operations = a} :: UpdateRelationalDatabaseResponse)
{-# DEPRECATED urdrsOperations "Use generic-lens or generic-optics with 'operations' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urdrsResponseStatus :: Lens.Lens' UpdateRelationalDatabaseResponse Lude.Int
urdrsResponseStatus = Lens.lens (responseStatus :: UpdateRelationalDatabaseResponse -> Lude.Int) (\s a -> s {responseStatus = a} :: UpdateRelationalDatabaseResponse)
{-# DEPRECATED urdrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
