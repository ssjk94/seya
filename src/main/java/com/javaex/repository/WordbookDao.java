package com.javaex.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.WordbookVo;


@Repository
public class WordbookDao {

	@Autowired
	public SqlSession sqlSession;
	
		//단어장 리스트 전부 출력
		public List<WordbookVo> selectWordbookAllList(String URLId) {
			return sqlSession.selectList("wordbook.selectWordbookAllList",URLId);
		}
	
}
