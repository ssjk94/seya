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
	
	@ResponseBody
	@RequestMapping(value = "{URLId}/flashcheck", method = RequestMethod.POST)
	public void flashCheck(FlashcardVo flashcardVo) {
		System.out.println("ajax flash 체크 담기");
		
	}
}
