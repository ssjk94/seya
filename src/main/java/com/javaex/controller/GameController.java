package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.FlashcardService;
import com.javaex.vo.FlashcardVo;
import com.javaex.vo.URLPathVo;

@Controller
public class GameController {

	@Autowired
	FlashcardService flashcardService;

	@RequestMapping(value = "{URLId}/flashcardgame", method = RequestMethod.GET)
	public String flashcardgame(URLPathVo urlPathVo, FlashcardVo flashcardVo, Model md) {
		
		System.out.println(flashcardVo.toString());
		List<FlashcardVo> list = flashcardService.getFlashcardList(urlPathVo);
		System.out.println("fuck"+list.toString());
		md.addAttribute("selectFlashcardList",list);
		return "_view/flashcardgame";
	}
}
