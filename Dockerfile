FROM docker.elastic.co/elasticsearch/elasticsearch:7.17.0
MAINTAINER UNB Libraries Systems <libsupport_at_unb.ca>

COPY ./build/ /build/

RUN mv /build/config/elasticsearch/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

VOLUME /usr/share/elasticsearch/data
