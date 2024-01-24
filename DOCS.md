# Home Assistant Add-on: Mattermost

This is a web service to print labels on Brother QL label printers.

## Configuration

**Note**: _Remember to restart the add-on when the configuration is changed._

### Option: `site_url`

### Option: `license_file`

Should be located in `addon_configs/`.

Insert license file.

### Option: `db_driver`

Only Support MariaDB(MySQL) or Postgres.

- PostgreSQL 11.0+
- MySQL 5.7.12, 8.0.12+ (see note below on MySQL 8 support)

MariaDB v10+ no longer functions as a MySQL drop-in replacement, and it’s not supported for Mattermost due to the requirement of MySQL 5.7.12. Prior versions of MariaDB were not officially supported but may have functioned in older Mattermost releases. If you are running MariaDB now, migrating from MariaDB to the MySQL equivalent is recommended.

It means core-mariadb is not supported.

For further information visit [Mattermost database-software](https://docs.mattermost.com/install/software-hardware-requirements.html#database-software)

### Option: `db_host`

### Option: `db_port`

### Option: `db_database`

### Option: `db_user`

### Option: `db_password`

### Option: `db_parameters_sslmode`

### Option: `db_parametes_connection_timeout`

### Option: `plugin_enable_upload`

### Option: `ssl`

### Option: `certfile`

### Option: `keyfile`

### Option: `log_level`