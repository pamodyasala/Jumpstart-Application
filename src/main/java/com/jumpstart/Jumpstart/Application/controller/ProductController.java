package com.jumpstart.Jumpstart.Application.controller;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.jumpstart.Jumpstart.Application.bean.Product;
import com.jumpstart.Jumpstart.Application.service.ProductService;
import com.jumpstart.Jumpstart.Application.service.UserService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productservice;
	@Autowired
	private UserService userService;
	
	@PostMapping("cars")
    public String saveProduct(Product product, Model model) {
    	
    	System.out.println("Save & Update new product");
        productservice.saveProduct(product);	       
        return "redirect:Home";
    }
	
	@GetMapping("new_car")
	public String newUserForm(Product product, Model model) {
    	
		return "AddProduct";
	}
	
	@GetMapping("products")
    public String viewProducts(Model model) {
        List<Product> cars = productservice.getAllCars();
        if(!CollectionUtils.isEmpty(cars)) {
            model.addAttribute("cars", cars);
        }
        return "Product";
    }
	
	/*@GetMapping("car_detail")
	public ModelAndView viewCar(@RequestParam long id , Model model) {
		ModelAndView mav = new ModelAndView("Order");
		Product car = productservice.get(id);
		model.addAttribute("car", car);
		mav.addObject("car", car);
		
		return mav;
	}*/
	
	@RequestMapping("deleteuser")
	public String deleteCar(@RequestParam Long id) {
		productservice.delete(id);
		return "redirect:/products";		
	}
	
	
	
	
	
}
