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

	@RequestMapping(value = "/main2", method = RequestMethod.GET)
	public String main2() {
		System.out.println("main2");
		return "main/index2";
	}

	@RequestMapping(value = "/profilemodify", method = RequestMethod.GET)
	public String profilemodify() {
		System.out.println("profilemodify");
		return "kyunghwan/profilemodify/_profilemodify";
	}

}
