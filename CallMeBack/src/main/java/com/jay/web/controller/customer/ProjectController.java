package com.jay.web.controller.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/project/")
public class ProjectController {
	
	@RequestMapping("checkProjectId")
	public String checkProjectId() {
		System.out.println("access CheckProjectId");
		return "customer.project.checkProjectId";
	}

	@RequestMapping("list")
	public String projects() {
		System.out.println("access List");
		return "customer.project.list";
	}

	@RequestMapping("info")
	public String projectInfo() {
		System.out.println("access Info");
		return "customer.project.info";
	}

	@RequestMapping("addComment")
	public String addComment() {
		System.out.println("access addComment");
		return "customer.project.addComment";
	}
}
