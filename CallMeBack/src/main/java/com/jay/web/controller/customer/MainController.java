package com.jay.web.controller.customer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/")
public class MainController {
	
	@RequestMapping("main")
	public String main() {
		
		System.out.println("실행됨");
//		ModelAndView mv = new ModelAndView("customer/main");
		
		return "customer.main";
	}
}