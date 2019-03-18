package com.javaex.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main1(Device device) {
		if (device.isMobile()) {
			return "mobile/m_main";
		} else {
			return "main/seyamain";
		}
	}

	@RequestMapping(value = "/seyamain", method = RequestMethod.GET)
	public String seyamain(Device device) {
		if (device.isMobile()) {
			return "mobile/m_main";
		} else {
			return "main/seyamain";
		}

	}

	@RequestMapping(value = "/main2", method = RequestMethod.GET)
	public String main2() {
		System.out.println("main2");
		return "main/index2";
	}

	@RequestMapping(value = "/fcpage", method = RequestMethod.GET)
	public String fcpage() {
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

	@RequestMapping(value = "/leech", method = RequestMethod.GET)
	public String modibreak() {
		System.out.println("leech");
		return "_view/leech";
	}

	@RequestMapping(value = "/listtest", method = RequestMethod.GET)
	public String listtest() {
		System.out.println("list test");
		return "_view/listtest";
	}

	@RequestMapping(value = "/rankpage", method = RequestMethod.GET)
	public String rankpage() {
		System.out.println("list test");
		return "kyunghwan/gamepage/rankpage";
	}

	@RequestMapping(value = "/modalmodify", method = RequestMethod.GET)
	public String modalmodify() {
		System.out.println("modalmodify");
		return "wordpad/modalmodify";
	}

//	@RequestMapping("/hello")
//	public String hello() {
//		System.out.println("/mysiteh/hello");
//		return "index";
//	}

	@RequestMapping("/hello")
	public String hello() {
		System.out.println("/mysiteh/hello");
		return "index";
	}

	static int num = 0;
	static int numc = 0;

	static public

			int test(int i) {
		if (i < 0) {
			num -= Math.abs(i);
		} else {
			num += i;
		}
		return num;
	}

}
