package com.javaex.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.UsersVo;
import com.javaex.vo.WordbookVo;

@Repository
public class WordbookDao {

	@Autowired
	public SqlSession sqlSession;

	
	
	
	//{id} main
	public List<WordbookVo> selectNameDataType() {
		System.out.println("1");
		List<WordbookVo> list = sqlSession.selectList("wordbook.selectNameDataTypeList");
		System.out.println("2");
		for (WordbookVo wordbookVo : list) {
			System.out.println(wordbookVo.getWordbookName());
		}
		
		return null;
		//return sqlSession.selectList("wordbook.selectNameDataTypeList");
	}
	

	public List<UsersVo> selectUserNickNameList(){
		return sqlSession.selectList("users.selectUserNickNameList");
	}
}
