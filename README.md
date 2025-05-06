# greenlight

create pair of migrations: migrate create -seq -ext .sql -dir ./migrations create_tokens_table
execute migrations: migrate -path ./migrations -database postgres://greenlight:greenlight@localhost/greenlight?sslmode=disable up

run project: ./run_gl.sh