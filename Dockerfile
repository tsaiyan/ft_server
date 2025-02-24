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

FROM debian:buster

RUN apt update
RUN apt -y install wget vim
RUN apt -y install nginx
RUN apt -y install mariadb-server
RUN apt-get -y install libnss3-tools
RUN apt -y install php-mbstring php php-zip php-gd php-mysql php-fpm php-curl php-json php-cgi php-xml
RUN wget -P /tmp/ https://wordpress.org/latest.tar.gz 
RUN wget -P /tmp/ https://files.phpmyadmin.net/phpMyAdmin/4.9.7/phpMyAdmin-4.9.7-all-languages.tar.gz

COPY /srcs/init.sh .
COPY /srcs/default ./etc/nginx/sites-available/default
COPY /srcs/wp-config.php /tmp/wp-config.php
COPY /srcs/config.inc.php tmp/config.inc.php
COPY /srcs/autoindex_on.sh .
COPY /srcs/autoindex_off.sh .

RUN apt -y install toilet
RUN apt -y install boxes
RUN apt -y install figlet
RUN apt -y install ruby
RUN wget https://github.com/busyloop/lolcat/archive/master.zip && unzip master.zip

WORKDIR /etc/ssl/
RUN openssl req -x509 -out localhost.crt -keyout localhost.key -newkey rsa:2048 -nodes -sha256 -subj '/CN=medovar'
WORKDIR /
CMD cd lolcat-master/bin && gem install lolcat

CMD sh init.sh

EXPOSE 80 443
