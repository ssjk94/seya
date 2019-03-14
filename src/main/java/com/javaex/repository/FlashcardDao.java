package com.javaex.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.javaex.vo.FlashcardVo;
import com.javaex.vo.HeaderSearchVo;
import com.javaex.vo.QuizVo;
import com.javaex.vo.URLPathVo;
import com.javaex.vo.WordbookVo;

@Repository
public class FlashcardDao {

	@Autowired
	public SqlSession sqlSession;

	// {id} main
	public List<FlashcardVo> selectFlashcardList(URLPathVo urlPathVo) {

		System.out.println("flashcardDao");

		return sqlSession.selectList("flashcard.selectFlashcardList", urlPathVo);
	}

	public void updateFlashcard(FlashcardVo flashcardVo) {
		sqlSession.update("flashcard.updateFlashcard", flashcardVo);
	}

	// 디렉토리 보여주는 리스트
	public List<WordbookVo> selectWordbookAlldirectoryList(URLPathVo urlPathVo) {
		return sqlSession.selectList("wordbook.selectWordbookAlldirectoryList", urlPathVo);
	}

	public URLPathVo selectOneNickName(URLPathVo urlPathVo) {
		return sqlSession.selectOne("wordbook.selectOneNickName", urlPathVo);
	}

	public List<HeaderSearchVo> selectWordChoice(HeaderSearchVo headerSearchVo) {

		return sqlSession.selectList("users.selectWordChoice", headerSearchVo);
	}

	public List<HeaderSearchVo> selectMeanChoice(HeaderSearchVo headerSearchVo) {

		return sqlSession.selectList("users.selectMeanChoice", headerSearchVo);
	}

	public List<HeaderSearchVo> selectBadMeanChoice(HeaderSearchVo headerSearchVo) {

		return sqlSession.selectList("users.selectBadMeanChoice", headerSearchVo);
	}

	public HeaderSearchVo selectMeanChoiceOne(HeaderSearchVo headerSearchVo) {

		return sqlSession.selectOne("users.selectMeanChoiceOne", headerSearchVo);
	}

	//
	public List<QuizVo> selectRandomQuizWord(int wordbookNo) {

		return sqlSession.selectList("users.selectRandomQuizWord", wordbookNo);
	}

	public List<String> selectbadMeanList() {

		return sqlSession.selectList("users.selectBadMeanChoice2");
	}

	public List<FlashcardVo> selectFlashWordList(FlashcardVo flashcardVo) {
		return sqlSession.selectList("flashcard.selectFlashWordList", flashcardVo);
	}

	// 게임용
	public void insertGameScore(FlashcardVo flashcardVo) {
		sqlSession.insert("flashcard.insertGameScore", flashcardVo);
	}

	public void inserWrongWord(FlashcardVo flashcardVo) {
		sqlSession.insert("flashcard.inserWrongWord", flashcardVo);
	}

	public int selectWrongWordbookNo(FlashcardVo flashcardVo) {
		return sqlSession.selectOne("flashcard.selectWrongWordbookNo", flashcardVo);
	}

}
