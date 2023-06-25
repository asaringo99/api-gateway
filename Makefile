.PHONY: build-dev build-prod up-dev up-prod down

build-dev:
	docker-compose build api-gateway-dev

build-prod:
	docker-compose build api-gateway-prod

up-dev:
	docker-compose up api-gateway-dev

up-prod:
	docker-compose up api-gateway-prod

down:
	docker-compose down
