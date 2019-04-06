#!bin/bash

sudo systemctl stop postgresql
sudo systemctl start postgresql

sudo -u postgres psql -c 'CREATE DATABASE hive;
CREATE USER hive WITH PASSWORD 'hive';
GRANT ALL PRIVILEGES ON DATABASE hive TO hive;
CREATE DATABASE oozie ;
CREATE USER oozie WITH PASSWORD 'oozie';
GRANT ALL PRIVILEGES ON DATABASE oozie TO oozie;
CREATE DATABASE ranger;
CREATE USER rangeradmin WITH PASSWORD 'ranger';
GRANT ALL PRIVILEGES ON DATABASE ranger TO rangeradmin;
CREATE DATABASE rangerkms;
CREATE USER rangerkms WITH PASSWORD 'rangerkms';
GRANT ALL PRIVILEGES ON DATABASE rangerkms TO rangerkms;'
