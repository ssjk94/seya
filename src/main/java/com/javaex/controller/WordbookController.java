package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.WordbookService;

@Controller
public class WordbookController {

	@Autowired
	WordbookService wordbookService;
	
	//사용자 아이디로 들어갔을때 리스트 출력
	@RequestMapping(value = "{URLId}", method = RequestMethod.GET)
	public String wordbook(@PathVariable ("URLId") String URLid,Model md) {
		
		System.out.println("URLId :"+URLid);
		
		md.addAttribute("URLId", URLid);
		md.addAttribute("wordbooklist",wordbookService.getWordgetWordbookAllList(URLid));
		return "_view/gallery";
	}
}
