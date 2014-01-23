FROM simonswine/jenkins-debian:wheezy
MAINTAINER Christian Simon <simon@swine.de>
# Install rvm
RUN curl -sSL https://get.rvm.io | bash -s stable
# Install ruby 1.8.7
RUN /bin/bash -l -c "rvm install 1.8.7"
# Install ruby 1.9.3
RUN /bin/bash -l -c "rvm install 1.9.3"
# Install ruby 2.0.0
RUN /bin/bash -l -c "rvm install 2.0.0"
# Set 2.0.0 as default ruby
RUN /bin/bash -l -c "rvm --default use 2.0.0"
# Install often used packges
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install libxml2 libxml2-dev libxslt-dev libicu-dev mysql-client libmysqlclient-dev
