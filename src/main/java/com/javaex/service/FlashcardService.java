package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.FlashcardDao;
import com.javaex.vo.UsersVo;
import com.javaex.vo.WordbookVo;

@Service
public class FlashcardService {

	@Autowired
	FlashcardDao flashcardDao;

	public List<WordbookVo> getFlashcardwordList() {
		return flashcardDao.selectFlashcardwordList();
	}

	public List<UsersVo> getNickname(){
		return flashcardDao.selectUserNickNameList();
	}

	
}
