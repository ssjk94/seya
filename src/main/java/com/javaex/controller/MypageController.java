package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MypageController {

	@RequestMapping(value="/mypage/list", method=RequestMethod.GET)
	public String MypageList(){
		System.out.println("mypage/list");
		return "_view/list";
	}
		
	@RequestMapping(value="/mypage/gallery", method=RequestMethod.GET)
	public String MypageGallery(){
		System.out.println("mypage/gallery");
		return "_view/gallery";
	}
	
	@RequestMapping(value="/wordpad/flashcard", method=RequestMethod.GET)
	public String flashcard(){
		System.out.println("wordpad/flashcard");
		return "_view/flashcard";
	}
	
	@RequestMapping(value="/user/loginform", method=RequestMethod.GET)
	public String login(){
		System.out.println("user/loginform");
		return "user/loginform";
	}
	
}
