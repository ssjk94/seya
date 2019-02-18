package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.NavigationService;
import com.javaex.vo.URLPathVo;
import com.javaex.vo.WordbookVo;

@Controller
public class NavigationController {
	
	@Autowired
	NavigationService navigationService;

	@ResponseBody
	@RequestMapping(value = "{URLId}/directoryinsert", method = RequestMethod.POST)
	public void directoryInsert(URLPathVo urlPathVo,Model md) {
		System.out.println("디렉토리 인서트");
		navigationService.addDirectory(urlPathVo);
		
	}
	
	@ResponseBody
	@RequestMapping(value = "{URLId}/directoryupdate", method = RequestMethod.POST)
	public void directoryUpdate(URLPathVo urlPathVo,Model md) {
		System.out.println("디렉토리 업데이트");
		navigationService.setDirectory(urlPathVo);
	}
	
	@ResponseBody
	@RequestMapping(value = "{URLId}/directorydelete", method = RequestMethod.POST)
	public void directoryDelete(URLPathVo urlPathVo,Model md) {
		System.out.println("디렉토리 딜리트");
		navigationService.removeDirectory(urlPathVo);
	}
	
}
