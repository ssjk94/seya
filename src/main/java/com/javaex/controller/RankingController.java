package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.RankingService;
import com.javaex.vo.RankingVo;

@Controller
public class RankingController {
	
	@Autowired
	RankingService rankingService;
	
	@ResponseBody
	@RequestMapping(value = "gamerankingpage", method = RequestMethod.POST)
	public List<Object> getRankingMain(RankingVo rankingVo) {
		System.out.println("랭킹 가져오기 ajax실행");
		//마이랭킹의 userScore
		//랭킹 TOP5
		
		System.out.println("까보기"+rankingVo.toString());
		
		List<Object> rankingSource = rankingService.getRanking(rankingVo);
		
		@SuppressWarnings("unchecked")
		List<RankingVo> small = (List<RankingVo>)rankingSource.get(1);
		
		for(RankingVo a:small) {
			System.out.println("TOP랭킹 이야오오"+a.toString());
		}
		
		return rankingSource;
	}
	
}
