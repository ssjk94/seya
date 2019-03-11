package com.javaex.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.PairSetGameVo;

@Repository
public class PairSetGameDao {
	
	@Autowired
	public SqlSession sqlSession;
	
	public void insertGameScore(PairSetGameVo pairSetGameVo) {
		//sqlSession.insert("pairsetgame.updateGameScore", pairSetGameVo);
	}
	public void selectDefaultWordbookNo() {
		
	}
	
}
