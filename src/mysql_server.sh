yum install -y mariadb mariadb-server || {
	printf "Fail to install mariadb";
	exit 1;
}
mysql_secure_installation
