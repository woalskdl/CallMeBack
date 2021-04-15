package com.jay.web.controller.customer;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jay.web.service.CustomerService;
import com.jay.web.service.dao.PcommentDAO;
import com.jay.web.service.dto.ProjectCnt;

@Controller
@RequestMapping("/")
public class CustomerController {
	
	@Autowired
	private CustomerService cs;
	
	@RequestMapping("main")
	public String main(Model model) throws SQLException {
	System.out.println("access Main");
	
	ProjectCnt pCnt = cs.getProjectCnt();
	model.addAttribute("pCnt",pCnt);
	
	return "customer.main.main";
	}
	

	@RequestMapping("login")
	public String login() {
		System.out.println("access Login");
		return "customer.main.login";
	}

	@RequestMapping("signUp")
	public String signUp() {
		System.out.println("access SignUp");
		return "customer.main.signUp";
	}
	
	@RequestMapping("profile")
	public String profile() {
		System.out.println("access Profile");
		return "customer.main.profile";
	}
	
	@RequestMapping("searchLoginInfo")
	public String searchLoginInfo() {
		System.out.println("access SearchLoginInfo");
		return "customer.main.searchLoginInfo";
	}
}