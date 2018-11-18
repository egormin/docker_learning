### Docker Base Images
- ****scratch**** - альтарнативный базовый имэйдж, содержащий 0 файлов и размером 0.
- ****busybox**** - минимальный Unix размером 2.5Mb и содержащий около 10000 файлов.
- ****debian:jessie**** - последний минимальный Debian, 122Mb и около 18000 файлов.
- ****alpine:latest**** - Alpine linux, размером 8Mb, имеет пакетный менеджер и доступ к пакетному репозоторию.

Scratch требует загрузки и распаковки архива:
```
FROM scratch
ADD centos.tar.gz /

RUN yum install -y epel-release && \
    yum update -y && \
    yum clean all
    
LABEL architecture="amd64" \
      OS="CentOS" \
      License=GPLv2\
      maintainer="John Deer (jdeer@google.com)"
```
