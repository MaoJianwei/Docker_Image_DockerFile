FROM alpine:latest
MAINTAINER Mao Jianwei <maojianwei2020@gmail.com>

RUN apk add -U --no-cache vlc

EXPOSE 5511

CMD ["cvlc", "-vvv /home/maoMedia", "--sout '#rtp{sdp=rtsp://:5511/}'", "--sout-keep", "--quiet"]
