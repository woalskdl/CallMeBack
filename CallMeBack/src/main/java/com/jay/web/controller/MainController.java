package com.jay.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/")
public class MainController {
	
	@RequestMapping("main")
	public void main() {
		
		System.out.println("실행됨");
//		ModelAndView mv = new ModelAndView("customer/main");
		
//		return mv;
	}
}