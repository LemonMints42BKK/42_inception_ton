all:
	@mkdir -p ${HOME}/data
	@mkdir -p ${HOME}/data/mariadb
	@mkdir -p ${HOME}/data/wordpress
	@docker compose -f ./srcs/docker-compose.yml up --build

down:
	@docker compose -f ./srcs/docker-compose.yml down

re:
	@docker compose -f ./srcs/docker-compose.yml up -d --build

clean: down
	docker system prune --all
	rm -rf ${HOME}/data

.PHONY: all re down clean
