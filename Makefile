.PHONY: generate run build

generate:
	go tool gqlgen generate

build:
	docker build -t gogql .

run: build
	docker run -p 8080:8080 gogql
