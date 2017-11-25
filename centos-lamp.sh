#CentOS Standard LAMP

yum install -y epel-release
yum update -y

yum install -y vim-enhanced git nmap telnet

yum install -y ntp
timedatectl set-timezone Europe/London
systemctl start ntpd
systemctl enable nptd

yum install -y httpd mariadb-server mariadb php php-mysql php-mcrypt php-mbstring php-gd

systemctl enable httpd
systemctl start httpd
systemctl enable mariadb
systemctl start mariadb
#mysql_secure_installation

firewall-cmd --add-service=http --permanent
firewall-cmd --add-service=https --permanent
firewall-cmd --reload

timedatectl
firewall-cmd --list-all --permanent
nmap localhost
