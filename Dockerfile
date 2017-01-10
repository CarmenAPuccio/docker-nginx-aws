FROM amazonlinux:latest

RUN yum install -y php70 php70-fpm nginx && \
    mkdir -p /usr/share/nginx/app && \
    echo "NGINX App Test Page" > /usr/share/nginx/app/index.html && \
    mkdir -p /usr/share/nginx/images && \
    mkdir -p /usr/share/nginx/php && \
    mkdir -p /usr/share/nginx/images && \
    touch /var/log/nginx/access.log

ADD www.conf /etc/php-fpm-7.0.d/www.conf
ADD php-7.0.ini /etc/php-7.0.ini
ADD landing.php /usr/share/nginx/php/landing.php
ADD nginx.png /usr/share/nginx/images/nginx.png
ADD favicon.ico /usr/share/nginx/images/favicon.ico
ADD app.conf /etc/nginx/conf.d/app.conf

EXPOSE 80 8100

CMD php-fpm -d variables_order="EGPCS" && (tail -F /var/log/nginx/access.log &) && exec nginx -g "daemon off;"