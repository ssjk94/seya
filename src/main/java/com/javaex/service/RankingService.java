package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.RankingDao;
import com.javaex.vo.RankingVo;

@Service
public class RankingService {

	@Autowired
	RankingDao rankingDao;
	
	public List<RankingVo> getRanking5(RankingVo rankingVo){
		
		return rankingDao.selectRanking5(rankingVo);
	}
}
