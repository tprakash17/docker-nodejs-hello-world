# docker-nodejs-hello-world
Dockerfile - sample hello - world nodejs app

### clone repo
```
git clone https://github.com/tprakash17/docker-nodejs-hello-world.git .
cd docker-nodejs-hello-world
```
### Build docker image
```
docker build -t hello-world-nodejs .
```

### Create container
```
docker run -d --name nodejs-hello -p 8000:8081 hello-world-nodejs
```

### Access App using browser or curl
```
$ curl localhost:8000
Hello World!
```
