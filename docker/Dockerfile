FROM ubuntu:18.04
LABEL maintainer="rectalogic@rectalogic.com"

ENV container docker

RUN apt-get -y update && apt-get -y install \
    bitlbee-libpurple \
    bitlbee-plugin-otr \
    bitlbee-plugin-facebook \
    libpurple-dev \
    curl \
    tar \
    && rm -rf /var/lib/apt/lists/*
RUN curl -o slack-libpurple.tar.gz -L https://github.com/dylex/slack-libpurple/archive/7e5c16f.tar.gz \
    && mkdir slack-libpurple \
    && cd slack-libpurple \
    && tar --strip-components=1 -xzf ../slack-libpurple.tar.gz \
    && make install \
    && cd .. \
    && rm -rf slack-libpurple.tar.gz slack-libpurple

EXPOSE 6667
VOLUME ["/var/lib/bitlbee/"]

CMD ["/usr/sbin/bitlbee", "-F", "-n"]
