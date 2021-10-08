config() {
  NEW="$1"
  OLD="$(dirname $NEW)/$(basename $NEW .new)"
  # If there's no config file by that name, mv it over:
  if [ ! -r $OLD ]; then
    mv $NEW $OLD
  elif [ "$(cat $OLD | md5sum)" = "$(cat $NEW | md5sum)" ]; then
    # toss the redundant copy
    rm $NEW
  fi
  # Otherwise, we leave the .new copy for the admin to consider...
}

config etc/raddb/certs/ca.cnf.new
config etc/raddb/certs/client.cnf.new
config etc/raddb/certs/inner-server.cnf.new
config etc/raddb/certs/server.cnf.new
config etc/raddb/clients.conf.new
config etc/raddb/experimental.conf.new
config etc/raddb/mods-config/sql/counter/mysql/dailycounter.conf.new
config etc/raddb/mods-config/sql/counter/mysql/expire_on_login.conf.new
config etc/raddb/mods-config/sql/counter/mysql/monthlycounter.conf.new
config etc/raddb/mods-config/sql/counter/mysql/noresetcounter.conf.new
config etc/raddb/mods-config/sql/counter/mysql/weeklycounter.conf.new
config etc/raddb/mods-config/sql/counter/postgresql/dailycounter.conf.new
config etc/raddb/mods-config/sql/counter/postgresql/expire_on_login.conf.new
config etc/raddb/mods-config/sql/counter/postgresql/monthlycounter.conf.new
config etc/raddb/mods-config/sql/counter/postgresql/noresetcounter.conf.new
config etc/raddb/mods-config/sql/counter/postgresql/weeklycounter.conf.new
config etc/raddb/mods-config/sql/counter/sqlite/dailycounter.conf.new
config etc/raddb/mods-config/sql/counter/sqlite/expire_on_login.conf.new
config etc/raddb/mods-config/sql/counter/sqlite/monthlycounter.conf.new
config etc/raddb/mods-config/sql/counter/sqlite/noresetcounter.conf.new
config etc/raddb/mods-config/sql/counter/sqlite/weeklycounter.conf.new
config etc/raddb/mods-config/sql/cui/mysql/queries.conf.new
config etc/raddb/mods-config/sql/cui/postgresql/queries.conf.new
config etc/raddb/mods-config/sql/cui/sqlite/queries.conf.new
config etc/raddb/mods-config/sql/dhcp/mssql/queries.conf.new
config etc/raddb/mods-config/sql/dhcp/mysql/queries.conf.new
config etc/raddb/mods-config/sql/dhcp/oracle/queries.conf.new
config etc/raddb/mods-config/sql/dhcp/postgresql/queries.conf.new
config etc/raddb/mods-config/sql/dhcp/sqlite/queries.conf.new
config etc/raddb/mods-config/sql/ippool-dhcp/mssql/queries.conf.new
config etc/raddb/mods-config/sql/ippool-dhcp/mysql/queries.conf.new
config etc/raddb/mods-config/sql/ippool-dhcp/oracle/queries.conf.new
config etc/raddb/mods-config/sql/ippool-dhcp/postgresql/queries.conf.new
config etc/raddb/mods-config/sql/ippool-dhcp/sqlite/queries.conf.new
config etc/raddb/mods-config/sql/ippool/mongo/queries.conf.new
config etc/raddb/mods-config/sql/ippool/mssql/queries.conf.new
config etc/raddb/mods-config/sql/ippool/mysql/queries.conf.new
config etc/raddb/mods-config/sql/ippool/oracle/queries.conf.new
config etc/raddb/mods-config/sql/ippool/postgresql/queries.conf.new
config etc/raddb/mods-config/sql/ippool/sqlite/queries.conf.new
config etc/raddb/mods-config/sql/main/mongo/queries.conf.new
config etc/raddb/mods-config/sql/main/mssql/queries.conf.new
config etc/raddb/mods-config/sql/main/mysql/extras/wimax/queries.conf.new
config etc/raddb/mods-config/sql/main/mysql/queries.conf.new
config etc/raddb/mods-config/sql/main/oracle/queries.conf.new
config etc/raddb/mods-config/sql/main/postgresql/extras/voip-postpaid.conf.new
config etc/raddb/mods-config/sql/main/postgresql/queries.conf.new
config etc/raddb/mods-config/sql/main/sqlite/queries.conf.new
config etc/raddb/mods-config/sql/moonshot-targeted-ids/mysql/queries.conf.new
config etc/raddb/mods-config/sql/moonshot-targeted-ids/postgresql/queries.conf.new
config etc/raddb/mods-config/sql/moonshot-targeted-ids/sqlite/queries.conf.new
config etc/raddb/mods-config/unbound/default.conf.new
config etc/raddb/proxy.conf.new
config etc/raddb/radiusd.conf.new
config etc/raddb/templates.conf.new
config etc/raddb/trigger.conf.new

echo "NOTE: Please, run 'radiusd -X' after initial installation to verify the"
echo "      installation and generate server certificates."

