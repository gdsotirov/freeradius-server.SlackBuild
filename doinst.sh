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
config etc/raddb/certs/server.cnf.new
config etc/raddb/clients.conf.new
config etc/raddb/eap.conf.new
config etc/raddb/experimental.conf.new
config etc/raddb/policy.conf.new
config etc/raddb/proxy.conf.new
config etc/raddb/radiusd.conf.new
config etc/raddb/sql.conf.new
config etc/raddb/sql/mssql/dialup.conf.new
config etc/raddb/sql/mysql/counter.conf.new
config etc/raddb/sql/mysql/cui.conf.new
config etc/raddb/sql/mysql/dialup.conf.new
config etc/raddb/sql/mysql/ippool.conf.new
config etc/raddb/sql/mysql/wimax.conf.new
config etc/raddb/sql/oracle/dialup.conf.new
config etc/raddb/sql/oracle/ippool.conf.new
config etc/raddb/sql/postgresql/counter.conf.new
config etc/raddb/sql/postgresql/dialup.conf.new
config etc/raddb/sql/postgresql/ippool.conf.new
config etc/raddb/sql/postgresql/voip-postpaid.conf.new
config etc/raddb/sqlippool.conf.new
config etc/raddb/templates.conf.new
config etc/rc.d/rc.radiusd.new

echo "NOTE: Please, run 'radiusd -X' after initial installation to verify the"
echo "      installation and generate server certificates."

