package com.javaex.controller;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.FlashcardService;
import com.javaex.vo.FlashcardVo;
import com.javaex.vo.HeaderSearchVo;
import com.javaex.vo.QuizVo;
import com.javaex.vo.URLPathVo;
import com.javaex.vo.WordbookVo;

@Controller
public class FlashcardController {

	@Autowired
	FlashcardService flashcardService;
	
	@RequestMapping(value = "{URLId}/flashcard", method = RequestMethod.GET)
	public String flashcard(URLPathVo urlPathVo, FlashcardVo flashcardVo, HeaderSearchVo headerSearchVo, QuizVo quizVo,
			Model md, Random random, Device device) {

		System.out.println(flashcardVo.toString());
		List<FlashcardVo> list = flashcardService.getFlashcardList(urlPathVo);
		md.addAttribute("wordbookList", list);
		md.addAttribute("URLId", urlPathVo.getURLId());

		// 승
		md.addAttribute("urlPathVo", flashcardService.getNickName(urlPathVo));

		// 경환
		List<WordbookVo> directoryList = flashcardService.getWordbookAlldirectoryList(urlPathVo);
		md.addAttribute("wordbookNo", urlPathVo.getWordbookNo());
		md.addAttribute("directoryList", directoryList);

		if (device.isMobile()) {
			return "mobile/m_flashcard";
		} else {
			return "_view/flashcard";
		}

	}

	@ResponseBody
	@RequestMapping(value = "flashcardgame", method = RequestMethod.POST)
	public List<FlashcardVo> flashcardgame(FlashcardVo flashcardVo) {
		System.out.println("플래시카드 게임 ajax실행");
		return flashcardService.getFlashGameSource(flashcardVo);
	}

	@ResponseBody
	@RequestMapping(value = "flashcard/update", method = RequestMethod.POST)
	public void flashcardUpdate(FlashcardVo flashcardVo, Model md) {
		System.out.println(flashcardVo.toString());
		flashcardService.updateFlashcard(flashcardVo);
	}

	@ResponseBody
	@RequestMapping(value = "/randomquiz", method = RequestMethod.POST)
	public List<QuizVo> randomQuiz(@RequestParam("wordbookNo") int wordbookNo) {
		System.out.println(wordbookNo);

		List<QuizVo> quizList = flashcardService.randomQuiz(wordbookNo);
		System.out.println("Controller: " + quizList);
		return quizList;
	}
	@ResponseBody
	@RequestMapping(value = "{URLId}/flashwrongword", method = RequestMethod.POST)
	public void wrongWord(FlashcardVo flashcardVo) {
		System.out.println("ajax flash 틀린 단어");
		flashcardService.setWrongWord(flashcardVo);
	}

	@ResponseBody
	@RequestMapping(value = "{URLId}/flashscoreupdate", method = RequestMethod.POST)
	public void scoreUpdate(FlashcardVo flashcardVo) {
		System.out.println("ajax flash 점수업데이트");
		flashcardService.setGameScore(flashcardVo);
	}
}
