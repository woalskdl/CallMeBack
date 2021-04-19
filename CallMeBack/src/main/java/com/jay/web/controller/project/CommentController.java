package com.jay.web.controller.project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/comment/")
public class CommentController {
	@RequestMapping("add")
	public String addComment() {
		System.out.println("access addComment");
		return "project.comment.add";
	}
}
