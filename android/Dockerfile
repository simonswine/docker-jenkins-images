FROM simonswine/jenkins-debian:wheezy
MAINTAINER Christian Simon <simon@swine.de>

# Activate i386 arch
RUN dpkg --add-architecture i386

# Install OpenWRT Building tools
RUN apt-get update &&  \
    DEBIAN_FRONTEND=noninteractive apt-get -y install openjdk-7-jdk openjdk-7-jre-headless wget unzip ant zlib1g:i386 libstdc++6:i386 && \
    apt-get clean && \
    rm /var/lib/apt/lists/*_*

# Install SDK
RUN mkdir -p /opt && \
    cd /opt && \
    wget http://dl.google.com/android/adt/22.6.2/adt-bundle-linux-x86_64-20140321.zip -O adt.zip && \
    unzip adt.zip && \
    rm adt.zip && \
    mv adt-* android && \
    chown -R root:root /opt/android/sdk && \
    chmod -R u=rwX,g=rX,o=rX /opt/android/sdk

# Set environment
ENV ANDROID_HOME /opt/android/sdk
ENV PATH /opt/android/sdk/tools:$PATH


