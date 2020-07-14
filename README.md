# go-bank-api

## A simple bank API implementation with go using SQLC

## Quickstart

```bash
# Start DB container with docker in backgroud
make postgres

# Create a simple_bank DB
make createdb

# Promote/Initialise database schema
make migrate-up

# Generate GO code for DB sql statements
make sqlc
```

## Development

To add additional CRUD functions.

1.  Create new file in `db/query/{TABLE_NAME}` with TABLE_NAME as your table name
2.  Write necessary SQL statements in above generated file.
3.  Run `make sqlc`
