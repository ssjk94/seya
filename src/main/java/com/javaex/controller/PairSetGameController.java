package com.javaex.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.PairSetGameService;
import com.javaex.vo.PairSetGameVo;
import com.javaex.vo.URLPathVo;
import com.javaex.vo.VocabularyListVo;

@Controller
public class PairSetGameController {
	
	@Autowired
	PairSetGameService pairSetGameService;
	
	@ResponseBody
	@RequestMapping(value = "pairsetgame", method = RequestMethod.POST)
	public List<Object> pairSetGameMain(PairSetGameVo pairSetGameVo) {
		System.out.println("짝맞추기 게임 ajax실행");
		
		List<Object> pairGameSource = pairSetGameService.getPairGameSource(pairSetGameVo);
		
//		for(int i = 0;i<list.size();i++) {
//			
//			@SuppressWarnings("unchecked")
//			List<PairSetGameVo> smallList = (List<PairSetGameVo>) list.get(i);
//			
//			for(PairSetGameVo a:smallList) {
//				System.out.println(i+a.toString());
//			}
//		}
		
		return pairGameSource;
	}
	
	@ResponseBody
	@RequestMapping(value = "{URLId}/wrongword", method = RequestMethod.POST)
	public void wrongWord(PairSetGameVo pairSetGameVo) {
		System.out.println("ajax 틀린 단어");

		pairSetGameService.wrongWordInsert(pairSetGameVo);
		
	}
	
	@ResponseBody
	@RequestMapping(value = "{URLId}/scoreupdate", method = RequestMethod.POST)
	public void scoreUpdate(PairSetGameVo pairSetGameVo) {
		System.out.println("게임이 끝난뒤 점수 업데이트");
		//dao 주석 풀어야함
		
		System.out.println("게임점수 업데이트"+pairSetGameVo.toString());
		
		pairSetGameService.scoreRankinInsert(pairSetGameVo);
		
	}
	
}
