package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.FlashcardDao;
import com.javaex.vo.FlashcardVo;
import com.javaex.vo.URLPathVo;

@Service
public class FlashcardService {

	@Autowired
	FlashcardDao flashcardDao;
	

	public List<FlashcardVo> getFlashcardList(URLPathVo urlPathVo) {
				
		System.out.println("FlashcardService");
		
		return flashcardDao.selectFlashcardList(urlPathVo);
	}
}
