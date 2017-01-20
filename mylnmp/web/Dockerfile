FROM alpine:3.3
MAINTAINER Christopher Rollo (rollo.nike@gmail.com)
# Update the OS
RUN apk upgrade && rm -rf /var/cache/apk/*
# Set the environment
# Install apps
RUN apk add --update nginx && rm -rf /var/cache/apk/*
# Create Userspace
RUN mkdir -p /tmp/nginx/client-body
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html

# Get to it
CMD ["nginx", "-g", "daemon off;"]
