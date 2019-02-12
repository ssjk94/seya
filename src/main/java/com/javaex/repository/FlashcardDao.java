package com.javaex.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.FlashcardVo;
import com.javaex.vo.URLPathVo;

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

}
