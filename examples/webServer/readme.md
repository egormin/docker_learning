#### To create image:
```
docker build -t httpd-image -f httpd.Dockerfile .
```

#### To run image:
```
docker run -d --name httpdServ -p 80:80 httpd-image
```
