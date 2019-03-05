package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.AddVocabularyService;
import com.javaex.service.WordbookService;
import com.javaex.vo.URLPathVo;
import com.javaex.vo.WordbookVo;

@Controller
public class AddVocabularyController {

	@Autowired
	AddVocabularyService addVocabularyService;
	
	@RequestMapping(value = "{URLId}/addvocabulary", method = RequestMethod.GET)
	public String wordbook(URLPathVo urlPathVo,Model md) {
		
		List<WordbookVo> directoryList = addVocabularyService.getWordbookAlldirectoryList(urlPathVo);
		
		if(urlPathVo.getDirectoryNo() ==0) {
			urlPathVo.setDirectoryNo(addVocabularyService.allDirectoryInsert(urlPathVo).getDirectoryNo());
		}
		System.out.println("디렉토리 엔오"+urlPathVo.getDirectoryNo());
		//워드북 엔오가 있음
		md.addAttribute("wordbookNo", urlPathVo.getWordbookNo());
		md.addAttribute("wordbookName", urlPathVo.getWordbookName());
		md.addAttribute("directoryNo", urlPathVo.getDirectoryNo());
		md.addAttribute("URLId", urlPathVo.getURLId());
		md.addAttribute("directoryList", directoryList);
		
		md.addAttribute("urlPathVo", addVocabularyService.getNickName(urlPathVo));
		
		return "_view/addvocabulary";
	}
}
