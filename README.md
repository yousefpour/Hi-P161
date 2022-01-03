# Hi-P161
The Rails application that show the message "Hi P161"

This rails application run on the Docker container, To start docker containers run docker-start.sh script.


# Docker Build
```console
cd Docker
./docker-start.sh
```

Check docker containers
```console
docker ps
CONTAINER ID   IMAGE        COMMAND                  CREATED        STATUS        PORTS                                       NAMES
2b932ec3a2df   docker_web   "entrypoint.sh bash …"   18 hours ago   Up 18 hours   0.0.0.0:3000->3000/tcp, :::3000->3000/tcp   docker_web_1
5522ff7c97a7   postgres     "docker-entrypoint.s…"   18 hours ago   Up 18 hours   5432/tcp                                    docker_db_1
```

For check rails application output, you can open url in browser or use curl and etc.

```console
curl http://localhost:3000/
...
<h1>Hi P161</h1>
...
```

# Change Message
This application use enviroment variable for print message, you can edit variable in the docker-compose.yml to change message.

```console
Docker/docker-compose.yml
...
    environment:
      message: "Hi P161"
...
```

Change message variable and run docker-compose up so you can find change on the fly.

```console
Docker/docker-compose.yml
...
    environment:
      message: "What's new, Platform 161 folks!"
...

cd Docker
docker-compose up -d
docker_db_1 is up-to-date
Recreating docker_web_1 ... done

curl http://localhost:3000/
...
<h1>What&#39;s new, Platform 161 folks!</h1>
...
```
