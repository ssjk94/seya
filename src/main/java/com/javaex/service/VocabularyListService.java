package com.javaex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.VocabularyListDao;
import com.javaex.vo.URLPathVo;
import com.javaex.vo.WordbookVo;

@Service
public class VocabularyListService {

	@Autowired
	VocabularyListDao vocabularyListDao;
	
	//디렉토리 목록 보여주는 리스트
//			public List<WordbookVo> getWordbookAlldirectoryList(URLPathVo urlPathVo){
//				return addVocabularyDao.selectWordbookAlldirectoryList(urlPathVo);
//			}
	
}
