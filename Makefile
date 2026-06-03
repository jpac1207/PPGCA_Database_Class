start-postgres-and-client:
	docker compose -f postgres_compose.yml up -d

stop-postgres-and-client:
	docker compose -f postgres_compose.yml down

stop-postgres-and-client-and-remove-volume:
	docker compose -f postgres_compose.yml down -v

start-mongo-and-client:
	docker compose -f mongo_compose.yml up -d

stop-mongo-and-client:
	docker compose -f mongo_compose.yml down