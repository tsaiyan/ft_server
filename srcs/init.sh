#* ************************************************************************** *#
#*                                                                            *#
#*                                                        :::      ::::::::   *#
#*   ft_server                                           :+:      :+:    :+:  *#
#*                                                    +:+ +:+         +:+     *#
#*   By: tsaiyan <tsaiyan@42.fr>                    +#+  +:+       +#+        *#
#*                                                +#+#+#+#+#+   +#+           *#
#*   Created: 2020/10/31 14:37:58 by tsaiyan           #+#    #+#             *#
#*   Updated: 2020/10/31 14:38:00 by tsaiyan          ###   ########.fr       *#
#*                                                                            *#
#* ************************************************************************** *#

#start services
service mysql start
service nginx start
service php7.3-fpm start

#install wp
cd tmp
tar xzvf latest.tar.gz
cp -a /tmp/wordpress/. /var/www/html/wordpress/
cd /var/www/wordpress/

#msql for wordpress
echo "CREATE DATABASE wordpress;" | mysql -u root -p --skip-password
echo "CREATE USER 'medovar'@'localhost' IDENTIFIED BY 'password';" | mysql -u root -p --skip-password
echo "GRANT ALL PRIVILEGES ON wordpress.* TO medovar@localhost;" | mysql -u root -p --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root -p --skip-password

#msql for phpmyadmin
echo "CREATE DATABASE phpmyadmin;" | mysql -u root -p --skip-password
echo "GRANT ALL PRIVILEGES ON phpmyadmin.* TO medovar@localhost;" | mysql -u root -p --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root -p --skip-password

#copy configs
cp -r /tmp/wp-config.php /var/www/html/wordpress/wp-config.php
tar xvf /tmp/phpMyAdmin-4.9.7-all-languages.tar.gz
cp -r /tmp/phpMyAdmin-4.9.7-all-languages /var/www/html/phpmyadmin
cp -r /tmp/config.inc.php /var/www/html/phpmyadmin/config.inc.php

#visual and clean
gem install lolcat
rm ../master.zip
rm -rf ../lolcat-master
rm -rf *
rm /var/www/html/index.nginx-debian.html
toilet -f ivrit 'Server online!' | boxes -d cat -a hc -p h8 | lolcat -t -a -d 1
echo 'powered by tsaiyan' | lolcat -t -a -d 500000000
bash
