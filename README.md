# Simple javascript web app

## HOWTO:
- build binary with very simple webserver (GOOS=linux GOARCH=386 go build ./server.go)
- install docker, docker-compose


RUN:

```
docker-compose up -d
```

check using curl / webbrowser:

```
curl http://localhost
```