FROM docker.io/websphere-liberty:javaee8
RUN make /my-special-folder
COPY Dockerfile /my-special-folder
COPY target/simple-stuff.war /config/dropins/
COPY config/server.xml /config/
COPY config/server.env /config/
