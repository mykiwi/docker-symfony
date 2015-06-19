# Use Symfony with Docker

An easy way to launch a Symfony application with Docker

### Web server

```
docker run -d \
  -v `pwd`:/srv \
  -p 80:80 \
  -u `id -u` \
  --name project_name \
  romqin/symfony
```

### Open the website

```
xdg-open "http://`docker inspect --format="{{.NetworkSettings.IPAddress}}" project_name`"
# You can replace xdg-open with firefox or something else
```

### Symfony console

```
docker exec -ti project_name app/console
```
