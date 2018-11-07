package com.silviu.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/project")
public class ProjectController {
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String addProject()
	{
		System.out.println("invoking add project");
		return "project_add";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String saveProject()
	{
		System.out.println("invoking save project");
		return "project_add";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST,params= {"type=multi"})
	public String multiYearProject()
	{
		System.out.println("invoking save multiYearProject");
		return "project_add";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST,params= {"type=multi","special"})
	public String specialProject()
	{
		System.out.println("invoking special Project");
		return "project_add";
	}


}
