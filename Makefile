.PHONY: build-dev build-prod up-dev up-prod down

build-dev:
	docker-compose build dev

build-prod:
	docker-compose build prod

up-dev:
	docker-compose up dev

up-prod:
	docker-compose up prod

up-build-dev:
	docker-compose up dev --build -d

down:
	docker-compose down
