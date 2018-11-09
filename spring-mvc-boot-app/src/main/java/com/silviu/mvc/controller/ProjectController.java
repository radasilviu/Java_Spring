package com.silviu.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.silviu.mvc.dao.entities.Project;
import com.silviu.mvc.dao.services.ProjectService;

@Controller
@RequestMapping("/project")
public class ProjectController {
	
	@Autowired
	public ProjectService projectService;
	
	@RequestMapping(value="/{projectId}")
	public String findProject(Model model,@PathVariable Long projectId)
	{
		model.addAttribute("project",this.projectService.find(projectId));
		return "project";
	}
	
	@RequestMapping(value="/find")
	public String find(Model model) 
	{
		model.addAttribute("projects",this.projectService.findAll());
		return "projects";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String addProject()
	{
		System.out.println("invoking add project");
		return "project_add";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String saveProject(@ModelAttribute Project project)
	{
		System.out.println("invoking save project");
		System.out.println(project);
		return "project_add";
	}

	

}
