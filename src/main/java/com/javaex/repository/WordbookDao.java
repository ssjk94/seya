package com.javaex.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.URLPathVo;
import com.javaex.vo.WordbookVo;

@Repository
public class WordbookDao {

	@Autowired
	public SqlSession sqlSession;
	
	
	
	//사용자 아이디  DAO
		public List<WordbookVo> selectWordbookDAllList(URLPathVo path) {
			System.out.println("size:  "+sqlSession.selectList("wordbook.selectWordbookAllList",path).size());
			return sqlSession.selectList("wordbook.selectWordbookAllList",path);
		}
	
	//사용자 아이디 + 디렉토리 들어갔을때 DAO
	public List<WordbookVo> selectWordbookDirectoryList(URLPathVo path) {
		System.out.println("size:  "+sqlSession.selectList("wordbook.selectWordbookDirectoryList",path).size());
		return sqlSession.selectList("wordbook.selectWordbookDirectoryList",path);
	}
	
}
