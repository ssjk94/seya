package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PairSetGameController {

	@RequestMapping(value = "{URLId}/pairsetgame", method = RequestMethod.GET)
	public String pairSetGameMain() {
		
		
		
		return "_view/PairSetGame";
	}
}
