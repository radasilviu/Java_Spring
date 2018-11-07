package com.silviu.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.silviu.mvc.dao.entities.Project;


@Controller
@RequestMapping("/home")
public class MainController {

	@RequestMapping("/")
	public String greeting(Model model)
	{
		Project project = new Project();
		project.setName("First project");
		project.setSponsor("Nasa");
		project.setDescription("This is a simple project of Nasa");
		
		model.addAttribute("currentProject",project);
		
		return "home";
	}
}
