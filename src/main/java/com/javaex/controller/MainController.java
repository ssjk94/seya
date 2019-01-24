package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping(value="/main1", method=RequestMethod.GET)
	public String main1(){
		System.out.println("main1");
		return "main/index";
	}

	@RequestMapping(value = "/main2", method = RequestMethod.GET)
	public String main2() {
		System.out.println("main2");
		return "main/index2";
	}
	@RequestMapping(value="/fcpage", method=RequestMethod.GET)
	public String fcpage(){
		System.out.println("fcpage");
		return "main/flashcardpage";
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
	
	@RequestMapping(value = "/profilemodify", method = RequestMethod.GET)
	public String profilemodify() {
		System.out.println("profilemodify");
		return "kyunghwan/profilemodify/_profilemodify";
	}

	@RequestMapping(value = "/gamepage", method = RequestMethod.GET)
	public String gamepage() {
		System.out.println("gamepage");
		return "kyunghwan/gamepage/_gamepageoutline";
	}
	
	@RequestMapping(value = "/vocabularymodify", method = RequestMethod.GET)
	public String vocabularymodify() {
		System.out.println("gamepage");
		return "kyunghwan/vocabularymodify/_vocabularymodify";
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup() {
		System.out.println("signup");
		return "kyunghwan/signup/signupform";
	}

	@RequestMapping(value = "/flashcard", method = RequestMethod.GET)
	public String flashcard() {
		System.out.println("flashcard");
		return "wordpad/flashcard";
	}
	@RequestMapping(value = "/leech", method = RequestMethod.GET)
	public String modibreak() {
		System.out.println("leech");
		return "kyunghwan/vocabularymodify/leech";
	}
	@RequestMapping(value = "/listtest", method = RequestMethod.GET)
	public String listtest() {
		System.out.println("list test");
		return "kyunghwan/vocabularymodify/listtest";
	}
	@RequestMapping(value = "/rankpage", method = RequestMethod.GET)
	public String rankpage() {
		System.out.println("list test");
		return "kyunghwan/gamepage/rankpage";
	}
	
//	@RequestMapping("/hello")
//	public String hello() {
//		System.out.println("/mysiteh/hello");
//		return "index";
//	}

}
