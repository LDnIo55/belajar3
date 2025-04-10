-- File: pdns-mariadb/init.sql
CREATE DATABASE IF NOT EXISTS powerdns;
CREATE USER IF NOT EXISTS 'pdns'@'%' IDENTIFIED BY 'pdnspass';
GRANT ALL PRIVILEGES ON powerdns.* TO 'pdns'@'%';
FLUSH PRIVILEGES;
