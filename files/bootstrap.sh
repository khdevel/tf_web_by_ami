#!/bin/bash
yum install httpd php -y
yum update -y
systemctl enable httpd
systemctl start httpd
echo "<?php phpinfo();?>" > /var/www/html/index.php
cd /var/www/html
