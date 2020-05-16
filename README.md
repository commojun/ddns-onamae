# ddns-onamae
お名前.comのDDNSレコード更新君


## 準備

以下の名前のファイルを準備
```
user: お名前.comにログインするときのIDを記載
pass: お名前.comにログインするときのパスワードを記載
host: 更新したいドメインのホスト名を記載 ex) hoge
domain: 更新したいドメインを記載 ex) commojun.com
```

## Docker build

```
$ docker build ddns-onamae:latest .
```

## docker-compose

```
$ docker-compose up -d
```

## 参考

https://www.harada-its.com/2019/06/01-421/
