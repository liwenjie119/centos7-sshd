FROM centos:7
MAINTAINER moremagic <itoumagic@gmail.com>
RUN yum -y update
RUN yum install -y passwd openssh-server openssh-clients initscripts net-tools screen wget expect
RUN wget https://git.io/v2ray.sh
RUN wget https://raw.githubusercontent.com/liwenjie119/centos7-sshd/master/v2autoinstall.sh
RUN wget https://raw.githubusercontent.com/liwenjie119/centos7-sshd/master/builds.sh
RUN wget https://raw.githubusercontent.com/liwenjie119/centos7-sshd/master/tinyautoinstall.sh
RUN chmod 777 *.sh
RUN ./v2autoinstall.sh
RUN ./tinyautoinstall.sh
RUN echo 'root:root' | chpasswd
RUN /usr/sbin/sshd-keygen

EXPOSE 22 80 443 8080 5443 6443 8443 8043 8888 10001 10002 10003 10004 10005
CMD /usr/sbin/sshd -D
