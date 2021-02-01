FROM centos:7

RUN  sed -e 's|^mirrorlist=|#mirrorlist=|g' \
         -e 's|^#baseurl=http://mirror.centos.org|baseurl=https://mirrors.tuna.tsinghua.edu.cn|g' \
         -i.bak \
         /etc/yum.repos.d/CentOS-*.repo \
	&&yum update -y&&yum install -y passwd wget expect tzdata git openssh-server openssh-clients initscripts \
	&&echo 'root:root' | chpasswd \
	&&/usr/sbin/sshd-keygen 
RUN cd /root \
	&&git clone https://github.com/liwenjie119/centos7-sshd \
	&&cd centos7-sshd \
	&&chmod 777 * \
	&& bash allinone.sh 

RUN sh -c '/bin/echo -e "1\n2\n10002\ny\n\n\n" | sh /root/centos7-sshd/v2ray.sh'
RUN sh -c '/bin/echo -e "\n\n\n" | sh /root/centos7-sshd/gost.sh'

EXPOSE 22
CMD /usr/sbin/sshd -D 
ENTRYPOINT /usr/sbin/init 