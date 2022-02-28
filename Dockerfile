FROM docker.elastic.co/elasticsearch/elasticsearch:7.17.0
MAINTAINER UNB Libraries Systems <libsupport_at_unb.ca>

COPY ./build/ /build/

RUN mv /build/config/elasticsearch/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

VOLUME /usr/share/elasticsearch/data

# Container metadata.
LABEL ca.unb.lib.generator="elasticsearch" \
  com.microscaling.docker.dockerfile="/Dockerfile" \
  com.microscaling.license="MIT" \
  org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.description="status.elasticsearch.lib.unb.ca is an elasticsearch endpoint for storing status tests results at UNB Libraries." \
  org.label-schema.name="status.elasticsearch.lib.unb.ca" \
  org.label-schema.schema-version="1.0" \
  org.label-schema.url="https://status.elasticsearch.lib.unb.ca" \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.vcs-url="https://github.com/unb-libraries/status.elasticsearch.lib.unb.ca" \
  org.label-schema.vendor="University of New Brunswick Libraries" \
  org.label-schema.version=$VERSION \
  org.opencontainers.image.source="https://github.com/unb-libraries/status.elasticsearch.lib.unb.ca"
