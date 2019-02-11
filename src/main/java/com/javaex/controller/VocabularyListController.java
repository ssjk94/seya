package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.VocabularyListService;
import com.javaex.vo.URLPathVo;
import com.javaex.vo.VocabularyListVo;
import com.javaex.vo.WordbookVo;

@Controller
public class VocabularyListController {

	@Autowired
	VocabularyListService vocabularyListService;
	
	@RequestMapping(value = "{URLId}/vocabularylist", method = RequestMethod.GET)
	public String wordbook(URLPathVo urlPathVo,VocabularyListVo vocabularyListVo,Model md) {
		
		
		//입력한것이 사전이랑 동일한 단어가 있을때 뜻과 의미가 입력되서 나온다
		List<VocabularyListVo> vocaList=vocabularyListService.getWordAndMean(vocabularyListVo,urlPathVo);
		//디렉토리
		List<WordbookVo> directoryList = vocabularyListService.getWordbookAlldirectoryList(urlPathVo);
		
		md.addAttribute("wordbookNo", vocabularyListVo.getWordbookNo());
		md.addAttribute("wordbookName", vocabularyListVo.getWordbookName());
		md.addAttribute("URLId", urlPathVo.getURLId());
		md.addAttribute("directoryList", directoryList);
		md.addAttribute("vocaList", vocaList);
		return "_view/vocabularylist";
	}
	@RequestMapping(value = "{URLId}/wordmodify", method = RequestMethod.GET)
	public String modify(URLPathVo urlPathVo,VocabularyListVo vocabularyListVo,Model md) {
		
		System.out.println("워드북 엔오"+urlPathVo.getWordbookNo());
		System.out.println("워드북 네임"+urlPathVo.getWordbookName());
		
		System.out.println("워드네임"+vocabularyListVo.getWordName());
		System.out.println("민 네임"+vocabularyListVo.getMeanName());
		return "_view/gallery";
	}
}
