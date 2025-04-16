# greenlight

create pair of migrations: migrate create -seq -ext .sql -dir ./migrations add_movies_indexes
execute migrations: migrate -path ./migrations -database postgres://greenlight:greenlight@localhost/greenlight?sslmode=disable up

run project: ./run_gl.sh