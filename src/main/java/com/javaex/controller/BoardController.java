package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {

	@RequestMapping(value="board/list", method=RequestMethod.GET)
	public String boardList(){
		System.out.println("board/list");
		return "board/list";
	}
	
	@RequestMapping(value="board/modify", method=RequestMethod.GET)
	public String boardModify(){
		System.out.println("board/modify");
		return "board/modify";
	}
	
	@RequestMapping(value="board/view", method=RequestMethod.GET)
	public String boardView(){
		System.out.println("board/view");
		return "board/view";
	}
	
	@RequestMapping(value="board/write", method=RequestMethod.GET)
	public String boardWrite(){
		System.out.println("board/write");
		return "board/write";
	}
	
//	@RequestMapping("/hello")
//	public String hello() {
//		System.out.println("/mysiteh/hello");
//		return "index";
//	}
	
}
