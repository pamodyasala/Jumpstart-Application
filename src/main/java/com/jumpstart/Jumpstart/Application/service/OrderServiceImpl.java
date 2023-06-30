package com.jumpstart.Jumpstart.Application.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.jumpstart.Jumpstart.Application.bean.Order;
import com.jumpstart.Jumpstart.Application.dao.OrderRepository;

@Service("orderservice")
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	OrderRepository orderrepo;

	@Override
	public String addjobs(Order us) {
		orderrepo.save(us);
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String updatejobs(Order us) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Order> ShowJobData() {
		List<Order> database=orderrepo.findAll();
		// TODO Auto-generated method stub
		return database;
	}

}
