package com.javaex.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.WordbookDao;
import com.javaex.vo.UsersVo;
import com.javaex.vo.WordbookVo;

@Service
public class WordbookService {

	@Autowired
	WordbookDao wordbookDao;

	public List<WordbookVo> getWordbookList(Map<String, String> path) {
		
		return wordbookDao.selectWordbookList(path);
	}

	public void addwordbook(String id,String wordbookname) {
		wordbookDao.addwordbook(id, wordbookname);
	}
}
