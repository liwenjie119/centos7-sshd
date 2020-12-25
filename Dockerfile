FROM centos:7
MAINTAINER moremagic <itoumagic@gmail.com>
RUN yum update -y&&yum install -y passwd openssh-server openssh-clients initscripts;\
echo 'root:root' | chpasswd
RUN /usr/sbin/sshd-keygen
EXPOSE 22
CMD /usr/sbin/sshd -D
