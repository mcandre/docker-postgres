# docker-postgres - a Docker container running a continuous PostgreSQL server

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-postgres/

# EXAMPLE

```
$ make
docker build -t mcandre/docker-postgres:latest .
docker exec ec78736c17866d05a185c830ae0e3f44656a0a7674a0c9f2e4f9d040235f9dd8 psql -h $(docker-machine ip default) -U postgres -c "SELECT 'Hello World!';"
   ?column?
--------------
 Hello World!
(1 row)
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)
* [Node.js](https://nodejs.org/en/) (for dockerlint)
