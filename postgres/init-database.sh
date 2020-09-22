#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE frrs_database;

EOSQL

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname frrs_database <<-EOSQL
    CREATE extension if not exists cube;
EOSQL
