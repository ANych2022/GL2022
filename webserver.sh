#!/bin/bash

#!/bin/bash# package updates
sudo yum check-update
sudo yum update
sudo yum -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd

sudo yum install firewalld
sudo systemctl start firewalld

sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo firewall-cmd --reload

sudo chown -R $USER:$USER /var/www
cd /var/www/html/
echo '<!DOCTYPE html>' > index.html
echo '<html>' >> index.html
echo '<head>' >> index.html
echo '<title>Test</title>' >> index.html
echo '<meta charset="UTF-8">' >> index.html
echo '</head>' >> index.html
echo '<body>' >> index.html
echo '<h1>Andriy Nychyporuk</h1>' >> index.html
echo '<h3></h3>' >> index.html
echo '</body>' >> index.html
echo '</html>' >> index.html
