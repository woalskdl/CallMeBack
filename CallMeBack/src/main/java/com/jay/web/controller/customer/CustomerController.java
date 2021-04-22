package com.jay.web.controller.customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jay.web.entity.Member;
import com.jay.web.entity.ProjectCnt;
import com.jay.web.service.customer.CustomerService;

@Controller
@RequestMapping("/")
public class CustomerController {
	
	@Autowired
	private CustomerService cs;
	
	@RequestMapping("main")
	public String main(Model model, HttpSession session) {
		System.out.println("access Main");
		
		Member member = (Member)session.getAttribute("member");
		String userId = null;
		if(member != null) {
			userId = member.getId();
			session.setAttribute("member", member);
		}
		
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
	public String updateProfile() {
		System.out.println("access UpdateProfile");
		
		return "customer.UpdateProfile";
	}

	// 중복 확인
	@RequestMapping("checkDouble")
	public @ResponseBody int checkDouble(String input, String field, String userId) {
		System.out.println("access CheckDouble");
		
		return cs.checkDouble(input, field, userId);
	}
	
	@RequestMapping("updateProfilePro")
	public String updateProfilePro(HttpServletRequest request, HttpSession session) {
		System.out.println("access UpdateProfilePro");
		
		Member member = (Member)session.getAttribute("member");
		String userId = member.getId();
		
		String userName = request.getParameter("name");
		String userPwd = request.getParameter("password");
		String userEmail = request.getParameter("email");
		
		Member m = new Member(userId, userPwd, userName, userEmail);
		System.out.println(m);
		int result = cs.updateProfile(m);
		
		String page = "";
		if(result == 1)
			page = "customer.updateProfilePro";
		else
			page = "error";
		
		return page;
	}

	@RequestMapping("signUpPro")
	public String signUpPro(HttpServletRequest request) {
		System.out.println("access SignUpPro");
		
		String userId = request.getParameter("id");
		String userName = request.getParameter("name");
		String userPwd = request.getParameter("password");
		String userEmail = request.getParameter("email");
		
		Member m = new Member(userId, userPwd, userName, userEmail);
		System.out.println(m);
		int result = cs.insertProfile(m);
		
		String page = "";
		if(result == 1)
			page = "customer.signUpPro";
		else
			page = "error";
		
		return page;
	}
	
	@RequestMapping("searchLoginInfo")
	public String searchLoginInfo() {
		System.out.println("access SearchLoginInfo");
		return "customer.searchLoginInfo";
	}
	
	@RequestMapping("errorPage")
	public String error() {
		System.out.println("access ErrorPage");
		return "customer.errorPage";
	}
}