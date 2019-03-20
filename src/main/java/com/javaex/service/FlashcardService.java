package com.javaex.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

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
		for (int i = 0; i < randomQuizList.size(); i++) {
			List<String> answerArray = flashcardDao.selectbadMeanList();
			randomQuizList.get(i).setAnswerArray(answerArray);

			// 정답 번호생성 정답 업데이트

			// random 1~4 3번에 정답입력 0 ~ 3
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
		return flashcardDao.selectMeanChoice(headerSearchVo);
	}

	public List<HeaderSearchVo> getBadMeanChoiceList(HeaderSearchVo headerSearchVo) {

		return flashcardDao.selectBadMeanChoice(headerSearchVo);
	}

	public HeaderSearchVo getMeanChoiceOne(HeaderSearchVo headerSearchVo) {

		return flashcardDao.selectMeanChoiceOne(headerSearchVo);
	}

	// 세윤스 플래시카드 게임소스
	public List<FlashcardVo> getFlashGameSource(FlashcardVo flashcardVo) {

		List<FlashcardVo> list = flashcardDao.selectFlashWordList(flashcardVo);
		// 잘라주어여함
		Set<FlashcardVo> set = new HashSet<FlashcardVo>();

		if (list.size() > 15) {

			while (set.size() < 15) {
				set.add(list.get((int) (Math.random() * list.size())));
			}
			list = new ArrayList<FlashcardVo>();
			for (FlashcardVo a : set) {
				int num = (int) (Math.random() * 2);
				String changeWord;
				// 영단어로 문제내는곳
				if (num == 0) {
					list.add(a);
				} else {// 의미로 문제내는곳
					changeWord = a.getWordName();
					a.setWordName(a.getMeanName());
					a.setMeanName(changeWord);
					list.add(a);
				}
			}

			return list;
		} else {// 전체 다 가져가야함
			while (set.size() < list.size()) {
				set.add(list.get((int) (Math.random() * list.size())));
			}

			list = new ArrayList<FlashcardVo>();
			for (FlashcardVo a : set) {
				int num = (int) (Math.random() * 2);
				String changeWord;
				// 영단어로 문제내는곳
				if (num == 0) {
					list.add(a);
				} else {// 의미로 문제내는곳
					changeWord = a.getWordName();
					a.setWordName(a.getMeanName());
					a.setMeanName(changeWord);
					list.add(a);
				}
			}
			return list;
		}
	}

	// 게임 에이잭스
	public void setGameScore(FlashcardVo flashcardVo) {
		flashcardDao.insertGameScore(flashcardVo);
	}

	public void setWrongWord(FlashcardVo flashcardVo) {
		String str = flashcardVo.getWordName();
		int score = flashcardDao.selectWrongWordbookNo(flashcardVo);
		System.out.println("워드북 no"+score);
		flashcardVo.setWordbookNo(score);
		// 알파벳일경우
		if (str.matches("^[A-Za-z]*$")) {
			flashcardDao.inserWrongWord(flashcardVo);
		} else {
			// 알파벳이 아닐경우
			flashcardVo.setWordName(flashcardVo.getMeanName());
			flashcardVo.setMeanName(str);
			flashcardDao.inserWrongWord(flashcardVo);
		}

	}
}
