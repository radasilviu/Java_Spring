package com.silviu.mvc.dao.services;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Component;

import com.silviu.mvc.dao.entities.Project;

@Component
public class ProjectService {
	
	private List<Project> projects = new LinkedList<>();
	
	
	public ProjectService() {
		Project javaProject=this.createProject("Java Project","This is a Java Project");
		Project javascriptProject=this.createProject("Javascript Project","This is a Javascript Project");
		Project htmlProject=this.createProject("Html Project","This is a Html Project");
		this.projects.addAll(Arrays.asList(new Project[] {javaProject,javascriptProject,htmlProject}));
		
	}

	



	private Project createProject(String a, String b) {
		Project p=new Project();
		p.setName(a);
		p.setDescription(b);
		return p;
	}





	public List<Project> findAll(){
		return this.projects;
	}
	
	public Project find(Long projectId)
	{
		return this.projects.stream().filter(p->{return p.getProjectId().equals(projectId);})
				.collect(Collectors.toList()).get(0);
	}
}
