package com.learning.repository;

import org.springframework.data.repository.CrudRepository;

import com.learning.entity.Orders;

public interface OrdersRepository extends CrudRepository<Orders, Long> {

}
