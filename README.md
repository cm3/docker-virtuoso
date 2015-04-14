docker-virtuoso
===============

A Dockerized Virtuoso.

```
$ docker build -t virtuoso:7.2.0 .
```

## Start a container

```
 $ docker run -u="virtuoso" -d -p 127.0.0.1:8890:8890 --name virtuoso1 virtuoso:7.2.0
```

## Differences from [namlook/docker-virtuoso](https://github.com/namlook/docker-virtuoso)

- Use ubuntu:14.04.2 as a base image.
- Install latest stable virtuoso 7 by using git command instead of downloading zip file.
- Install to default path (/usr/local/virtuoso-opensource/) and use default .ini file.
- Doesn't use .sh file.
- Doesn't expose ports directly. (See: [Viktor's ramblings • The dangers of UFW + Docker](http://blog.viktorpetersson.com/post/101707677489/the-dangers-of-ufw-docker "Viktor's ramblings • The dangers of UFW + Docker"))

## More info

- [Virtuoso を Docker で運用 - Drafts](http://cm3.hateblo.jp/entry/2015/04/06/023729 "Virtuoso を Docker で運用 - Drafts") (Japanese)
