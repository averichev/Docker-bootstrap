.PHONY: build
build: ## Построение контейнеров
	docker build -t ubuntu ./containers/ubuntu/
	docker build -t console ./containers/console/

.PHONY: down
down: ## Остановка контейнеров
	docker-compose down --remove-orphans

.PHONY: console
console: ## Перейти в терминал контейнера
	docker-compose run console bash
