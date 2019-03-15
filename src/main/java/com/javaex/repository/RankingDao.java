package com.javaex.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.RankingVo;

@Repository
public class RankingDao {

	@Autowired
	SqlSession sqlSession;
	
	//랭킹 top5를 가져오는 Dao
	public List<RankingVo> selectRanking(RankingVo rankingVo){
		return sqlSession.selectList("ranking.selectRanking", rankingVo);
	}
	//자기 최고점수를 가져오는 Dao
	public RankingVo selectMyRanking(RankingVo rankingVo) {
		return sqlSession.selectOne("ranking.selectMyRanking", rankingVo);
	}
}
