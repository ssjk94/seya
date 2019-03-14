package com.javaex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.RankingService;
import com.javaex.vo.PairSetGameVo;
import com.javaex.vo.RankingVo;

@Controller
public class RankingController {
	
	@Autowired
	RankingService rankingService;
	
	@ResponseBody
	@RequestMapping(value = "gamerankingpage", method = RequestMethod.POST)
	public List<Object> getRankingMain(RankingVo rankingVo) {
		System.out.println("랭킹 가져오기 ajax실행");
		
		
		

		
		return null;//rankingSource;
	}
	
}
