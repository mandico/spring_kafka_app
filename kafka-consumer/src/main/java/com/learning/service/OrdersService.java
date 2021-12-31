package com.learning.service;

import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;

import com.learning.entity.Orders;
import com.learning.repository.OrdersRepository;

@Service
public class OrdersService {

	@Value("${topic.message}")
	private String topic_name;

	@Value("${eureka.instance.instance-id}")
	private String instance;

	@Autowired
	private OrdersRepository ordersRepository;

	private final Logger log = LoggerFactory.getLogger(OrdersService.class);

	@KafkaListener(topics = "${topic.message}", groupId = "group_id")
	public void consume(ConsumerRecord<String, String> payload) {
		log.info("Tópico: {}", topic_name);
		log.info("Partion: {}", payload.partition());
		log.info("Order: {}", payload.value());
		log.info("*********************************");

		SaveOrder(new Orders(null, topic_name, payload.partition(), payload.value(), instance));

	}

	public void SaveOrder(Orders order) {
		ordersRepository.save(order);
	}

}
