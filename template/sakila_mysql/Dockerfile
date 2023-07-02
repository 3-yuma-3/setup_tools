FROM mysql:8.0.33-debian

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=password

# https://qiita.com/okumurakengo/items/727d15e3ab2d22cdb1f8
RUN apt-get update \
    && apt-get install -y wget unzip \
    && wget http://downloads.mysql.com/docs/sakila-db.zip \
    && unzip sakila-db.zip \
    # docker-entrypoint-initdb.d/　の　.sql　ファイルが自動でアルファベット順に実行されるので、リネームしつつ移動
    && mv sakila-db/sakila-schema.sql /docker-entrypoint-initdb.d/01_sakila-schema.sql \
    && mv sakila-db/sakila-data.sql /docker-entrypoint-initdb.d/02_sakila-data.sql
