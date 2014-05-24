FROM simonswine/jenkins-debian:wheezy
MAINTAINER Christian Simon <simon@swine.de>
# Install OpenWRT Building tools
RUN apt-get update &&  \
    DEBIAN_FRONTEND=noninteractive apt-get -y install ant wget gawk libncurses5-dev zlib1g-dev unzip subversion doxygen patch flex coreutils && \
    apt-get clean && \
    rm /var/lib/apt/lists/*_*
