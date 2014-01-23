#!/bin/sh

echo "Building Base images"
docker build -t simonswine/jenkins-debian:wheezy debian-wheezy/
docker build -t simonswine/jenkins-ubuntu:saucy ubuntu-saucy/

echo "Build Images"
docker build -t simonswine/jenkins-latex latex/
docker build -t simonswine/jenkins-gramps gramps/
docker build -t simonswine/jenkins-openwrt openwrt/
docker build -t simonswine/jenkins-php php/
docker build -t simonswine/jenkins-ruby ruby/
docker build -t simonswine/jenkins-nodejs nodejs/



