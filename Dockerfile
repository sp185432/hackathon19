FROM centos

WORKDIR /srv/food-app

RUN yum install epel-release -y

RUN yum install nginx -y
RUN yum -y update && \
    yum -y install wget && \
    yum install -y tar.x86_64

RUN yum -y install systemd

ADD build /srv/food-app/build

COPY nginx.conf /etc/nginx/nginx.conf

Expose 8080

cmd ["nginx","-g","daemon off;"]
#cmd ["nginx;"]