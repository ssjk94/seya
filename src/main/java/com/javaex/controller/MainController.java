package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String main(){
		System.out.println("main");
		return "main/index";
	}
	
	@RequestMapping(value="/project", method=RequestMethod.GET)
	public String project(){
		System.out.println("project");
		return "main/project";
	}
		
//	@RequestMapping("/hello")
//	public String hello() {
//		System.out.println("/mysiteh/hello");
//		return "index";
//	}
	
}
