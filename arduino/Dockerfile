FROM simonswine/jenkins-ubuntu:trusty
MAINTAINER Christian Simon <simon@swine.de>
# Install OpenWRT Building tools
RUN apt-get update &&  \
    DEBIAN_FRONTEND=noninteractive apt-get -y install wget arduino-mk && \
    apt-get clean && \
    rm /var/lib/apt/lists/*_*

