package com.javaex.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.URLPathVo;
@Repository
public class NavigationDao {
	
	@Autowired
	SqlSession sqlSession;
	
	public void insertDirectory(URLPathVo urlPathVo) {
		sqlSession.insert("navigation.insertdirectory", urlPathVo);
	}
	
	public void updateDirectory(URLPathVo urlPathVo) {
		sqlSession.update("navigation.updatedirectory", urlPathVo);
	}

	public void deleteDirectory(URLPathVo urlPathVo) {
		sqlSession.delete("navigation.deletedirectory", urlPathVo);
	}
}
