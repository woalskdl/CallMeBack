package com.jay.web.controller.customer;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jay.web.entity.ProjectCnt;
import com.jay.web.service.customer.CustomerService;

@Controller
@RequestMapping("/")
public class CustomerController {
	
	@Autowired
	private CustomerService cs;
	
	@RequestMapping("main")
	public String main(Model model) throws SQLException {
	System.out.println("access Main");
	
	String id = "woalskdl";
	ProjectCnt pCnt = cs.getProjectCnt(id);
	model.addAttribute("pCnt",pCnt);
	
	System.out.println("id : " + id + " - " + pCnt);
	
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
}