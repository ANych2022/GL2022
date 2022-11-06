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
echo '<h1>And Nychyporuk</h1>' >> index.html
echo '<h3></h3>' >> index.html
echo '</body>' >> index.html
echo '</html>' >> index.html

cd /home/andrij/Bash/GL/GL2022/GL2022
git add webserver.sh
git commit -m "2"
git push
