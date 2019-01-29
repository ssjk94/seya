package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.UsersService;
import com.javaex.service.WordbookService;
import com.javaex.vo.UsersVo;
import com.javaex.vo.WordbookVo;

@Controller
public class WordbookController {

	@Autowired
	WordbookService wordbookService;

	@RequestMapping(value = "{id}", method = RequestMethod.GET)
	public String gallery(@PathVariable String id,Model md) {
		System.out.println(id+"box");

		//단어장 이름,만든날짜,타입 리스트
		md.addAttribute("wordbooklist",wordbookService.getNameDataType());
		//닉네임 리스트
		md.addAttribute("nicknamelist",wordbookService.getNickname());
		return "_view/gallery";
	}

//	@ResponseBody
//	@RequestMapping(value = "gba/add", method = RequestMethod.POST)
//	public int gbAdd(@ModelAttribute GuestBookVo guestbookVo) {
//		System.out.println("gba/add" + " " + guestbookVo);
//		int count = gbService.add(guestbookVo);
//		System.out.println(count);
//		return count;
//	}
//
//	@RequestMapping(value = "gb/list", method = RequestMethod.GET)
//	public String gbList() {
//		System.out.println("gb/list");
//		return "guestbook/list";
//	}
//
//	@RequestMapping(value = "gb/deleteform", method = RequestMethod.GET)
//	public String gbDeleteform() {
//		System.out.println("gb/deleteform");
//		return "guestbook/deleteform";
//	}
//
//	@RequestMapping(value = "gb/add", method = RequestMethod.GET)
//	public String add(@ModelAttribute GuestBookVo guestbookVo, Model md) {
//		System.out.println("gb/add");
//		System.out.println(guestbookVo);
//		gbService.add(guestbookVo);
//
//		return "guestbook/list";
//	}

//	@RequestMapping("/hello")
//	public String hello() {
//		System.out.println("/mysiteh/hello");
//		return "index";
//	}

}
