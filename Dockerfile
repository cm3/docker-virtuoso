FROM ubuntu:14.04.2
MAINTAINER Akihiro Kameda <kameda@cias.kyoto-u.ac.jp>

RUN export DEBIAN_FRONTEND=noninteractive && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get -y install \
    git \
	automake \
	autoconf \
	bison \
	flex \
	gawk \
	gperf \
	libtool \
	build-essential \
	libssl-dev \

RUN adduser --disabled-password --home=/home/virtuoso --gecos "" virtuoso

ADD ./install-virtuoso.sh /home/virtuoso/

RUN chmod +x /home/virtuoso/install-virtuoso.sh
RUN chown -R virtuoso:virtuoso /home/virtuoso

WORKDIR /home/virtuoso
RUN su - virtuoso -c "/home/virtuoso/install-virtuoso.sh"

USER virtuoso
CMD /usr/local/virtuoso-opensource/bin/virtuoso-t -f -c /usr/local/virtuoso-opensource/var/lib/virtuoso/db/virtuoso.ini