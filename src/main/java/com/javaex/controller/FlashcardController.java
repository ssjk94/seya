package com.javaex.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

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

		// 사지선다게임 모달전용.
		/*
		 * List<HeaderSearchVo> wordList =
		 * flashcardService.getWordChoiceList(headerSearchVo);
		 * 
		 * //int wordListSize = wordList.size(); for(int i=0 ; i < wordList.size(); i++
		 * ) {
		 * 
		 * //문제 세팅 headerSearchVo.setWordName(wordList.get(i).getWordName());
		 * headerSearchVo.setWordbookNo(wordList.get(i).getWordbookNo());
		 * quizVo.setQuestion(wordList.get(i).getWordName()); //답 세팅 HeaderSearchVo
		 * meanList2= flashcardService.getMeanChoiceOne(headerSearchVo);
		 * quizVo.setAnswer(meanList2.getMeanName()); //답 위치 랜덤생성 int ansNo; ansNo =
		 * random.nextInt(4); quizVo.setAnsNo(ansNo); //틀린답 가져오기 List<HeaderSearchVo>
		 * badMeanList = flashcardService.getBadMeanChoiceList(headerSearchVo); //틀린 답
		 * 세팅 ( 정답 세팅 전) String answerArray[] = new String[4];
		 * 
		 * for(int j=0; j<badMeanList.size(); j++) {
		 * 
		 * answerArray[j] = badMeanList.get(j).getSeyaMeanName(); } // 정답 세팅
		 * answerArray[ansNo] = meanList2.getMeanName(); // 리스트에 넣음
		 * quizVo.setAnswerArray(answerArray);
		 * 
		 * md.addAttribute("quizVo", quizVo); }
		 */

		if (device.isMobile()) {
			return "mobile/m_flashcard";
		} else {
			return "_view/flashcard";
		}

	}

	@RequestMapping(value = "{URLId}/flashcardgame", method = RequestMethod.GET)
	public String flashcardgame(URLPathVo urlPathVo, FlashcardVo flashcardVo, Model md) {
		System.out.println(flashcardVo.toString());
		List<FlashcardVo> list = flashcardService.getFlashcardList(urlPathVo);
		System.out.println("flashcardgame" + list.toString());
		md.addAttribute("wordbookList", list);
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

	@ResponseBody
	@RequestMapping(value = "/randomquiz", method = RequestMethod.POST)
	public List<QuizVo> randomQuiz(@RequestParam("wordbookNo") int wordbookNo) {
		System.out.println("ho");
		List<QuizVo> randomQuizList = flashcardService.randomQuiz(wordbookNo);
		System.out.println("Controller: " + randomQuizList);

		return randomQuizList;

	}
}
