package com.jumpstart.Jumpstart.Application.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jumpstart.Jumpstart.Application.bean.Order;
import com.jumpstart.Jumpstart.Application.service.OrderService;



@Controller
public class OrderController {
	
	@Autowired
	OrderService orderservice;
	
	@GetMapping(value = "/order")
	public String addjobs(@ModelAttribute("jdata") Order us)
	{
		return "Order";
	}
	
	@PostMapping(value = "/orderdone")
	public String addj(@ModelAttribute("jdata") Order us)
	{
		//leanerservice.addlearnerDet(lea);
		orderservice.addjobs(us);
		System.out.println(us);
		return "Thankyouorder";
	}
	
	@GetMapping(value="/vieworder") 
	public ModelAndView showjob() {
		List<Order> jdata=orderservice.ShowJobData();
		System.out.println(jdata);
		return new ModelAndView("ViewOrder","testd",jdata);
	}
	
	/*@GetMapping(value="/vieworder") 
	public ModelAndView showjobnew() {
		List<Order> jdata=orderservice.ShowJobData();
		System.out.println(jdata);
		return new ModelAndView("ViewOrder","testd",jdata);
	}*/
	

}
