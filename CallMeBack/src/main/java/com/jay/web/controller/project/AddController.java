package com.jay.web.controller.project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/add/")
public class AddController {
	
	@RequestMapping("newProject")
	public String newProject() {
		System.out.println("access NewProject");
		return "project.add.newProject";
	}
	@RequestMapping("selectProject")
	public String selectProject() {
		System.out.println("access SelectProject");
		return "project.add.selectProject";
	}
	
	@RequestMapping("img")
	public String img() {
		System.out.println("access Img");
		return "project.add.img";
	}
	@RequestMapping("person")
	public String person() {
		System.out.println("access Person");
		return "project.add.person";
	}
	@RequestMapping("pictorial")
	public String pictorial() {
		System.out.println("access Pictorial");
		return "project.add.pictorial";
	}
	@RequestMapping("beauty")
	public String beauty() {
		System.out.println("access Beauty");
		return "project.add.beauty";
	}
	@RequestMapping("clothes")
	public String clothes() {
		System.out.println("access Clothes");
		return "project.add.clothes";
	}
	@RequestMapping("picSize")
	public String picSize() {
		System.out.println("access PicSize");
		return "project.add.picSize";
	}
	@RequestMapping("projectDetail")
	public String projectDetail() {
		System.out.println("access ProjectDetail");
		return "project.add.projectDetail";
	}
	@RequestMapping("askLogin")
	public String askLogin() {
		System.out.println("access AskLogin");
		return "project.add.askLogin";
	}
	@RequestMapping("fin")
	public String fin() {
		System.out.println("access Fin");
		return "project.add.fin";
	}
	
	@RequestMapping("video")
	public String video() {
		System.out.println("access Video");
		return "project.add.video";
	}
}
