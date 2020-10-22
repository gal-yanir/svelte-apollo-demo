#!/bin/bash
set -e

SERVER="example_db_server";
PW="example";
DB="example_db";
USER="postgres";

echo "echo stop & remove old docker [$SERVER] and starting new fresh instance of [$SERVER]"
(docker kill $SERVER || :) && \
  (docker rm $SERVER || :) && \
  docker run --name $SERVER -e POSTGRES_PASSWORD=$PW \
  -e PGPASSWORD=$PW \
  -p 5432:5432 \
  -d postgres

# wait for pg to start
echo "sleep wait for pg-server [$SERVER] to start";
SLEEP 3;

# create the db 
echo "CREATE USER $USER SUPERUSER PASSWORD $PW"
echo "CREATE DATABASE $DB ENCODING 'UTF-8';" | docker exec -i $SERVER psql -U postgres
echo "\l" | docker exec -i $SERVER psql -U postgres
echo "GRANT ALL PRIVILEGES ON DATABASE $DB TO $USER";


# if [ "$RUN_MIGRATIONS" ]; then
#   echo "RUNNING MIGRATIONS";
#   start:dev:db:migration
# fi
