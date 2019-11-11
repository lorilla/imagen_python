FROM ubuntu
RUN apt-get update
#con -y le damos si a todo sin ponerlo
RUN apt-get install -y python
RUN echo "1.0">>/etc/version && apt-get install -y git && apt-get install -y iputils-ping
CMD echo "Bienvenidos a este contenedor"
#CMD ["/bin/bash"]
#ENTRYPOINT ["bin/bash"]
#ENTRYPOINT ["df"]
#workdir
RUN mkdir /datos
WORKDIR /datos
RUN touch f1.txt
RUN mkdir /datos1
WORKDIR /datos1
RUN touch f2.txt
#copy
#COPY index.html .
#COPY app.log /datos
#add
#ADD /home/debian207/docslora docslora
#ADD f* ./
#ADD t.tar ./
#ENV
ENV dir=/data dir1=/data1
RUN mkdir $dir && mkdir $dir1
#ARG
#ARG dir2
#RUN mkdir $dir2
#EXPOSE
RUN apt-get install -y apache2
#EXPOSE 80
#ADD entrypoint.sh /datos1
#CMD
#CMD /datos1/entrypoint.sh
#Volume
ADD pagina /var/www/html
VOLUME ["var/www/html"]
