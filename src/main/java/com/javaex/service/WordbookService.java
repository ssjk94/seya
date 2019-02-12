package com.javaex.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.WordbookDao;
import com.javaex.vo.URLPathVo;
import com.javaex.vo.VocabularyListVo;
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
	
	public URLPathVo getNickName(URLPathVo urlPathVo) {
		return wordbookDao.selectOneNickName(urlPathVo);
	}

	//디렉토리 목록 보여주는 리스트
	public List<WordbookVo> getWordbookAlldirectoryList(URLPathVo urlPathVo){
		return wordbookDao.selectWordbookAlldirectoryList(urlPathVo);
	}
	// 단어장 삭제
	public void deleteWordbook(URLPathVo urlPathVo) {
		wordbookDao.deleteWord(urlPathVo);
		wordbookDao.deleteWordbook(urlPathVo);
	}
	// 단어장 관련된것을 가져오는 객체
	//session id로 자기의 첫번째 디렉토리 번호를 찾는것
	public WordbookVo getWordbookInfo(URLPathVo urlPathVo,String id) {
		
		WordbookVo wordbookInfo = wordbookDao.selectWordbookInfo(urlPathVo);
		int directoryNo = wordbookDao.selectDirectoryNoInfo(id).getDirectoryNo();
		wordbookInfo.setDirectoryNo(directoryNo);
		
		System.out.println(wordbookInfo.toString());
		
		return wordbookInfo;
	}
	//단어테이블 젠부복사
	public List<VocabularyListVo> getVocabularyInfo(URLPathVo urlPathVo){
		return wordbookDao.selectVocabularyInfo(urlPathVo);
	}
	
	//가져온 단어장을 자기 아이디에 만든다
	public void setWordbook(WordbookVo wordbookVo) {
		wordbookDao.insertWordbook(wordbookVo);
	}
	//가져온 단어를 자기 아이디에 만들어야함
	public void setWord(URLPathVo urlPathVo) {
		wordbookDao.insertWord(urlPathVo);
	}
	//공유기능을 변경하기 위한
	public void setWordbookAccess(WordbookVo wordbookvo) {
		
		if(wordbookvo.getWordbookAccess()==1){
			//공유 가능으로 업데이트
			wordbookDao.updateWordbookAccess0(wordbookvo);
		}else {
			//공유 불가능으로 업데이트
			wordbookDao.updateWordbookAccess1(wordbookvo);
		}
	}
	
}
