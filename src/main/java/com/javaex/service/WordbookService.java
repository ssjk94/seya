package com.javaex.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.WordbookDao;
import com.javaex.vo.URLPathVo;
import com.javaex.vo.WordbookVo;


@Service
public class WordbookService {

	@Autowired
	WordbookDao wordbookDao;
	
	//디렉토리 와 기본 디렉토리 단어장을 보여주는 리스트
	public List<WordbookVo> getDefaultWordbookList(URLPathVo urlPathVo){
		
		List<WordbookVo> list;
		
		if(urlPathVo.getDirectoryNo()==0) {
			list = wordbookDao.selectDefaultWordbookList(urlPathVo);
		}else {
			list = wordbookDao.selectDirectoryWordbookList(urlPathVo);
		}
		return list;
	}

	//디렉토리 목록 보여주는 리스트
	public List<WordbookVo> getWordbookAlldirectoryList(URLPathVo urlPathVo){
		return wordbookDao.selectWordbookAlldirectoryList(urlPathVo);
	}

}
