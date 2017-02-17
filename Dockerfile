FROM alpine

RUN apk add --update curl && \
    rm -rf /var/cache/apk/*

ADD curl-format.txt /

ENTRYPOINT ["curl","-w","@/curl-format.txt","-o","/dev/null","-s"]