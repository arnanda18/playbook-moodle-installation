# Install PHP Extension and make sure LAMP Pack 
apt install php-curl php-gd php-mbstring php-mcrypt php-xml php-xmlrpc

# Download DVWA and extract, recomended move to directory /var/www/html or
cd /var/www/html
git clone [link repo]

# Copy and configuration file in below
sudo cp /var/www/html/DVWA/config/config.inc.php.dist /var/www/html/DVWA/config/config.inc.php
nano /var/www/html/DVWA/config/config.inc.php

# Grant writable Permissions
sudo chown www-data:www-data /var/www/html/DVWA/hackable/uploads/
sudo chown www-data:www-data /var/www/html/DVWA/external/phpids/0.6/lib/IDS/tmp/phpids_log.txt
sudo chown www-data:www-data /var/www/html/DVWA/config

#Create Database DVWA
mysql -u root
 CREATE DATABASE db_dvwa;
 CREATE USER 'user_dvwa'@'localhost' identified by 'dbpassword';
 GRANT ALL PRIVILEGES ON db_dvwa.* TO 'user_dvwa'@'localhost';
 FLUSH PRIVILEGES;
 exit

#Edit file php.ini
php_flag magic_quotes_gpc Off
php_flag allow_url_fopen On
php_flag allow_url_include On
php_flag display_errors On


