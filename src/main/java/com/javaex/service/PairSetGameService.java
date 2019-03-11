package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.PairSetGameDao;
import com.javaex.vo.PairSetGameVo;
import com.javaex.vo.URLPathVo;

@Service
public class PairSetGameService {
	
	@Autowired
	PairSetGameDao pairSetGameDao;
	//점수 업데이트
	public void scoreRankinInsert(PairSetGameVo pairSetGameVo) {
		pairSetGameDao.insertGameScore(pairSetGameVo);
	}
	//틀린단어 인서트
	public void wrongWordInsert(URLPathVo urlPathVo,String wrongWord) {
		
	}
}
