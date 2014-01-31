FROM simonswine/jenkins-ubuntu:saucy
MAINTAINER Christian Simon <simon@swine.de>
# Install dependencies
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install qemu samba
# Add Raspberry Image
RUN wget -q http://www.swine.de/raspberry_devel/raspberry_devel-0.3.qcow2.bz2 -O - | bunzip2 > /usr/local/share/raspberry_devel.qcow2
# Download Raspberry Kernel
RUN wget -q https://ssl.swine.de/jenkins/job/raspidev_-_qemu_kernel/12/artifact/output/zImage_12 -O /usr/local/share/raspberry_devel.kernel 
# Add SSH/Keying
ADD id_rsa /root/.ssh/id_rsa
ADD id_rsa.pub /root/.ssh/id_rsa.pub
ADD id_rsa.pub /root/.ssh/authorized_keys
ADD id_rsa /jenkins/.ssh/id_rsa
ADD id_rsa.pub /jenkins/.ssh/id_rsa.pub
ADD known_hosts /jenkins/.ssh/known_hosts 
ADD known_hosts /root/.ssh/known_hosts 
# Correct rights
RUN chown -Rc jenkins:jenkins /jenkins
RUN chmod -c 400 /jenkins/.ssh/id_rsa /root/.ssh/id_rsa
