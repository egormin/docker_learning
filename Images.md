### Docker images
Имэйджи можно посмотреть и скачать с сайта: `https://hub.docker.com/explore/`.

***Для поиска нужного имэйджа*** используется команда:
```
docker search <name>
```

***Посмотреть список имэйджей в системе:***
```
docker images
docker image ls
```

***Удалить имэйдж:***
```
docker rmi httpd-image
docker image rm <name>
```

***Импортировать имэйдж из тарбола:***
```
docker import
```

***Создать имэйдж из контейнера:***
```
docker commit
```

***Загрузить имэйдж из tar архива как STDIN:***
```
docker load
```

***Создать имэйдж из Dockerfile:***
```
docker build -t httpd-image -f httpd.Dockerfile .
```

***Сохранить имэйдж в tar архив со всеми слоями:***
```
docker save
```

***Посмотреть историю имэйджа:***
```
docker history
```

***Присвоить тэг имейджу:***
```
docker tag
```
