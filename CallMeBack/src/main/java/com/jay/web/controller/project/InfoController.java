package com.jay.web.controller.project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/info/")
public class InfoController {
	
	@RequestMapping("checkProjectId")
	public String checkProjectId() {
		System.out.println("access CheckProjectId");
		return "project.info.checkProjectId";
	}

	@RequestMapping("list")
	public String projects() {
		System.out.println("access List");
		return "project.info.list";
	}

	@RequestMapping("info")
	public String projectInfo() {
		System.out.println("access Info");
		return "project.info.info";
	}
}
