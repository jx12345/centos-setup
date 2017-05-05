#install new server

yum install -y epel-release
yum update -y

yum install -y vim-enhanced git nmap xclip

yum install -y ntp

yum install  -y httpd mariadb-server mariadb php php-mysql php-mcrypt php-mbstring php-gd

systemctl enable httpd
systemctl start httpd
systemctl enable mariadb
systemctl start mariadb
#mysql_secure_installation

firewall-cmd --add-service=http --permanent
firewall-cmd --add-service=https --permanent
firewall-cmd --reload
firewall-cmd --list-all --permanent
nmap localhost
