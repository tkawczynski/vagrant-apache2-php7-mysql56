#!/bin/bash

apt-get install php-xdebug
phpenmod xdebug

echo "xdebug.remote_enable=1" >> /etc/php/7.0/mods-available/xdebug.ini
echo "xdebug.remote_port=9000" >> /etc/php/7.0/mods-available/xdebug.ini
echo "xdebug.remote_host=192.168.33.1" >> /etc/php/7.0/mods-available/xdebug.ini
echo "xdebug.remote_autostart=1" >> /etc/php/7.0/mods-available/xdebug.ini
echo "xdebug.remote_connect_back=0" >> /etc/php/7.0/mods-available/xdebug.ini
echo "xdebug.remote_handler=dbgp" >> /etc/php/7.0/mods-available/xdebug.ini
echo "xdebug.remote_mode=req" >> /etc/php/7.0/mods-available/xdebug.ini
echo "xdebug.remote_cookie_expire_time=-9999" >> /etc/php/7.0/mods-available/xdebug.ini
echo "xdebug.remote_log=/tmp/xdebug.log" >> /etc/php/7.0/mods-available/xdebug.ini
echo "xdebug.var_display_max_depth=15" >> /etc/php/7.0/mods-available/xdebug.ini
echo "xdebug.profiler_enable=0" >> /etc/php/7.0/mods-available/xdebug.ini
echo "xdebug.idekey=phpstorm" >> /etc/php/7.0/mods-available/xdebug.ini
echo "xdebug.remote_connect_back=1" >> /etc/php/7.0/mods-available/xdebug.ini

service apache2 restart
