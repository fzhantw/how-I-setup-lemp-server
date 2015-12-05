server {
    server_name abc.com;
    access_log /srv/www/abc.com/logs/access.log;
    error_log /srv/www/abc.com/logs/error.log;
    root /srv/www/abc.com/public_html/public;
 
    location / {
        index index.html index.htm index.php;
		try_files $uri $uri/ /index.php?$query_string;
    }
 
    location ~ \.php$ {
        include /etc/nginx/fastcgi_params;
        fastcgi_pass  127.0.0.1:9000;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
    }
}
