FROM centos/systemd

MAINTAINER "Bill Riner" <bill.riner@vanderbilt.edu>

RUN yum -y install httpd; yum clean all; systemctl enable httpd.service

EXPOSE 80

CMD ["/usr/sbin/init"]
