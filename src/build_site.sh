read -p "Enter your site name: " my_sitename
cp ./resources/site.example.com ./resources/$my_sitename
perl -i -pe 's/{sitename}/'${my_sitename}'/g' ./resources/$my_sitename
cp ./resources/$my_sitename /etc/nginx/sites-available/

mkdir -p /srv/www/$my_sitename/public_html
mkdir -p /srv/www/$my_sitename/logs

chown -R apache:apache /srv/www

rm -f /etc/nginx/sites-enable/$my_sitename
ln -s /etc/nginx/sites-available/$my_sitename /etc/nginx/sites-enable/

systemctl restart nginx
