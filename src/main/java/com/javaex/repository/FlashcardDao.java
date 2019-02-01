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

	// {id} main
	public List<FlashcardVo> selectFlashcardList() {
		System.out.println("1");
		sqlSession.selectList("flashcard.selectFlashcardList");
		System.out.println("2");

		return null;
	}

}
