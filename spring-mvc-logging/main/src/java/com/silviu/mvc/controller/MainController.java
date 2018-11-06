package com.silviu.mvc.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.silviu.mvc.services.GreetingService;



@Controller
@RequestMapping("/main")
public class MainController {

	@Autowired
	public GreetingService greetingService;

	
	
	@RequestMapping("/")
	public String message(org.springframework.ui.Model model)
	{
		model.addAttribute("message" ,this.greetingService.greet());
		return "hello";
	}
	
}
