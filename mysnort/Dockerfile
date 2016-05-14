FROM centos:7
MAINTAINER rollo (rollo.nike@gmail.com)

#Step 0 - update system and dependencies
RUN yum update -q -y
RUN yum install q -y wget

#Step 1 - Find the appropriate package for your operating system and install.
RUN yum install -q -y https://www.snort.org/downloads/snort/daq-2.0.6-1.centos7.x86_64.rpm
RUN yum install -q -y https://www.snort.org/downloads/snort/snort-2.9.8.2-1.centos7.x86_64.rpm

#Step 2 - Sign up and get your Oinkcode.
# rollo.nike@gmail.com

#Step 3 - Stay current with the latest updates using PulledPork
RUN wget https://www.snort.org/downloads/community/community-rules.tar.gz
RUN tar -xvf community-rules.tar.gz -C /etc/snort/rules/

#Step 4 - Read Docs
# https://www.snort.org/documents

#Step 5 - create userspace
CMD adduser snort
CMD echo "snort ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers
CMD chown snort -R /home/snort
#USER snort
ENV HOME /home/snort
WORKDIR $HOME

CMD /bin/bash
