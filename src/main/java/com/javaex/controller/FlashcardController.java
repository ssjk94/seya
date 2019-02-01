package com.javaex.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FlashcardController {

	@RequestMapping(value = "/flashcard", method = RequestMethod.GET)
	public String flashcard(Model md, HttpServletRequest req) {
		System.out.println("flashcard");
		return "_view/flashcard";
	}

	@RequestMapping(value = "/leech", method = RequestMethod.GET)
	public String modibreak() {
		System.out.println("leech");
		return "_view/leech";
	}

}
