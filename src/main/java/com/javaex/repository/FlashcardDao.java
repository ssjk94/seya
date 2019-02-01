package com.javaex.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.FlashcardVo;

@Repository
public class FlashcardDao {

	@Autowired
	public SqlSession sqlSession;
	FlashcardVo flashcardVo;

	// {id} main
	public List<FlashcardVo> selectFlashcardList() {
		System.out.println("flashcardDao");
		System.out.println(flashcardVo.toString());

		return sqlSession.selectList("flashcard.selectFlashcardList");
	}

}
