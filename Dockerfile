FROM alpine:latest
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk add --update nginx && rm -rf /var/cache/apk/*

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
