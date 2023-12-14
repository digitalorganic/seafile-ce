
stop:
	docker-compose -f docker-compose.traefik.yml -f docker-compose.yml down
start:
	docker-compose -f docker-compose.traefik.yml -f docker-compose.yml up -d
restart:
	make stop && make start
