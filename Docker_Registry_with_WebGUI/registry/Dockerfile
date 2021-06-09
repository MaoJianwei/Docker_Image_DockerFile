FROM registry:2.7.1

LABEL maintainer="Jianwei Mao <maojianwei2012@126.com>"

COPY mao-garbage-collect.sh /
COPY entrypoint.sh /
COPY config.yml /etc/docker/registry/config.yml

ENV REGISTRY_STORAGE_DELETE_ENABLED true

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/etc/docker/registry/config.yml"]
