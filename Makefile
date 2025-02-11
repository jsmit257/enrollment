.PHONY: clean
clean:
	docker-compose down -t5 

.PHONY: up
up: clean
	docker-compose up -d --build --remove-orphans enroll
