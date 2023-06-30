package com.jumpstart.Jumpstart.Application.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jumpstart.Jumpstart.Application.bean.User;
import com.jumpstart.Jumpstart.Application.service.UserService;



@Controller
public class HomeController {

	@Autowired
	private UserService userService;
	
	@GetMapping(value = "/")
	public String index()
	{
		
		return "Index";
	}
	
	@GetMapping("login")
    public String onLogin() {
		
        return "Login02";
    }
	
    @GetMapping("logout")
    public String logout() {
        return "index";
    }
	
	@GetMapping("new")
	public String newUserForm(Map<String, Object> model) {
    	System.out.println("new Login Controller");
		User user = new User();
		model.put("user", user);
		return "Login";
	}
	
	@PostMapping("save")
	public String saveStore(@ModelAttribute("user") User user, Model model) {
		System.out.println("/save Login Controller");
		userService.save(user);
		String register_success = "<h5> Registeration Successful! </h5>";
		model.addAttribute("register_success", register_success);
		return "Index";
	}
	
	@RequestMapping(value="users",  method= RequestMethod.GET)
    public String viewUsers(Model model) {
        List<User> users = userService.listAll();
        if(!CollectionUtils.isEmpty(users)) {
            model.addAttribute("userlists", users);
        }
        return "Users";
    }
	
	@RequestMapping("delete")
	public String deleteCar(@RequestParam long id) {
		userService.delete(id);
		return "redirect:/users";		
	}
	
	@GetMapping("Home")
    public String Home() {
		
        return "Home";
    }
	
	@GetMapping("contact")
    public String aboutUs() {
		
        return "ContactUs";
    }
	
	@GetMapping("about")
    public String contactUs() {
		
        return "AboutUs";
    }

}
