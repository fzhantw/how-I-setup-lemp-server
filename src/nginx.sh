sh ./color.sh

cp ./resources/nginx.repo /etc/yum.repos.d/

yum --enablerepo=nginx install nginx -y
systemctl start nginx.service
systemctl enable nginx.service

mkdir /etc/nginx/sites-available
mkdir /etc/nginx/sites-enable

printf ${BLUE}
printf 'You should put this into nginx.conf \ninclude /etc/nginx/sites-enabled/*;'
