FROM alpine:edge
COPY . .
RUN apk update
RUN apk add hping3 --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing
RUN chmod +x script.sh
ENTRYPOINT ["sh", "script.sh"]
