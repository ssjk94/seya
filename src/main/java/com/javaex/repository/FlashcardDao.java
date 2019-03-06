package com.javaex.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.FlashcardVo;
import com.javaex.vo.HeaderSearchVo;
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
	
	//디렉토리 보여주는 리스트
	public List<WordbookVo> selectWordbookAlldirectoryList(URLPathVo urlPathVo){
		return sqlSession.selectList("wordbook.selectWordbookAlldirectoryList",urlPathVo);
	}

	public URLPathVo selectOneNickName(URLPathVo urlPathVo) {
        return sqlSession.selectOne("wordbook.selectOneNickName", urlPathVo);
    }

	public List<HeaderSearchVo> selectWordChoice(HeaderSearchVo headerSearchVo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("users.selectWordChoice", headerSearchVo);
	}

	public List<HeaderSearchVo> selectMeanChoice(HeaderSearchVo headerSearchVo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("users.selectMeanChoice", headerSearchVo);
	}

	public List<HeaderSearchVo> selectBadMeanChoice(int wordListSize) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("users.selectBadMeanChoice", wordListSize);	
	}

}
