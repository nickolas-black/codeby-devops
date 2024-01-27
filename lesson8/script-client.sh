echo "192.168.70.108   server.local www.server.local" >> /etc/hosts
cp /vagrant/server.crt /usr/local/share/ca-certificates/ca-server.crt
update-ca-certificates -v

