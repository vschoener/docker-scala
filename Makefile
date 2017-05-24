
SERVICE=app

build: clean
	docker-compose build

stop:
	docker-compose kill || true

clean: stop
	docker-compose rm -f

run:
	docker-compose run --rm $(SERVICE) scalac HelloWorld.scala
	docker-compose run --rm $(SERVICE) scala HelloWorld.scala

shell:
	docker-compose exec $(SERVICE) bash

ps:
	docker-compose ps