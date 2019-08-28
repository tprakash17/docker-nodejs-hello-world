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


# Kubernetes Deployment

### create deployment and svc into nodejs namespace
```
kubectl create ns nodejs
kubectl apply -f kubernetes/nodejs-deploy-svc.yaml
```

This should deploy nodejs sample app in to kubernetes cluster (was tested on 1.13+ version). `Deployment` and `svc` objects will be created.

##### Status
```
NAME                          READY   STATUS    RESTARTS   AGE
pod/nodejs-7f4774b764-9gccd   1/1     Running   0          10m
pod/nodejs-7f4774b764-r97rm   1/1     Running   0          10m

NAME                 TYPE       CLUSTER-IP     EXTERNAL-IP   PORT(S)        AGE
service/nodejs-svc   NodePort   10.97.140.11   <none>        80:31780/TCP   10m

NAME                     READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/nodejs   2/2     2            2           10m

NAME                                DESIRED   CURRENT   READY   AGE
replicaset.apps/nodejs-7f4774b764   2         2         2       10m

```

## Access APP kubernetes cluster any <NODEIP>:31780
