sh ./color.sh
# Add RPMs
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm || {
	printf "fail to rpm remi-release-7\n"
	exit 1
}
cp ./resources/nginx.repo /etc/yum.repos.d/

yum --enablerepo=remi,remi-php56 install nginx php-fpm php-common -y

yum --enablerepo=remi,remi-php56 install php-opcache php-pecl-apcu php-cli php-pear php-pdo php-mysqlnd php-gd php-mbstring php-mcrypt php-xml php-yaml -y

systemctl start nginx.service
systemctl enable nginx.service

systemctl start php-fpm.service
systemctl enable php-fpm.service

mkdir /etc/nginx/sites-available
mkdir /etc/nginx/sites-enable

printf ${BLUE}
printf 'You should put this into nginx.conf \ninclude /etc/nginx/sites-enabled/*;'
