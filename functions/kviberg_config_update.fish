function kviberg_config_update
  rake db:drop db:create db:schema:load > /dev/null
  mysql -uroot kviberg-config-development < db/export.sql > /dev/null

  set -l ip_address (myip)

  for site in 1:dekho 2:bikroy 3:ikman 4:tonaton
    set -l parts (echo $site | tr ':' "\n")
    mysql -uroot kviberg-config-development\
          -e "insert into domains (site_id, domain_name) values ($parts[1], '$parts[2].kviberg-mobile.$ip_address.xip.io');"
  end

  redis-cli flushall > /dev/null
  echo "flush_all" | nc 127.0.0.1 11211 > /dev/null
end

