#dockerfile
FROM httpd:2.4.56
LABEL "name" = "SarigaRevanth"
MAINTAINER author = "sarigarevanth123@gmail.com"
COPY . /usr/local/apache2/htdocs/
EXPOSE 80
