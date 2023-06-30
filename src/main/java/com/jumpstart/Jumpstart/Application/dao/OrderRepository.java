package com.jumpstart.Jumpstart.Application.dao;



import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;


import com.jumpstart.Jumpstart.Application.bean.Order;
;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {
	
}
