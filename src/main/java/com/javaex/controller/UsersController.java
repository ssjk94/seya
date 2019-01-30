package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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

	// @ResponseBody

	@RequestMapping("/userinsert.do")
	public String insertUser(@ModelAttribute UsersVo usersVo, HttpServletRequest req) {
		System.out.println("여기왔니 렛츠고");
		usersVo.toString();
		usersService.insertUser(usersVo);
		usersVo.toString();
		return "main/index";

	}

	@RequestMapping("/userlogin.do")
	public String userLogin(@ModelAttribute UsersVo usersVo, HttpSession session, HttpServletRequest req) {

		System.out.println("여기는 왔을까 혹시");
		System.out.println(usersVo.toString());
		  if (usersService.userLogin(usersVo) == null) {
			System.out.println("zzzzzzzzzzzzzzzzzzzzzz");
			return "main/index";

		} else {
			usersService.userLogin(usersVo);
			System.out.println("xml이후에 도착했니");
			String id = req.getParameter("id");
			String password = req.getParameter("password");
			System.out.println("req id:" + id);
			System.out.println("req pw:" + password);

			if (usersVo.getId().equals(id) || usersVo.getPassword().equals(password)) {
				System.out.println("sdasd");
				session.setAttribute("id", id);
				return "_view/gallery";
			} else {
				return "main/index";
			}

		}
	}
}
