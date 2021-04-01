package com.jay.web.controller.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/")
public class MainController {
	
	@RequestMapping("main")
	public String main() {
		System.out.println("access Main");
		return "customer.main";
	}
	
	@RequestMapping("login")
	public String login() {
		System.out.println("access Login");
		return "customer.login";
	}
	
	@RequestMapping("signUp")
	public String signUp() {
		System.out.println("access SignUp");
		return "customer.signUp";
	}

	@RequestMapping("profile")
	public String profile() {
		System.out.println("access Profile");
		return "customer.profile";
	}

	@RequestMapping("searchLoginInfo")
	public String searchLoginInfo() {
		System.out.println("access SearchLoginInfo");
		return "customer.searchLoginInfo";
	}
	@RequestMapping("projects")
	public String projects() {
		System.out.println("access Projects");
		return "customer.projects";
	}
}