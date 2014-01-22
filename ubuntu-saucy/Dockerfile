FROM stackbrew/ubuntu:saucy
MAINTAINER Christian Simon <simon@swine.de>
# Ensure sources.list / upgrade
ADD ./sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y upgrade
# Install default tools
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install vim python-setuptools nano git subversion curl procps psmisc sudo build-essential wget
# Richte Gruppe/User jenkins ein
RUN addgroup --gid 666 jenkins
RUN adduser --system --group --uid 666 --group --shell /bin/bash --home /jenkins jenkins
# Allow jenkins to sudo
ADD ./sudo-jenkins /etc/sudoers.d/jenkins
RUN chown 0:0 /etc/sudoers.d/jenkins
RUN chmod 440 /etc/sudoers.d/jenkins
