package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.FlashcardDao;
import com.javaex.vo.FlashcardVo;

@Service
public class FlashcardService {

	@Autowired
	FlashcardDao flashcardDao;

	public List<FlashcardVo> getFlashcardWordList() {
		return flashcardDao.selectFlashcardWordList();

	}

	public List<FlashcardVo> getFlashcardMeanList() {
		return flashcardDao.selectFlashcardWordList();

	}
}
