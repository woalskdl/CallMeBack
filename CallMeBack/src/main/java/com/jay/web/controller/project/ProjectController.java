package com.jay.web.controller.project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/addProject/")
public class ProjectController {
	
	@RequestMapping("newProject")
	public String newProject() {
		System.out.println("access NewProject");
		return "project.newProject";
	}
	@RequestMapping("selectProject")
	public String selectProject() {
		System.out.println("access SelectProject");
		return "project.selectProject";
	}
	
	@RequestMapping("img")
	public String img() {
		System.out.println("access Img");
		return "project.img";
	}
	@RequestMapping("person")
	public String person() {
		System.out.println("access Person");
		return "project.person";
	}
	@RequestMapping("pictorial")
	public String pictorial() {
		System.out.println("access Pictorial");
		return "project.pictorial";
	}
	@RequestMapping("beauty")
	public String beauty() {
		System.out.println("access Beauty");
		return "project.beauty";
	}
	@RequestMapping("clothes")
	public String clothes() {
		System.out.println("access Clothes");
		return "project.clothes";
	}
	@RequestMapping("picSize")
	public String picSize() {
		System.out.println("access PicSize");
		return "project.picSize";
	}
	@RequestMapping("projectDetail")
	public String projectDetail() {
		System.out.println("access ProjectDetail");
		return "project.projectDetail";
	}
	@RequestMapping("askLogin")
	public String askLogin() {
		System.out.println("access AskLogin");
		return "project.askLogin";
	}
	@RequestMapping("fin")
	public String fin() {
		System.out.println("access AddProjectFin");
		return "project.addProjectFin";
	}
	
	@RequestMapping("video")
	public String video() {
		System.out.println("access Video");
		return "project.video";
	}
}
