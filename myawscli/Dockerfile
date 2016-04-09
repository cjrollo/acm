#Always use latest Alpine :-)
FROM alpine:latest

#Specify Author
MAINTAINER Christopher Rollo <christopher.rollo@nike.com>

#Get any needed updates
RUN apk update && apk upgrade

#Install AWS CLI + Dependencies
RUN \
# Install Python
	apk add groff less py-pip &&\
# Install AWS CLI using Pip
	pip install awscli &&\
# Clear out installer cache
	rm -rf /var/cache/apk/* &&\
# Install AWS Secrets
	mkdir ~/.aws &&\
	chmod 700 ~/.aws &&\
# Create a working directory
	mkdir -p /aws

# Expose volume for adding credentials
VOLUME ["~/.aws"]

# Move into the working directory we created
WORKDIR /aws

# Add an ENTRYPOINT to make our lives easier
ENTRYPOINT ["aws"]
