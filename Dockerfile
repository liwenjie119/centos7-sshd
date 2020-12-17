FROM centos:7
MAINTAINER moremagic <itoumagic@gmail.com>
RUN yum -y update&&yum install -y passwd openssh-server openssh-clients initscripts net-tools screen wget expect
RUN wget https://raw.githubusercontent.com/liwenjie119/centos7-sshd/master/allinone.sh&&chmod 777 allinone.sh&&bash allinone.sh
RUN echo 'root:root' | chpasswd
RUN /usr/sbin/sshd-keygen
CMD /usr/sbin/sshd -D
