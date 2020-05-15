# 使用するPHPのイメージを指定
FROM php:7.3-fpm-alpine3.11

# Alpineのupdateとupgrade
RUN apk update;
RUN apk upgrade;

#　イロハボードで使用するPHP Extensionのpdo, pdo_mysql, mbstringのインストール 
RUN docker-php-ext-install pdo pdo_mysql mbstring
