package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.GuestBookService;
import com.javaex.vo.GuestBookVo;

@Controller
public class GuestbookController {

	@Autowired
	GuestBookService gbService;

	@RequestMapping(value = "gba/list", method = RequestMethod.GET)
	public String getList(Model md) {
		List<GuestBookVo> gbList = gbService.getList();
		md.addAttribute("gbList", gbList);
		System.out.println("gba/list");
		return "guestbook/list-ajax";
	}

	@ResponseBody
	@RequestMapping(value = "gba/add", method = RequestMethod.POST)
	public int gbAdd(@ModelAttribute GuestBookVo guestbookVo) {
		System.out.println("gba/add" + " " + guestbookVo);
		int count = gbService.add(guestbookVo);
		System.out.println(count);
		return count;
	}

	@RequestMapping(value = "gb/list", method = RequestMethod.GET)
	public String gbList() {
		System.out.println("gb/list");
		return "guestbook/list";
	}

	@RequestMapping(value = "gb/deleteform", method = RequestMethod.GET)
	public String gbDeleteform() {
		System.out.println("gb/deleteform");
		return "guestbook/deleteform";
	}

	@RequestMapping(value = "gb/add", method = RequestMethod.GET)
	public String add(@ModelAttribute GuestBookVo guestbookVo, Model md) {
		System.out.println("gb/add");
		System.out.println(guestbookVo);
		gbService.add(guestbookVo);

		return "guestbook/list";
	}

//	@RequestMapping("/hello")
//	public String hello() {
//		System.out.println("/mysiteh/hello");
//		return "index";
//	}

}
