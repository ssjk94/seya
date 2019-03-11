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
	
	@RequestMapping(value = "{URLId}/pairsetgame", method = RequestMethod.GET)
	public String pairSetGameMain(Model md) {
		
		List<PairSetGameVo> list = new ArrayList<PairSetGameVo>();
		PairSetGameVo pair1 = new PairSetGameVo();
		PairSetGameVo pair2 = new PairSetGameVo();
		PairSetGameVo pair3 = new PairSetGameVo();
		PairSetGameVo pair4 = new PairSetGameVo();
		PairSetGameVo pair5 = new PairSetGameVo();
		pair1.setWordNo(1);
		pair1.setWordName("Jack");
		pair1.setMeanName("잭");
		list.add(pair1);
		pair2.setWordNo(2);
		pair2.setWordName("Queen");
		pair2.setMeanName("퀸");
		list.add(pair2);
		pair3.setWordNo(3);
		pair3.setWordName("King");
		pair3.setMeanName("킹");
		list.add(pair3);
		
		pair4.setWordNo(4);
		pair4.setWordName("Tiger");
		pair4.setMeanName("호랑이");
		list.add(pair4);
		
		pair5.setWordNo(5);
		pair5.setWordName("Word");
		pair5.setMeanName("단어");
		list.add(pair5);
		
		md.addAttribute("gameList", list);
		
		return "_view/test";
	}
	
	@ResponseBody
	@RequestMapping(value = "{URLId}/wrongword", method = RequestMethod.POST)
	public void wrongWord(URLPathVo urlPathVo,String wrongWord) {
		System.out.println("ajax 틀린 단어");
		System.out.println(urlPathVo.toString());
		System.out.println(wrongWord);
		
		pairSetGameService.wrongWordInsert(urlPathVo, wrongWord);
		
	}
	
	@ResponseBody
	@RequestMapping(value = "{URLId}/scoreupdate", method = RequestMethod.POST)
	public void wrongWord(PairSetGameVo pairSetGameVo) {
		System.out.println("게임이 끝난뒤 점수 업데이트");
		//dao 주석 풀어야함
		pairSetGameService.scoreRankinInsert(pairSetGameVo);
		
	}
	
}
