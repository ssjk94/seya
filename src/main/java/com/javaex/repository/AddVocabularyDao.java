package com.javaex.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AddVocabularyDao {

	@Autowired
	public SqlSession sqlSession;
	
	
}
