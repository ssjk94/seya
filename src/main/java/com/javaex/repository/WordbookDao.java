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

	public List<WordbookVo> selectWordbookList() {
		return sqlSession.selectList("wordbook.selectWordbookList");
	}

	public int insertWordbook(WordbookVo wordbookVo) {
		return sqlSession.insert("wordbook.insertWordbook", wordbookVo);
	}

}
