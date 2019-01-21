package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping(value = "/main1", method = RequestMethod.GET)
	public String main1() {
		System.out.println("main1");
		return "main/index";
	}

	@RequestMapping(value = "/main2", method = RequestMethod.GET)
	public String main2() {
		System.out.println("main2");
		return "main/index2";
	}
	
	@RequestMapping(value = "/main3", method = RequestMethod.GET)
	public String main3() {
		System.out.println("main3");
		return "main/index3";
	}


	@RequestMapping(value = "/project", method = RequestMethod.GET)
	public String project() {
		System.out.println("project");
		return "main/project";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {
		System.out.println("logout");
		return "main/logout";
	}

//	@RequestMapping("/hello")
//	public String hello() {
//		System.out.println("/mysiteh/hello");
//		return "index";
//	}

}
