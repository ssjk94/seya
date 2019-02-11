package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
		
		List<WordbookVo> directoryList = wordbookService.getWordbookAlldirectoryList(urlPathVo);
		List<WordbookVo> wordbookList = wordbookService.getDefaultWordbookList(urlPathVo);
		
		md.addAttribute("URLId", urlPathVo.getURLId());
		md.addAttribute("directoryList",directoryList);
		md.addAttribute("wordbookList",wordbookList);
		//디렉토리에 단어장이 없을때 디렉토리 토리토리
		try {
			md.addAttribute("directoryNo",wordbookList.get(0).getDirectoryNo());
		}catch (Exception e) {
			md.addAttribute("directoryNo", urlPathVo.getDirectoryNo());
			return "_view/gallery";
		}
		return "_view/gallery";
	}
	//리스트 출력 컨트롤러
	@RequestMapping(value = "{URLId}/list", method = RequestMethod.GET)
	public String wordbookgallery(URLPathVo urlPathVo,Model md) {
		
		List<WordbookVo> directoryList = wordbookService.getWordbookAlldirectoryList(urlPathVo);
		List<WordbookVo> wordbookList = wordbookService.getDefaultWordbookList(urlPathVo);
		 
		System.out.println();
		
		md.addAttribute("listview", 0);
		md.addAttribute("URLId", urlPathVo.getURLId());
		md.addAttribute("directoryList",directoryList);
		md.addAttribute("wordbookList",wordbookList);
		return "_view/list";
	}
	
	@ResponseBody
	@RequestMapping(value = "{URLId}/delete", method = RequestMethod.POST)
	public void wordbookDelete(URLPathVo urlPathVo,Model md) {
		System.out.println("삭제");
		System.out.println("워드북 엔오"+urlPathVo.getWordbookNo());
		wordbookService.deleteWordbook(urlPathVo);
		
	}
	
	@ResponseBody
	@RequestMapping(value = "{URLId}/share", method = RequestMethod.POST)
	public void wordbookShare(URLPathVo urlPathVo,Model md) {
		System.out.println("공유");
		System.out.println("워드북 엔오"+urlPathVo.getWordbookNo());
		
	}
	
}
