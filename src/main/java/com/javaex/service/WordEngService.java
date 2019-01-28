package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.WordEngDao;
import com.javaex.vo.WordEngVo;

@Service
public class WordEngService {

	@Autowired
	WordEngDao wordengDao;

	public List<WordEngVo> getList() {
		return wordengDao.selectWordEngList();
	}

	public int add(WordEngVo wordengVo) {
		return wordengDao.insertWordEng(wordengVo);
	}
}
