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
import com.javaex.vo.HeaderSearchVo;
import com.javaex.vo.URLPathVo;
import com.javaex.vo.WordbookVo;

@Controller
public class FlashcardController {

	@Autowired
	FlashcardService flashcardService;

	@RequestMapping(value = "{URLId}/flashcard", method = RequestMethod.GET)
	public String flashcard(URLPathVo urlPathVo, FlashcardVo flashcardVo, HeaderSearchVo headerSearchVo, Model md) {

		System.out.println(flashcardVo.toString());
		List<FlashcardVo> list = flashcardService.getFlashcardList(urlPathVo);
		System.out.println("flashcard" + list.toString());
		md.addAttribute("selectFlashcardList", list);
		md.addAttribute("URLId", urlPathVo.getURLId());

		// 승
		md.addAttribute("urlPathVo", flashcardService.getNickName(urlPathVo));

		// 경환
		List<WordbookVo> directoryList = flashcardService.getWordbookAlldirectoryList(urlPathVo);
		md.addAttribute("directoryList", directoryList);

		// 사지선다게임 모달전용.
		List<HeaderSearchVo> wordList = flashcardService.getWordChoiceList(headerSearchVo);
		
		int wordListSize = wordList.size(); 
		
		List<HeaderSearchVo> meanList = flashcardService.getMeanChoiceList(headerSearchVo);

		List<HeaderSearchVo> badMeanList = flashcardService.getBadMeanChoiceList(wordListSize);

		System.out.println("워드 리스트 : " + wordList.toString());
		System.out.println("민 리스트 : " + meanList.toString());
		System.out.println("틀린 민 리스트 : " + badMeanList.toString());
		
		
		md.addAttribute("wordList", wordList);
		md.addAttribute("meanList", meanList);
		md.addAttribute("badMeanList", badMeanList);
		// 모달전용 끝.
		
		return "_view/flashcard";
	}

	@RequestMapping(value = "{URLId}/flashcardgame", method = RequestMethod.GET)
	public String flashcardgame(URLPathVo urlPathVo, FlashcardVo flashcardVo, Model md) {
		System.out.println(flashcardVo.toString());
		List<FlashcardVo> list = flashcardService.getFlashcardList(urlPathVo);
		System.out.println("flashcardgame" + list.toString());
		md.addAttribute("selectFlashcardList", list);
		md.addAttribute("URLId", urlPathVo.getURLId());
		// 승
		md.addAttribute("urlPathVo", flashcardService.getNickName(urlPathVo));

		return "_view/flashcardgame";
	}

	@ResponseBody
	@RequestMapping(value = "flashcard/update", method = RequestMethod.POST)
	public void flashcardUpdate(FlashcardVo flashcardVo, Model md) {
		System.out.println(flashcardVo.toString());
		flashcardService.updateFlashcard(flashcardVo);
	}

	@RequestMapping(value = "{URLId}/multiplechoice", method = RequestMethod.GET)
	public String multipleChoice(URLPathVo urlPathVo, HeaderSearchVo headerSearchVo, Model md) {
		// System.out.println(headerSearchVo.toString());
		// List<FlashcardVo> list = flashcardService.getFlashcardList(urlPathVo);

		List<HeaderSearchVo> wordList = flashcardService.getWordChoiceList(headerSearchVo);
		
		int wordListSize = wordList.size(); 
		
		List<HeaderSearchVo> meanList = flashcardService.getMeanChoiceList(headerSearchVo);

		List<HeaderSearchVo> badMeanList = flashcardService.getBadMeanChoiceList(wordListSize);

		System.out.println("워드 리스트 : " + wordList.toString());
		System.out.println("민 리스트 : " + meanList.toString());
		System.out.println("틀린 민 리스트 : " + badMeanList.toString());
		
		
		md.addAttribute("wordList", wordList);
		md.addAttribute("meanList", meanList);
		md.addAttribute("badMeanList", badMeanList);
		// 워드 리스트짜기
	
		return "_view/flashcardgame";
	}
}
