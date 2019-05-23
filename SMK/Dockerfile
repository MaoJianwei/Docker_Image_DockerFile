FROM alpine:3.9
MAINTAINER Jianwei Mao <maojianwei2020@gmail.com>

WORKDIR /

COPY "smk-x64-musl-static" "/"
RUN chmod 777 /smk-x64-musl-static

EXPOSE 1688

CMD ["/smk-x64-musl-static", "-d", "-R", "180d", "-A", "1h", "-e", "-v"]