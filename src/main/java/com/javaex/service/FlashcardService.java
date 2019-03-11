package com.javaex.service;

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
		List<QuizVo> quizList = flashcardDao.selectRandomQuizWord(wordbookNo);
		System.out.println("Service: " + quizList);

		QuizVo quizVo = new QuizVo();
		// 리스트 for vo하나에 들어갈것들 하시오
			System.out.println("위 퀴즈리스트: "+ quizList.size());
		for (int i=0; i<quizList.size(); i++) {
			System.out.println("아래 퀴즈리스트: "+ quizList.size());

			quizVo.setWordNo(quizList.get(i).getWordNo());
			quizVo.setQuestion(quizList.get(i).getQuestion());
			quizVo.setAnswer(quizList.get(i).getAnswer());

			String answerArray2[] = new String[4];
			// 보기채우기 for
			List<QuizVo> quizArray = flashcardDao.selectbadMeanList();
			
			for (int j = 0; j < quizArray.size(); j++) {
					answerArray2[j] = quizArray.get(j).getBadAnswer();
			}
			
			// random 1~4 3번에 정답입력
			Random random = new Random();
			int ansNo;
			ansNo = random.nextInt(4);
			System.out.println("랜덤번호 : " + ansNo);
			quizVo.setAnsNo(ansNo);
			
			// 정답입력
			answerArray2[ansNo] = quizList.get(i).getAnswer();
			quizVo.setAnswerArray(answerArray2);
			System.out.println("답 배열 : " + quizVo.toString());

			//퀴즈리스트에 추가하기
//			quizList.add(quizVo);
//			System.out.println("quizList 라스트 : " + quizList.toString());
			
		}
		return quizList;
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
