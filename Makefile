postgres:
	docker run --name=postgres12 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=password -p 5432:5432 -d postgres

createdb:
	docker exec -it postgres12 createdb --username=root --owner=root simple_bank

dropdb:
	docker exec -it postgres12 dropdb simple_bank

migrate-up:
	migrate -path db/migration -database "postgresql://root:password@localhost:5432/simple_bank?sslmode=disable" -verbose up

migrate-down:
	migrate -path db/migration -database "postgresql://root:password@localhost:5432/simple_bank?sslmode=disable" -verbose down

sqlc:
	sqlc generate


.PHONY: postgres createdb migrate-up
