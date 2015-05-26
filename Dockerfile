FROM ubuntu:lucid
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
RUN apt-get update && \
    apt-get install -y postgresql && \
    echo "host all all 0.0.0.0/0 trust" >> /etc/postgresql/8.4/main/pg_hba.conf && \
    echo "listen_addresses='*'" >> /etc/postgresql/8.4/main/postgresql.conf
EXPOSE 5432
ENTRYPOINT su postgres -c '/usr/lib/postgresql/8.4/bin/postgres -D /var/lib/postgresql/8.4/main -c config_file=/etc/postgresql/8.4/main/postgresql.conf'
