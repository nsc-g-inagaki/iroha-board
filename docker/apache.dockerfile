# apacheを作成するのに使うイメージ
FROM httpd:2.4.43-alpine

# alpineのupdateとupgradeを実行
RUN apk update; 
RUN apk upgrade;

# apacheの設定ををコンテナ内にコピー
COPY /docker/config/demo.apache.conf /usr/local/apache2/conf/demo.apache.conf

# イロハボードに必要なApacheモジュールのロード
RUN sed -i '/LoadModule rewrite_module/s/^#//g' /usr/local/apache2/conf/httpd.conf
RUN sed -i 's/#LoadModule mod_headers/LoadModule mod_headers/g' /usr/local/apache2/conf/httpd.conf

# コピーした設定をApacheの設定に追加
RUN echo "Include /usr/local/apache2/conf/demo.apache.conf" \ 
    >> /usr/local/apache2/conf/httpd.conf
