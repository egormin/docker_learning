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
