package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.WordbookDao;
import com.javaex.vo.WordbookVo;

@Service
public class WordbookService {

	@Autowired
	WordbookDao wordbookDao;

	public List<WordbookVo> getList() {
		return wordbookDao.selectWordbookList();
	}

	public int add(WordbookVo wordbookVo) {
		return wordbookDao.insertWordbook(wordbookVo);
	}
}
