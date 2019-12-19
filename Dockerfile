FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y nginx
WORKDIR /var/www/html
RUN rm *
COPY proyecto .
#ADD carpeta /root/
EXPOSE 80
#ENV VAR_ENTORNO contenido
CMD /usr/sbin/nginx -g "daemon off;"
