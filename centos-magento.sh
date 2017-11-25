#CentOS PHP7.1 MariaDB10.2 Magento 2.2
cp mariadb.repo /etc/yum.repos.d/mariadb.repo
curl 'https://setup.ius.io/' -o setup-ius.sh
bash setup-ius.sh 

yum update -y

yum install -y vim-enhanced 

yum install -y ntp
timedatectl set-timezone Europe/London

yum install -y httpd 
yum install -y mod_php71u php71u-cli php71u-mbstring php71u-mcrypt php71u-mysqlnd php71u-intl php71u-json php71u-xml php71u-gd php71u-soap
yum install -y bzip2
yum install -y mariadb-server

cp /etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf.bak
cp httpd.conf /etc/httpd/conf/httpd.conf

cp /home/vagrant/magento.tar.bz2 /var/www/html/magento.tar.bz2
cd /var/www/html
tar -xjf magento.tar.bz2
rm magento.tar.bz2

systemctl enable httpd
systemctl start httpd

systemctl enable mariadb
systemctl start mariadb

mysqladmin create magento
