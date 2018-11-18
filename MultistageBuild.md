### Multistage Build
Удобно использовать, когда нам нужно к примеру собрать jar файл и запустить его. Нам не нужен maven для запуска, а нужен лишь для сборки.
```
FROM maven:3.3-jdk-8 as builder
COPY . /build/
WORKDIR /build
RUN mvn --version
RUN echo "date" > script.sh

FROM openjdk:8-jre
COPY --from=builder /build/script.sh /opt
EXPOSE 8080
ENTRYPOINT ["bash", "/opt/script.sh"]
```

#### Onbuild
```
FROM busybox as builder
RUN adduser dummy -u 1234 -S
USER dummy

ONBUILD USER root
ONBUILD RUN echo "Some commands"

FROM builder
RUN id
```
id будет root. Без ONBUILD был бы dummy. Т.е. будут выполняться указанные конамды, если он используется как базовый для другого имэйджа.
