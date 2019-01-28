package com.javaex.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.javaex.vo.MeanKorVo;

@Repository
public class MeanKorDao {

	@Autowired
	public SqlSession sqlSession;

	public List<MeanKorVo> selectMeanKorList() {
		return sqlSession.selectList("meankor.selectMeanKorList");
	}

	public int insertMeanKor(MeanKorVo meankorVo) {
		return sqlSession.insert("users.insertUsers", meankorVo);
	}

}
