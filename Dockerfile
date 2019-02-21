FROM tomcat:8

ARG GS_VERSION=2.14.2

RUN cd /usr/local/tomcat/webapps/ \
    && curl -SL https://sourceforge.net/projects/geoserver/files/GeoServer/${GS_VERSION}/geoserver-${GS_VERSION}-war.zip/download --output geoserver.war.zip \
    && unzip geoserver.war.zip \
    && unzip geoserver.war -d geoserver \
    && rm -f geoserver.war.zip \
    && rm -f geoserver.war

CMD ["catalina.sh", "run"]