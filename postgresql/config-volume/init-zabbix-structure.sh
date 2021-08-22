#!/bin/bash


until pg_isready -h 127.0.0.1 -p 5432;
  do echo waiting for database; sleep 2;
done

echo "Creating schema for Zabbix installation"
zcat /config/create-zabbix-structure.sql.gz | psql -h 127.0.0.1 -U zabbix zabbix
