### Dockerfile instructions
https://docs.docker.com/develop/develop-images/dockerfile_best-practices/

- ****FROM**** - указывает, на базе какого имэйджа будет собран наш имэйдж
- ****RUN**** - выполняет любые команды в новом слое поверх текущего имэйджа и комитит результат (yum, ..)
- ****CMD**** - опции для ENTRYPOINT, например ["- DFOREGROUND"]
- ****EXPOSE**** - говорит докеру, какие порты считаются открытыми для сервиса внутри крнтейнера
- ****ENV**** - для установки environment переменных
- ****ADD**** - для копирования файлов, дирректорий или удаленных файлов в контейнер. Использовать эту рекомендуется только для данных из внешнего источника или tar файлов.
- ****COPY**** - для копирования файлов, дирректорий в контейнер. Лучше использовать эту для локальных файлов
- ****ENTRYPOINT**** - обычно программа, скрипт - тот процесс, который запустится и будет работать. ["httpd"]
- ****VOLUME**** - для указания дирректории, которая должна быть подмонтирована
- ****USER**** - указывает юзера, от которого будут запускаться RUN/CMD/ENTRYPOINT
- ****WORKDIR**** - устанавливает рабочую дирректорию
- ****ARG**** - определяет build-time переменные
- ****ONBUILD**** - для передачи комманд между родительским и дочерним докерфайлами
- ****STOPSIGNAL**** - устанавливает стопсигнал, который будет послан контейнеру для выхода
- ****LABEL**** - использует key/value метаданные

****ENTRYPOINT/CMD**** имеет 2 формы написания:
- ***exec форма***: ["echo", "hello", "world"]. Эта предпочтительнее
- ***shell форма***: echo hello world

Можно всё писать и в CMD и в ENTRYPOINT: httpd -DFOREGROUND

При запуске контейнера те команды, что передаются через командную строку заменят собой те, что указаны в CMD:
```
docker run ping:1.0 google.com 
```
будет пинговаться google.com 
```
docker run ping:1.0 -с1 google.com 
```
будет пинговаться google.com один раз

#### Применение аргументов
```
ARG BASE_IMAGE
FROM ${BASE_IMAGE}
_________________
docker build --build-arg=BASE_IMAGE=ubuntu:16.04 .
```
Для CI систем было бы полезно:
```
ARG BUILD_NUMBER
ARG JOB_NAME
LABEL build_number="${BUILD_NUMBER}"
LABEL job_name="${JOB_NAME}"
_________________
docker build --build-arg=BUILD_NUMBER=${BUILD_NUMBER} --build-arg=JOB_NAME=${JOB_NAME} .
```

#### Пример применения аргументов
```
FROM openjdk:8-jdk

RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*

ARG user=jenkins
ARG group=jenkins
ARG uid=1000
ARG gid=1000
ARG http_port=8080
ARG agent_port=50000
ARG JENKINS_HOME=/var/jenkins_home

RUN mkdir -p  $JENKINS_HOME \
    && chown ${uid}:${gid} $JENKINS_HOME \
    && groupadd -g ${gid} ${group} \
    && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
    ```
