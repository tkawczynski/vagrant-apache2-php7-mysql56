#!/bin/bash

apt-get update
debconf-set-selections <<< 'mysql-server mysql-server/root_password password pass'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password pass'
apt-get update
apt-get install -y mysql-server
	
mysql -uroot -ppass -e"CREATE DATABASE wp_db;"
mysql -uroot -ppass -e"GRANT ALL ON wp_db.* to 'wp_user'@'%' identified by 'wp_pass';"

