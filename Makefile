
SERVICE=app

build: clean
	docker-compose build

stop:
	docker-compose kill || true

clean: stop
	docker-compose rm -f

compile:
	docker-compose run --rm $(SERVICE) sbt compile

run:
	docker-compose run --rm $(SERVICE) sbt run

shell:
	docker-compose run --rm app bash

ps:
	docker-compose ps