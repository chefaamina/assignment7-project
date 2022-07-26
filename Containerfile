#Containerfile for Assignment7
FROM fedora:latest

#container running as user 'sync'
USER sync
#folder /data created as user 'root'

#folder /system created as user 'nobody'

#user 'collin' exists in the container

#httpd installed
RUN yum -y install httpd

#file /var/www/html/index.html exists and contains "Containers are easy!"
COPY myindex.html /var/www/html/index.html
#port 80 is exposed
EXPOSE 80
#httpd running
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
