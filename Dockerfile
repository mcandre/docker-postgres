FROM ubuntu:vivid
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
COPY start-postgres /
RUN apt-get update && \
    apt-get install -y postgresql-9.4 && \
    echo "host all all 0.0.0.0/0 trust" >> /etc/postgresql/9.4/main/pg_hba.conf && \
    echo "listen_addresses='*'" >> /etc/postgresql/9.4/main/postgresql.conf
EXPOSE 5432
ENTRYPOINT ["/start-postgres"]
