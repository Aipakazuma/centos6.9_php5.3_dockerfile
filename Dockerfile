FROM centos:centos6
RUN cd
RUN yum update -y && \
    # php5.3
    yum -y install php php-cli php-common php-gd php-mbstring php-mysql php-pdo && \
    # mysql
    yum install -y http://dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm && \
    yum install -y mysql mysql-devel mysql-server mysql-utilities
RUN /etc/init.d/mysqld start
RUN mkdir /app
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
