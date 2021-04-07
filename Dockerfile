web:
    image: nginx:latest
    volumes:
        - ./index.php:/code/index.php
        - ./site.conf:/etc/nginx/conf.d/site.conf
    links:
        - php
php:
    image: php:7-fpm
    volumes:
        - ./index.php:/code