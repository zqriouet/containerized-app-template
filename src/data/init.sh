#!/bin/bash

if [ $CREATE_DB = "1" ]; then
    # Exécutez ici les commandes SQL pour créer les tables
    mariadb -u ${DB_USER} -p${MYSQL_ROOT_PASSWORD} ${MYSQL_DATABASE} < /create_tables.sql
    echo "Database ${MYSQL_DATABASE} is up !"
fi
