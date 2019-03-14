package com.javaex.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.FlashcardDao;
import com.javaex.vo.FlashcardVo;
import com.javaex.vo.HeaderSearchVo;
import com.javaex.vo.QuizVo;
import com.javaex.vo.URLPathVo;
import com.javaex.vo.WordbookVo;

@Service
public class FlashcardService {

	@Autowired
	FlashcardDao flashcardDao;

	public List<FlashcardVo> getFlashcardList(URLPathVo urlPathVo) {

		System.out.println("FlashcardService");

		return flashcardDao.selectFlashcardList(urlPathVo);
	}

	public void updateFlashcard(FlashcardVo flashcardVo) {
		flashcardDao.updateFlashcard(flashcardVo);
	}

	public List<WordbookVo> getWordbookAlldirectoryList(URLPathVo urlPathVo) {
		return flashcardDao.selectWordbookAlldirectoryList(urlPathVo);
	}

	public URLPathVo getNickName(URLPathVo urlPathVo) {

		return flashcardDao.selectOneNickName(urlPathVo);
	}

	public List<QuizVo> randomQuiz(int wordbookNo) {
		// 단어15 가져오기
		List<QuizVo> randomQuizList = flashcardDao.selectRandomQuizWord(wordbookNo);
		
		
		// 단어15 <-- 배드
		for(int i=0; i<randomQuizList.size(); i++) {
			List<String> answerArray = flashcardDao.selectbadMeanList();
			randomQuizList.get(i).setAnswerArray(answerArray);
			
			// 정답 번호생성   정답 업데이트
			
			//random 1~4 3번에 정답입력 0 ~ 3 
			Random random = new Random(); 
			int ansNo = random.nextInt(4);
			
			// ansNo 번호 세팅
			// ansNo 뜻 세팅
			randomQuizList.get(i).setAnsNo(ansNo);
			randomQuizList.get(i).getAnswerArray().set(ansNo, randomQuizList.get(i).getAnswer());			
		}
		System.out.println(randomQuizList);

		
		return randomQuizList;
	}

	public List<HeaderSearchVo> getWordChoiceList(HeaderSearchVo headerSearchVo) {
		// 사지선다 게임

		return flashcardDao.selectWordChoice(headerSearchVo);
	}

	public List<HeaderSearchVo> getMeanChoiceList(HeaderSearchVo headerSearchVo) {
		// TODO Auto-generated method stub
		return flashcardDao.selectMeanChoice(headerSearchVo);
	}

	public List<HeaderSearchVo> getBadMeanChoiceList(HeaderSearchVo headerSearchVo) {

		return flashcardDao.selectBadMeanChoice(headerSearchVo);
	}

	public HeaderSearchVo getMeanChoiceOne(HeaderSearchVo headerSearchVo) {

		return flashcardDao.selectMeanChoiceOne(headerSearchVo);
	}

}
