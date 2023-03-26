FROM httpd
LABEL "name" = "SarigaRevanth"
MAINTAINER author = "sarigarevanth123@gmail.com"
COPY . /usr/local/apache2/htdocs/
EXPOSE 80