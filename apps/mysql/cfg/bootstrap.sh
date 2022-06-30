#!/bin/bash -e

. /opt/bitnami/scripts/libmysql.sh

mysql_ensure_database_exists wp1
mysql_ensure_database_exists wp2

mysql_ensure_user_exists wp1 -p ${WP1_PASS}
mysql_ensure_user_exists wp2 -p ${WP2_PASS}

mysql_ensure_user_has_database_privileges wp1 wp1
mysql_ensure_user_has_database_privileges wp2 wp2
