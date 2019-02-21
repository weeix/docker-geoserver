# What is Geoserver?

[GeoServer](http://geoserver.org) is an open source software server written in Java that allows users to share and edit geospatial data. Designed for interoperability, it publishes data from any major spatial data source using open standards.

Being a community-driven project, GeoServer is developed, tested, and supported by a diverse group of individuals and organizations from around the world.

GeoServer is the reference implementation of the Open Geospatial Consortium (OGC) Web Feature Service (WFS) and Web Coverage Service (WCS) standards, as well as a high performance certified compliant Web Map Service (WMS), compliant Catalog Service for the Web (CSW) and implementing Web Processing Service (WPS). GeoServer forms a core component of the Geospatial Web.

GeoServer is free software and is licensed under the [GNU General Public License (GPL)](https://docs.geoserver.org/latest/en/user/_downloads/GPL.txt).

# How to use this image?

To start Geoserver:

    $ docker run --rm -d -p 8080:8080 --name geoserver weeix/geoserver

You can test it by visiting `http://localhost:8080/geoserver` or `http://host-ip:8080/geoserver` in a browser.

To mount a directory from your host to the container's local storage:

    $ docker run --rm -d -p 8080:8080 -v "$(pwd)"/data:/usr/local/tomcat/webapps/geoserver/data --name geoserver weeix/geoserver

The default administrator's username/password is `admin`/`geoserver`. You can change them by using the GUI.

For more information on how to use GeoServer, please see the [user manual](https://docs.geoserver.org).

# Environment variables

The following environment variables could be used:

- **JAVA_OPTS** for passing JVM parameters e.g. `-e JAVA_OPTS='-Xms1g'`