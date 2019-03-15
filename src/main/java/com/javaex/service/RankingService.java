package com.javaex.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.RankingDao;
import com.javaex.vo.RankingVo;

@Service
public class RankingService {

	@Autowired
	RankingDao rankingDao;
	
	public List<Object> getRanking(RankingVo rankingVo){
		
		List<Object> finalList = new ArrayList<Object>();
		
		List<RankingVo> list = rankingDao.selectRanking(rankingVo);
		RankingVo myRanking = rankingDao.selectMyRanking(rankingVo); 
		
		finalList.add(myRanking);
		finalList.add(list);
		
		return finalList;
	}
}
