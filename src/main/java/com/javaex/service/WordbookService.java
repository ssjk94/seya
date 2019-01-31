package com.javaex.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.WordbookDao;
import com.javaex.vo.URLPathVo;
import com.javaex.vo.UsersVo;
import com.javaex.vo.WordbookVo;

@Service
public class WordbookService {

	@Autowired
	WordbookDao wordbookDao;
	//사용자 아이디 단어장 리스트 출력 Service
	public List<WordbookVo> getWordbookAllList(URLPathVo path) {
		return wordbookDao.selectWordbookDAllList(path);
	}
	
	//사용자아이디+디렉토리 단어장 리스트 출력하는 Service
	public List<WordbookVo> getWordbookDirectoryList(URLPathVo path) {
		
		return wordbookDao.selectWordbookDirectoryList(path);
	}


}
