package com.javaex.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaex.service.FlashcardService;
import com.javaex.vo.FlashcardVo;

@Controller
public class FlashcardController {

	@Autowired

	FlashcardService flashcardService;

	@RequestMapping(value = "{URLId}/flashcard", method = RequestMethod.GET)
	public String flashcard(@ModelAttribute FlashcardVo flashcardVo, HttpServletRequest req) {
		System.out.println("flashcard");
		System.out.println(flashcardVo.toString());
		flashcardService.getFlashcardList();
		System.out.println(flashcardVo.toString());
		return "_view/flashcard";
	}

}
