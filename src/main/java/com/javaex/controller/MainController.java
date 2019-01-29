package com.javaex.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	
	//@RequestMapping(value = "/main1", method = RequestMethod.GET)
	public String main1() {
		System.out.println("main1");
		return "main/index";
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

	@RequestMapping(value = "/flashcard", method = RequestMethod.GET)
	public String flashcard(Model md, HttpServletRequest req) {
		System.out.println("flashcard");
		
		List<String> list1 = new ArrayList<String>();
		list1.add("aaa");
		list1.add("bbb");
		list1.add("ccc");
		list1.add("ddd");
		List<String> list2 = new ArrayList<String>();
		list2.add("1 1 1");
		list2.add("2 2 2");
		list2.add("3 3 3");
		list2.add("4 4 4");

		if (req.getParameter("param") == null) {
			test(0);
			numc = 0;

		} else {
			if (req.getParameter("param").equals("pre")) {
				if (num < list1.size() - 1) {
					test(1);
				}
				numc = 0;
			} else if (req.getParameter("param").equals("prev")) {
				if (num > 0) {
					test(-1);
				}
				numc = 0;
			} else {
				numc += 1;
			}
		}

		String word;
		String mean;

		if (test(0) > 0 && test(0) < list1.size()) {
			word = list1.get(test(0));
			mean = list2.get(test(0));
		} else if (test(0) <= 0) {
			word = list1.get(0);
			mean = list2.get(0);
		} else {
			word = list1.get(list1.size() - 1);
			mean = list2.get(list1.size() - 1);
		}

		// prev 전에꺼

		System.out.println("플래쉬 start");

		System.out.println("param :" + test(0));
		System.out.println("객체 전달함");
		System.out.println(req.getParameter("param"));

		if (numc % 2 != 0) {
			md.addAttribute("mean", mean);
		} else {
			md.addAttribute("word", word);
		}
		
		return "_view/flashcard";
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
