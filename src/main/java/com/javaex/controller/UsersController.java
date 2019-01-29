package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.UsersService;
import com.javaex.vo.UsersVo;

@Controller
public class UsersController {

	@Autowired
	UsersService usersService;
	
//	@RequestMapping(value = "gbal/list", method = RequestMethod.GET)
//	public String getList(Model md) {
//		List<UsersVo> usersList = usersService.getList();
//		md.addAttribute("usersList", usersList);
//		System.out.println("users/list");
//		return "guestbook/list-ajax";
//	}
	
	@ResponseBody
	@RequestMapping("/userinsert.do")
	public String insertUser(@ModelAttribute UsersVo usersVo) {

		usersService.insertUser(usersVo);
		

		return "main/index";

	}

}
