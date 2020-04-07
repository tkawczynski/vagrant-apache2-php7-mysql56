#!/bin/bash
apt-get update
apt-get install -y apache2
echo "ServerName 192.168.33.11" >> /etc/apache2/apache2.conf
apt-get install -y php libapache2-mod-php php-mcrypt php-mysql

a2enmod rewrite
a2enmod ssl
a2ensite default-ssl

sed -i "s/DocumentRoot \/var\/www\/html/DocumentRoot \/vagrant\/html/g" /etc/apache2/sites-available/000-default.conf
sed -i "s/DocumentRoot \/var\/www\/html/DocumentRoot \/vagrant\/html/g" /etc/apache2/sites-available/default-ssl.conf

# Enable .htaccess support
sed -i "s/AllowOverride.*/AllowOverride All/g" /etc/apache2/apache2.conf
sed -i "s/Require all.*/Require all granted/g" /etc/apache2/apache2.conf
sed -i "s/Directory \/var\/www/Directory \/vagrant\/html/g" /etc/apache2/apache2.conf

sed -i "s/APACHE_RUN_USER.*/APACHE_RUN_USER=vagrant/g" /etc/apache2/envvars
sed -i "s/APACHE_RUN_GROUP.*/APACHE_RUN_GROUP=vagrant/g" /etc/apache2/envvars

service apache2 restart

