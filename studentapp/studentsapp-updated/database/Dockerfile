FROM mysql:latest

LABEL database="studentapp"

ENV MYSQL_ROOT_PASSWORD=1234

COPY init-db.sql /docker-entrypoint-initdb.d/

CMD ["mysqld"]