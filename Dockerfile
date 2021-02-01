FROM centos:7

RUN yum update -y&&yum install -y passwd wget expect git openssh-server openssh-clients initscripts \
	&&echo 'root:root' | chpasswd \
	&&/usr/sbin/sshd-keygen 
RUN cd /root \
	&&git clone https://github.com/liwenjie119/centos7-sshd \
	&&cd centos7-sshd \
	&&chmod 777 * \
	&& bash allinone.sh 

EXPOSE 22
CMD /usr/sbin/sshd -D 
