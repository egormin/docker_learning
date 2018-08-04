#### To create image:
```
docker build -t nginx-image -f nginx.Dockerfile .
```

#### To run image:
```
docker run -d --name nginxServ -p 80:80 nginx-image
```
#### To check:
```
curl localhost
```
