#!/usr/bin/env bash

set -eu
# set -x
# set -o pipefail

initial_password=$(grep 'temporary password' {{ mysql_datadir }}/error.log | awk  '{print $NF}')

{{ mysql_basedir }}/mysql/bin/mysql -uroot -p${initial_password} --connect-expired-password -Nbe "SET PASSWORD = '{{ mysql_root_password }}';ALTER USER 'root'@'localhost' PASSWORD EXPIRE NEVER;flush privileges;"
