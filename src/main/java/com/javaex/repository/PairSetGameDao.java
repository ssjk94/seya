package com.javaex.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.PairSetGameVo;

@Repository
public class PairSetGameDao {
	
	@Autowired
	public SqlSession sqlSession;
	
	//게임용
	public List<PairSetGameVo> selectPairGameSource(PairSetGameVo pairSetGameVo) {
		return sqlSession.selectList("pairsetgame.selectPairGameSource",pairSetGameVo);
	}
	
	//에이잭스용
	public void insertGameScore(PairSetGameVo pairSetGameVo) {
		sqlSession.insert("pairsetgame.insertGameScore", pairSetGameVo);
	}
	public void inserWrongWord(PairSetGameVo pairSetGameVo) {
		sqlSession.insert("pairsetgame.inserWrongWord",pairSetGameVo);
	}
	public int selectWrongWord(PairSetGameVo pairSetGameVo) {
		return sqlSession.selectOne("pairsetgame.selectWrongWord", pairSetGameVo);
	}
}
