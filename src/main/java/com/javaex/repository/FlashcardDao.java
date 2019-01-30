package com.javaex.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.UsersVo;
import com.javaex.vo.WordbookVo;

@Repository
public class FlashcardDao {

	@Autowired
	public SqlSession sqlSession;
	
	//{id} main
	public List<WordbookVo> selectFlashcardwordList() {
		System.out.println("1");
		sqlSession.selectOne("flashcard.selectFlashcardWordList");
		System.out.println("2");
		
		return null;
		//return sqlSession.selectList("wordbook.selectNameDataTypeList");
	}
	

	public List<UsersVo> selectUserNickNameList(){
		return sqlSession.selectList("users.selectUserNickNameList");
	}
}
