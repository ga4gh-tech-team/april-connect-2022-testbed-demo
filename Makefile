Nothing:
	@echo "No target provided. Stop"

.PHONY: clean-db
clean-db:
	@rm -f db/testbed.db

.PHONY: create-db
create-db:
	@sqlite3 db/testbed.db < db/create-tables.sql
	@sqlite3 db/testbed.db < db/populate-tables.sql

.PHONY: refresh-db
refresh-db: clean-db create-db

.PHONY: start-services
start-services:
	@docker-compose up -d

.PHONY: shutdown-services
shutdown-services:
	@docker-compose down

.PHONY: test-refget-local
test-refget-local:
	@refget-compliance report \
		--server http://localhost:8888/ \
		--no-web \
		--submit \
		--submit-id 1edb5213-52a2-434f-a7b8-b101fea8fb30 \
		--submit-token K5pLbwScVu8rEoLLj8pRy5Wv7EXTVahn

.PHONY: test-cram-reference-registry
test-cram-reference-registry:
	@refget-compliance report \
		--server http://localhost:8888/ \
		--no-web \
		--submit \
		--submit-id 483382e9-f92b-466d-9427-154d56a75fcf \
		--submit-token l0HiRbbpjVDKc6k3tQ2skzROB1oAP2IV
