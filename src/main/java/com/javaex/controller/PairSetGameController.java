package com.javaex.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.vo.PairSetGameVo;

@Controller
public class PairSetGameController {

	@RequestMapping(value = "{URLId}/pairsetgame", method = RequestMethod.GET)
	public String pairSetGameMain(Model md) {
		
		List<PairSetGameVo> list = new ArrayList<PairSetGameVo>();
		PairSetGameVo pair1 = new PairSetGameVo();
		PairSetGameVo pair2 = new PairSetGameVo();
		PairSetGameVo pair3 = new PairSetGameVo();
		PairSetGameVo pair4 = new PairSetGameVo();
		PairSetGameVo pair5 = new PairSetGameVo();
		PairSetGameVo pair6 = new PairSetGameVo();
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
		pair5.setWordName("Eagle");
		pair5.setMeanName("독수리");
		list.add(pair5);
		pair6.setWordNo(6);
		pair6.setWordName("Bear");
		pair6.setMeanName("곰");
		list.add(pair6);
		
		md.addAttribute("gameList", list);
		
		return "_view/PairSetGame";
	}
}
