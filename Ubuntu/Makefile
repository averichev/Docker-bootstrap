.PHONY: build
build: ## Построение контейнеров
	docker build -t ubuntu ./containers/ubuntu/
	docker build -t console ./containers/console/

.PHONY: down
down: ## Остановка контейнеров
	docker-compose down --remove-orphans

.PHONY: up
down: ## Остановка контейнеров
	docker-compose up --remove-orphans

.PHONY: console
console: ## Консоль для мака
	bash docker-cli.sh console
