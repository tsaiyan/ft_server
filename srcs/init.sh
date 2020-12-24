service mysql start
service nginx start
service php7.3-fpm start
cd tmp
tar xzvf latest.tar.gz
cp -a /tmp/wordpress/. /var/www/html/wordpress/
cd /var/www/wordpress/
touch .htaccess
mkdir /var/www/html/wordpress/wp-content/upgrade

#msql for wordpress
echo "CREATE DATABASE wordpress;" | mysql -u root -p --skip-password
echo "CREATE USER 'medovar'@'localhost' IDENTIFIED BY 'password';" | mysql -u root -p --skip-password
echo "GRANT ALL PRIVILEGES ON wordpress.* TO medovar@localhost;" | mysql -u root -p --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root -p --skip-password
#msql for phpmyadmin
echo "CREATE DATABASE phpmyadmin;" | mysql -u root -p --skip-password
echo "GRANT ALL PRIVILEGES ON phpmyadmin.* TO medovar@localhost;" | mysql -u root -p --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root -p --skip-password
cp -r /tmp/wp-config.php /var/www/html/wordpress/wp-config.php
tar xvf /tmp/phpMyAdmin-4.9.7-all-languages.tar.gz
cp -r /tmp/phpMyAdmin-4.9.7-all-languages /var/www/html/phpmyadmin
chown -R www-data:www-data /var/www/html/phpmyadmin
cp -r /tmp/config.inc.php /var/www/html/phpmyadmin/config.inc.php
rm -rf /tmp/*
cd /lolcat-master/bin
gem install lolcat
cd
rm master.zip
rm -rf /lolcat-master/
toilet -f ivrit 'Server online!' | boxes -d cat -a hc -p h8 | lolcat -t -a -d 5
echo 'powered by tsaiyan' | lolcat -t -a -d 500000000
bash
