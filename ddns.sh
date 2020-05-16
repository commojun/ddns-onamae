#!/bin/bash

HOST=$(cat host)
DOMAIN=$(cat domain)
USER=$(cat user)
PASS=$(cat pass)

# Global IPアドレス取得
gip=$(curl inet-ip.info)
domip=$(dig $HOST.$DOMAIN +short)

# IPアドレス更新
if [ "$gip" != "$domip" ]; then
    {
        echo "LOGIN"
        echo "USERID:$USER"
        echo "PASSWORD:$PASS"
        echo "."
        echo "MODIP"
        echo "HOSTNAME:$HOST"
        echo "DOMNAME:$DOMAIN"
        echo "IPV4:$gip"
        echo "."
        echo "LOGOUT"
        echo "."
    } > input.txt
    openssl s_client -connect ddnsclient.onamae.com:65010 -quiet < input.txt
    echo "IPの更新完了 $gip"
else
    echo "IPは更新の必要がありませんでした。"
fi

exit 0
