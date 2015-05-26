FROM mcandre/docker-debian:etch
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
RUN apt-get update && \
    apt-get install -y postgresql && \
		su postgres -c 'createdb postgres' && \
    echo "host all all 0.0.0.0/0 trust" >> /etc/postgresql/7.4/main/pg_hba.conf && \
		echo "listen_addresses = '*'" >> /etc/postgresql/7.4/main/pg_hba.conf
EXPOSE 5432
ENTRYPOINT su postgres -c '/usr/lib/postgresql/7.4/bin/postmaster -D /var/lib/postgresql/7.4/main'
