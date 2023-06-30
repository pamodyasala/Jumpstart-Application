package com.jumpstart.Jumpstart.Application.service;

import java.util.List;

import com.jumpstart.Jumpstart.Application.bean.Order;



public interface OrderService {
	
	public String addjobs(Order us);
	public String updatejobs(Order us);
	public List<Order> ShowJobData();


}
