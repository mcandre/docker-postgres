# docker-postgres - a Docker container running a continuous PostgreSQL server

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-postgres/

# EXAMPLE

```
$ docker pull mcandre/docker-postgres

$ CONTAINER=$(docker run -d -p 5432:5432 mcandre/docker-postgres)
$ docker exec $CONTAINER psql -h $(boot2docker ip) -U postgres -c "SELECT 'Hello World!';"
   ?column?   
--------------
 Hello World!
(1 row)
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)
* [boot2docker](http://boot2docker.io/)

### Mac OS X

* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install virtualbox vagrant
$ brew install boot2docker
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install docker
```

# DEVELOPMENT

## Build

```
$ git clone https://github.com/mcandre/docker-postgres.git
$ cd docker-postgres/
$ docker build -t mcandre/docker-postgres .

$ CONTAINER=$(docker run -d -p 5432:5432 mcandre/docker-postgres)
```

## Publish

```
$ docker push mcandre/docker-postgres
```

## Linux

```
$ docker exec $CONTAINER psql -U postgres -c "SELECT 'Hello World!';"
```

## non-Linux

```
$ docker exec $CONTAINER psql -h $(boot2docker ip) -U postgres -c "SELECT 'Hello World!';"
```

```
   ?column?   
--------------
 Hello World!
(1 row)
```

## Cleanup

Sometimes you want to halt and delete Docker containers or images.

### Destroy all containers matching query

```
$ docker ps -a | grep docker-postgres | awk '{ print $1 }' | xargs docker rm -f
```

### Destroy all images matching query

```
$ docker images | grep docker-postgres | awk '{ print $3 }' | xargs docker rmi -f
```
