# NGINX (SSL)

## CONF
/etc/nginx/sites-aviable/test_ssl.conf

```
server {

listen 443;
ssl on;
ssl_certificate /etc/ssl/certs/nginx-selfsigned.crt; 
ssl_certificate_key /etc/ssl/private/nginx-selfsigned.key;

server_name your.domain.com;
access_log /var/log/nginx/nginx.vhost.access.log;
error_log /var/log/nginx/nginx.vhost.error.log;
location / {
root /home/www/public_html/your.domain.com/public/;
index index.html;

}

}


```

## SELF-SIGNED CERTIFICATES
```
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt
```

