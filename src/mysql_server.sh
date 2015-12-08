yum install -y mariadb mariadb-server || {
	printf "Fail to install mariadb";
	exit 1;
}
systemctl start mariadb
systemctl enable mariadb
mysql_secure_installation
