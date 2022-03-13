FROM ubuntu:20.04
MAINTAINER Mao Jianwei <maojianwei2020@gmail.com>

RUN apt-get update \
    && apt-get install -y ffmpeg \
    && mkdir -p /nginx-bin/ \
    && chmod -R 777 /nginx-bin/ \
    && mkdir -p /nginx-conf/ \
    && mkdir -p /nginx-log/ \
    && mkdir -p /nginx-live-hls/

COPY "./bin/*" "/nginx-bin/"
RUN chmod -R 777 "/nginx-bin/"

COPY "run-nginx-rtmp.sh" "/"
RUN chmod 777 "/run-nginx-rtmp.sh"

VOLUME ["/nginx-conf/", "/nginx-log/", "/nginx-live-hls/"]

EXPOSE 80 443

STOPSIGNAL SIGQUIT

WORKDIR /
ENTRYPOINT ["/run-nginx-rtmp.sh"]
