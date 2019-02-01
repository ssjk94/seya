package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.AddVocabularyService;
import com.javaex.vo.URLPathVo;

@Controller
public class AddVocabularyController {

	@Autowired
	AddVocabularyService addVocabularyService;
	
	@RequestMapping(value = "{URLId}/addvocabulary", method = RequestMethod.GET)
	public String wordbook(URLPathVo urlPathVo,Model md) {
		
		System.out.println(urlPathVo.getDirectoryNo());
		
		return "_view/addvocabulary";
	}
}
