# Home Assistant Add-on: Mattermost

This is a Home-Assistant Add-on to serve Mattermost.

It's primarily aimed for family use.

_Working On: Ingress_

You can customize option in web interface after deploy, but it won't last if container volume is lost.

Make FR for adding more option. You can search available option in [Environment configuration settings](https://docs.mattermost.com/configure/environment-configuration-settings.html).

## Configuration

**Note**: _Remember to restart the add-on when the configuration is changed._

### Option: `site_url`

The URL that users use to access Mattermost. The port number is required if it’s not a standard port, such as 80 or 443. This field is required.

Select the Test Live URL button in the System Console to validate the Site URL.

For further information, visit [Site URL](https://docs.mattermost.com/configure/environment-configuration-settings.html#site-url).

### Option: `license_file`

Should be located in `addon_configs/`.

Insert your own license file.

Otherwise, it will install team version.

For further information, visit [License file Location](https://docs.mattermost.com/configure/environment-configuration-settings.html#license-file-location).

### Option: `db_driver`

Only Support MariaDB(MySQL) or Postgres.

- PostgreSQL 11.0+
- MySQL 5.7.12, 8.0.12+ (see note below on MySQL 8 support)

MariaDB v10+ no longer functions as a MySQL drop-in replacement, and it’s not supported for Mattermost due to the requirement of MySQL 5.7.12. Prior versions of MariaDB were not officially supported but may have functioned in older Mattermost releases. If you are running MariaDB now, migrating from MariaDB to the MySQL equivalent is recommended.

**It means any version of core-mariadb is not supported in Mattermost!**

For further information visit [Driver Name](https://docs.mattermost.com/configure/environment-configuration-settings.html#driver-name).

### Option: `db_host`

### Option: `db_port`

### Option: `db_database`

### Option: `db_user`

### Option: `db_password`

### Option: `db_parameters_sslmode`

### Option: `db_parameters_connection_timeout`

### Option: `plugin_enable_upload`

Enable or disable plugin upload.

`false` by default.

Consider increasing `FileSettings.MaxFileSize` if unable to upload.

### Option: `performance_monitoring_enabled`

Enable or disable performance monitoring.

If `true`, listen to `:8067`.

`false` by default.

For further information, visit [Enable performance monitoring](https://docs.mattermost.com/configure/environment-configuration-settings.html#enable-performance-monitoring).

### Option: `ssl`

Connection security between Mattermost clients and the server.

For further information, visit [Web server connection security](https://docs.mattermost.com/configure/environment-configuration-settings.html#web-server-connection-security).

### Option: `certfile`

The path to the certificate file to use for TLS connection security.

Must in `/ssl/`

For further information visit [TLS certificate file](https://docs.mattermost.com/configure/environment-configuration-settings.html#tls-certificate-file).

### Option: `keyfile`

The path to the TLS key file to use for TLS connection security.

Must in `/ssl/`

For further information visit [TLS key file](https://docs.mattermost.com/configure/environment-configuration-settings.html#tls-key-file).

### Option: `log_level`