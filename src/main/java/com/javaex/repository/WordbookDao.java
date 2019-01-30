package com.javaex.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.WordbookVo;

@Repository
public class WordbookDao {

	@Autowired
	public SqlSession sqlSession;

	public void addwordbook(String id,String wordbookname) {
		sqlSession.insert(id,wordbookname);
	}
	
	//{id} main
	public List<WordbookVo> selectWordbookList(Map<String, String> path) {
		System.out.println("size:  "+sqlSession.selectList("wordbook.selectWordbookList").size());
		return sqlSession.selectList("wordbook.selectWordbookList");
	}
	
}
