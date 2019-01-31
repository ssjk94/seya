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
	
	//단어장 리스트 전부 출력
	public List<WordbookVo> getWordgetWordbookAllList(String URLId){
		return wordbookDao.selectWordbookAllList(URLId);
	}

}
