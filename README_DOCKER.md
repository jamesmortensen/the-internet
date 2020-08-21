
# Build local docker image

```
$ docker build -t the-internet:1.0 .
```

# Run locally built docker image

```
$ docker run --rm -p 5000:5000 the-internet:1.0
```

# Run remote image with 'app' hostname mapped to host IP address

```
$ docker run --rm --add-host app:`ipconfig getifaddr en0` -p 7080:5000 gprestes/the-internet
```
