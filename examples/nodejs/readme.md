#### To create image:
```
docker build -t nodejs-app -f nodejs.Dockerfile .
```

#### To run image:
```
docker run -d --name nodejs-app -p 3000:3000 nodejs-app
```
#### To check:
```
curl localhost:3000
```
