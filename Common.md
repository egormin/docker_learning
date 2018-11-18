
### Common commands

***Получить информацию по docker*** используется команда:
```
docker info
```

***Получить информацию по версии*** используется команда:
```
docker version
```

***Форматированный вывод*** можно взять одно нужное значение:
```
docker version --format '{{.Client.Version }}'
```

#### Работа с docker hub
https://hub.docker.com/

***Залогиниться в hub.docker.com***
```
docker login
```

***Разлогиниться из hub.docker.com***
```
docker logout
```

***Найти нужный имэйдж***
```
docker search <name>
```

***Скачать нужный имэйдж***
```
docker pull <name>
```

***Закачать нужный имэйдж в hub.docker.com***
```
docker push <name>
```

***Healthchecks***
```
HEALTHCHECK --interval=5s --timeout=1s --start-period=60s --retries=1\
CMD curl -s -f localhost:5000 || exit 1
```
- --interval=DURATION (default: 30s)
- --timeout=DURATION (default: 30s)
- --start-period=DURATION (default: 0s)
- --retries=N (default: 3)

