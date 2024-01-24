apt update && apt install apache2 -y
a2enmod rewrite
a2enmod ssl
mkdir -p /opt/apache/www
cp /vagrant/test.html /opt/apache/www/

openssl req -newkey rsa:2048 -nodes -keyout /etc/ssl/server.key -x509 -days 365 -subj "/C=RU/ST=Moscow/L=Moscow/O=LTD/CN=server.local" -out /etc/ssl/server.crt
cp  /etc/ssl/server.crt /vagrant/
cp /vagrant/mysite.conf /etc/apache2/sites-available/
a2dissite 000-default.conf
a2ensite mysite
systemctl reload apache2
