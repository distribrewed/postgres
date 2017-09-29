FROM postgres:9-alpine

ADD create_extension.sh docker-entrypoint-initdb.d/create_extension.sh