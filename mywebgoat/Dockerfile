FROM	alpine:edge
MAINTAINER christopher rollo (inspired by pandrew/webgoat)
RUN	apk update && apk add \
		openjdk8-jre \
		curl

# Replace 1000 with your user / group id
RUN adduser -D webgoat

USER webgoat
ENV HOME /home/webgoat
ENV	WEBGOAT_VERSION 7.0.1

WORKDIR $HOME
RUN	curl -fL https://github.com/WebGoat/WebGoat/releases/download/${WEBGOAT_VERSION}/webgoat-container-${WEBGOAT_VERSION}-war-exec.jar -o $HOME/webgoat.jar

EXPOSE	8080

ENTRYPOINT	["java", "-jar", "webgoat.jar"]
