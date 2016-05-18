FROM owasp/zap2docker-stable
MAINTAINER Christopher Rollo (rollo.nike@gmail.com)
USER zap

#Setting a password
RUN mkdir ~/.x11vnc
RUN x11vnc -storepasswd password ~/.x11vnc/passwd
CMD /bin/bash
