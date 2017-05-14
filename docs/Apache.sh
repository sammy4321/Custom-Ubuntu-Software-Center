#!/bin/bash
sudo apt install apache2
sudo find /var/www/html -type d -exec chmod 755 {} \;
sudo find /var/www/html -type f -exec chmod 644 {} \;

sudo echo -e "<IFModule mod_dir.c> \n DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm\n</IfModule>\n\n# vim: syntax=apache ts=4 sw=4 sts=4 sr noet " >  /etc/apache2/mods-enabled/dir.conf
