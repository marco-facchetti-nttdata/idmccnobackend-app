# idmccnobackend-app minimal

PoC minimale JSP -> WAR -> Docker -> Tomcat.

## Build WAR locale

```bash
mvn clean package
```

WAR generato:

```text
target/idmccnobackend.war
```

## Build Docker

```bash
docker build -t idmccnobackend-app:test .
```

## Run Docker

```bash
docker run --rm -p 8090:8080 --name idmccnobackend-app idmccnobackend-app:test
```

Aprire:

```text
http://localhost:8090
```

## Push nel registry locale del PoC

```bash
docker tag idmccnobackend-app:test localhost:5001/idmccnobackend-app:test
docker push localhost:5001/idmccnobackend-app:test
```
