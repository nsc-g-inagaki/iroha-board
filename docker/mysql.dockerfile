# 使用するMySQLのイメージを指定
FROM mysql:8.0.20

# 作成したMySQLの設定をコンテナ内にコピー
COPY /docker/config/my.cnf /etc/mysql/conf.d/
