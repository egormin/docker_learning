### Docker images
Имэйджи можно посмотреть и скачать с сайта: `https://hub.docker.com/explore/`.

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


***Для поиска нужного имэйджа*** используется команда:
```
docker search <name>
```

***Посмотреть список имэйджей в системе:***
```
docker image ls
```

***Удалить имэйдж:***
```
docker image rm <name>
```

***Запустить контейнер:***
```
docker run <name>
```
```
docker run -d <name>
```
-d значит запустить в бэкграунде.

***Посмотреть запущенные контейнеры:***
```
docker ps
```

***Посмотреть все контейнеры:***
```
docker ps -a
```

***Посмотреть детальную информацию о контейнере:***
```
docker inspect e976abde6626
```

***Посмотреть логи контейнера:***
```
docker logs e976abde6626
```
***Остановить контейнер:***
```
docker stop c19a6dede2a0
```

***Остановить все контейнеры:***
```
docker stop $(docker ps -q)
```

***Удалить контейнер:***
```
docker rm c19a6dede2a0
```

***Удалить все контейнеры:***
```
docker rm $(docker ps -a -q)
```

***Чтобы запустить контейнер и замапить на него порт*** нужно выполнить следующую команду:
```
docker run -d --name redisHost -p 6379:6379 redis:latest
```
`--name redisHost` задаем имя контейнеру, `-p <host-port>:<container-port>` указываем наш порт и порт внутри контейнера. Чтобы указать ещё и ip адрес, пишем `-p 127.0.0.1:6379:6379`

***Чтобы посмотреть порт в контейнере***:
```
docker port redisHost
```
***Запустить контейнер и выполнить команду в нём:***
```
docker run -it redis uname -a
```
***Запустить контейнер и выполнить несколько команд в нём:***
```
docker run -it redis cat /proc/version;ls /; pwd
```
***Создать имэйдж из Dockerfile:***
```
docker build -t httpd-image -f httpd.Dockerfile .
```
***Удалить имэйдж:***
```
docker rmi httpd-image
```
***Передать внешнюю переменную в контейнер:***
```
docker run -d --name my-production-running-app -e NODE_ENV=production -p 3000:3000 my-nodejs-app
```
***Для игнорирования файлов надо добавить их в .dockerignore:***
```
echo passwords.txt >> .dockerignore
```
