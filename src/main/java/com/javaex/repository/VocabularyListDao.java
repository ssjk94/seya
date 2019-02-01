package com.javaex.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.URLPathVo;
import com.javaex.vo.WordbookVo;

@Repository
public class VocabularyListDao {

	@Autowired
	public SqlSession sqlSession;
	
	//디렉토리 리스트
		public List<WordbookVo> selectWordbookAlldirectoryList(URLPathVo urlPathVo){
			return sqlSession.selectList("wordbook.selectWordbookAlldirectoryList",urlPathVo);
		}
}
