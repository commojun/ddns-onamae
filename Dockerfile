FROM alpine:latest
RUN apk --no-cache add curl bind-tools openssl bash
COPY ddns.sh host domain user pass /

CMD ["bash", "./ddns.sh"]
