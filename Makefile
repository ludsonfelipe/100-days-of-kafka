start:
	docker exec -it kafka100d bash
create_topic:
	docker exec -it kafka100d bash bin/kafka-topics.sh --create --topic $(topic) --bootstrap-server kafka100d:9092
list_topics:
	docker exec -it kafka100d bash bin/kafka-topics.sh --list --bootstrap-server kafka100d:9092
write_topic:
	docker exec -it kafka100d bash bin/kafka-console-producer.sh --topic $(topic) --bootstrap-server kafka100d:9092
read_topic:
	docker exec -it kafka100d bash bin/kafka-console-consumer.sh --topic $(topic) --from-beginning --bootstrap-server kafka100d:9092