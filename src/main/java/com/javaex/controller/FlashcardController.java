package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.FlashcardService;
import com.javaex.vo.FlashcardVo;
import com.javaex.vo.URLPathVo;
import com.javaex.vo.WordbookVo;

@Controller
public class FlashcardController {

	@Autowired
	FlashcardService flashcardService;

	@RequestMapping(value = "{URLId}/flashcard", method = RequestMethod.GET)
	public String flashcard(URLPathVo urlPathVo, FlashcardVo flashcardVo, Model md) {
		
		System.out.println(flashcardVo.toString());
		List<FlashcardVo> list = flashcardService.getFlashcardList(urlPathVo);
		System.out.println("flashcard"+list.toString());
		md.addAttribute("selectFlashcardList",list);
		md.addAttribute("URLId", urlPathVo.getURLId());
		
		//경환
		List<WordbookVo> directoryList = flashcardService.getWordbookAlldirectoryList(urlPathVo);
		md.addAttribute("directoryList",directoryList);
		
		return "_view/flashcard";
	}
	
	@RequestMapping(value = "{URLId}/flashcardgame", method = RequestMethod.GET)
	public String flashcardgame(URLPathVo urlPathVo, FlashcardVo flashcardVo, Model md) {
		System.out.println(flashcardVo.toString());
		List<FlashcardVo> list = flashcardService.getFlashcardList(urlPathVo);
		System.out.println("flashcardgame"+list.toString());
		md.addAttribute("selectFlashcardList",list);
		md.addAttribute("URLId", urlPathVo.getURLId());
		return "_view/flashcardgame";
	}

	@ResponseBody
	@RequestMapping(value = "flashcard/update", method = RequestMethod.POST)
	public void flashcardUpdate(FlashcardVo flashcardVo, Model md) {
		System.out.println(flashcardVo.toString());
		flashcardService.updateFlashcard(flashcardVo);
	}
}
