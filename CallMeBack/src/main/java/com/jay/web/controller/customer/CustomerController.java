package com.jay.web.controller.customer;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jay.web.entity.Member;
import com.jay.web.entity.ProjectCnt;
import com.jay.web.service.customer.CustomerService;

@Controller
@RequestMapping("/")
public class CustomerController {
	
	@Autowired
	private CustomerService cs;
	
	@RequestMapping(value="main", method= {RequestMethod.GET, RequestMethod.POST})
	public String main(Model model, HttpServletRequest request) {
		System.out.println("access Main");
		
		String userId = request.getParameter("userId");
		ProjectCnt pCnt = cs.getProjectCnt(userId);
		model.addAttribute("pCnt",pCnt);
		
		System.out.println("userId : " + userId + " - " + pCnt);
		
		return "customer.main";
	}
	

	@RequestMapping("login")
	public String login() {
		System.out.println("access Login");
		return "customer.login";
	}

	@RequestMapping("loginPro")
	public String loginPro(Model model, HttpServletRequest request) {
		System.out.println("access LoginPro");
		
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		System.out.println(userId);
		System.out.println(userPwd);
		
		Member m = new Member(userId, userPwd);
		m = cs.login(m);
		
		model.addAttribute("member",m);
		
		return "customer.loginPro";
	}
	
	@RequestMapping("logout")
	public String logout() {
		System.out.println("access Logout");
		
		return "customer.logout";
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

	@RequestMapping("updateProfile")
	public String updateProfile(Model model, HttpServletRequest request) {
		System.out.println("access UpdateProfile");
		
		
		return "customer.UpdateProfile";
	}

	// 중복 확인
	@RequestMapping(value="checkDouble", method = RequestMethod.GET)
	@ResponseBody
	public int checkDouble(@RequestParam("input") String input, @RequestParam("field") String field, @RequestParam("userId") String userId) {
		System.out.println("access CheckDouble");
		
		return cs.checkDouble(input, field, userId);
	}
	
	@RequestMapping("searchLoginInfo")
	public String searchLoginInfo() {
		System.out.println("access SearchLoginInfo");
		return "customer.searchLoginInfo";
	}
}