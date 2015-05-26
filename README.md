# docker-postgres - a Docker container running a continuous PostgreSQL server

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-postgres/

# EXAMPLE

```
$ make
docker build -t mcandre/docker-postgres:8 .
docker exec ec78736c17866d05a185c830ae0e3f44656a0a7674a0c9f2e4f9d040235f9dd8 psql -h $(boot2docker ip) -U postgres -c "SELECT 'Hello World!';"
   ?column?
--------------
 Hello World!
(1 row)
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io build-essential
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

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install virtualbox vagrant
$ brew install boot2docker
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install docker make
```
