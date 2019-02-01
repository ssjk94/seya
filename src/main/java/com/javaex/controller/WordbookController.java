package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.WordbookService;
import com.javaex.vo.URLPathVo;
import com.javaex.vo.WordbookVo;

@Controller
public class WordbookController {

	@Autowired
	WordbookService wordbookService;
	
	//사용자 아이디로 들어갔을때 갤러리 출력 컨트롤러
	@RequestMapping(value = "{URLId}", method = RequestMethod.GET)
	public String wordbook(URLPathVo urlPathVo,Model md) {
		
		System.out.println("URLId :"+urlPathVo.toString());
		
		List<WordbookVo> directoryList = wordbookService.getWordbookAlldirectoryList(urlPathVo);
		List<WordbookVo> wordbookList = wordbookService.getDefaultWordbookList(urlPathVo);
		
		md.addAttribute("URLId", urlPathVo.getURLId());
		md.addAttribute("directoryList",directoryList);
		md.addAttribute("wordbookList",wordbookList);

		return "_view/gallery";
	}
	//리스트 출력 컨트롤러
	@RequestMapping(value = "{URLId}/list", method = RequestMethod.GET)
	public String wordbookgallery(URLPathVo urlPathVo,Model md) {
		
		List<WordbookVo> directoryList = wordbookService.getWordbookAlldirectoryList(urlPathVo);
		List<WordbookVo> wordbookList = wordbookService.getDefaultWordbookList(urlPathVo);
		
		md.addAttribute("listview", 0);
		md.addAttribute("URLId", urlPathVo.getURLId());
		md.addAttribute("directoryList",directoryList);
		md.addAttribute("wordbookList",wordbookList);
		return "_view/list";
	}
	
}
