#Containerfile for Assignment7
FROM fedora:latest

#folder /data created as user 'root'
RUN mkdir data

#create user 'collin' exists in the container
RUN useradd collin

#httpd installed
RUN yum -y install httpd

#file /var/www/html/index.html exists and contains "Containers are easy!"
COPY myindex.html /var/www/html/index.html

#port 80 is exposed
EXPOSE 80

#httpd running
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND

#folder /system created as user 'nobody'
USER nobody
RUN mkdir system

#running container as user 'sync'
USER sync
