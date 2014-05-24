FROM stackbrew/debian:wheezy
MAINTAINER Christian Simon <simon@swine.de>
# Ensure sources.list / upgrade
ADD ./sources.list /etc/apt/sources.list
RUN apt-get update &&  \
    DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install vim python-setuptools nano git subversion curl procps psmisc sudo build-essential wget locales && \
    apt-get clean && \
    rm /var/lib/apt/lists/*_*

# Richte Gruppe/User jenkins ein
RUN addgroup --gid 666 jenkins
RUN adduser --system --group --uid 666 --group --shell /bin/bash --home /jenkins jenkins

# Allow jenkins to sudo
ADD ./sudo-jenkins /etc/sudoers.d/jenkins
RUN chown 0:0 /etc/sudoers.d/jenkins
RUN chmod 440 /etc/sudoers.d/jenkins

# Generate locales
RUN echo "de_DE.UTF-8 UTF-8" > /etc/locale.gen && \
    echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && \
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales

