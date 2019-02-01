package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.FlashcardService;
import com.javaex.vo.FlashcardVo;
import com.javaex.vo.URLPathVo;
import com.javaex.vo.WordbookVo;

@Controller
public class FlashcardController {

	@Autowired

	FlashcardService flashcardService;

	@RequestMapping(value = "{URLId}/flashcard", method = RequestMethod.GET)
	public String flashcard(URLPathVo urlPathVo, @ModelAttribute FlashcardVo flashcardVo, HttpServletRequest req) {
		System.out.println("flashcard");
		flashcardService.getFlashcardList();
		System.out.println(flashcardVo.toString());
		return "_view/flashcard";
	}

}
