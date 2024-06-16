# Postgresql

```sh
docker network create web
```

```sh
docker compose up -d
```

> Note: warning for new apple chips computer are expected, and shouldn't be blocking any of the following commands

```sh
# creates aus database
docker compose exec -it postgres-aus psql -U aus-user -f /tmp/sql/create-database.sql
```

```sh
# creates the postgis postgreSQL extension
# for geo spatial data types
docker compose exec -it postgres-aus psql -U aus-user -d aus -f /tmp/sql/create-extension.sql
```

```sh
# creates aus tables
docker compose exec -it postgres-aus psql -U aus-user -d aus -f /tmp/sql/create-tables.sql
```

```sh
# loads data in tables from CSV files
docker compose exec -it postgres-aus psql -U aus-user -d aus -f /tmp/sql/load-data.sql
```

```sh
# creates views for aus
docker compose exec -it postgres-aus psql -U aus-user -d aus -f /tmp/sql/create-views.sql
```
