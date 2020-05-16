FROM alpine:latest
RUN apk --no-cache add curl bind-tools openssl bash
COPY ddns.sh host domain user pass /
COPY root /var/spool/cron/crontabs/root

CMD ["crond", "-f"]
