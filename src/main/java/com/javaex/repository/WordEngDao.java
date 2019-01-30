package com.javaex.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.javaex.vo.WordEngVo;
import com.javaex.vo.WordbookVo;

@Repository
public class WordEngDao {

	@Autowired
	public SqlSession sqlSession;

	public List<WordEngVo> selectWordEngList() {
		
		return sqlSession.selectList("wordeng.selectWordEngList");
	}

	public int insertWordEng(WordEngVo wordengVo) {
		return sqlSession.insert("wordeng.insertWordEng", wordengVo);
	}

}
