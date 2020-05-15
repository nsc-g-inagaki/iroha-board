# iroha-board

[Iroha Board](https://github.com/irohasoft/irohaboard#iroha-board)をDockerを使った設定方法の手順をまとめてみました。

## 使用している環境
+ PHP:7.3-fpm-alpine3.11
+ MySQL:8.0.20
+ Apache(httpd):2.4.43-alpine

## 手順

1. [Iroha Board インストール方法](https://github.com/irohasoft/irohaboard/blob/master/README.jp.md#インストール方法)の手順3まで実行して、CakePHP + Iroha Boardのセットをこのレポジトリの「iroha」フォルダに入れます。

2. [demo.database.php](demo.database.php)の内容をiroha/app/Config/database.phpに移します。

3. [.env](.env)の以下項目を編集します。\
    + データベース名
    + ユーザー名
    + ユーザーパスワード
    + rootユーザーパスワード
    
4. docker-composeでビルドを行う
    ```bash
    dokcer-compose build
    ```

5. コンテナを起動して完了
    ```bash
    #docker-compose を使った場合
    docker-compose up -d
    ```
