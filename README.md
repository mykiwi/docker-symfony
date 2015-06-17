# Use Symfony with Docker

An easy way to launch a Symfony application with Docker

### Web server

```
docker run -d \
  -v `pwd`:/srv \
  -p 80:80 \
  --name project_name \
  romqin/symfony
```

### Console

```
docker exec -ti project_name app/console
```
