FROM simonswine/jenkins-debian:wheezy
MAINTAINER Christian Simon <simon@swine.de>
# Install FORMER 03 Apt
ADD ./former03.list /etc/apt/sources.list.d/former03.list
ADD ./former03.gpg /tmp/former03.gpg
RUN apt-key add /tmp/former03.gpg
RUN apt-get update
# Install FORMER 03 PHP 5.2
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install former03-php-5-2
# Install FORMER 03 PHP 5.3
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install former03-php-5-3
# Install FORMER 03 PHP 5.4
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install former03-php-5-4
# Install FORMER 03 PHP 5.5
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install former03-php-5-5
