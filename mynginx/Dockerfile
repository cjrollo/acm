FROM alpine:3.2

RUN apk add --update nginx && rm -rf /var/cache/apk/*

COPY nginx-nonroot.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html

USER nobody

CMD ["nginx", "-g", "daemon off;"]
