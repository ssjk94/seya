package com.javaex.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.WordbookDao;
import com.javaex.vo.PagingVo;
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
			//단어수를 뽑아내기 위한 실행문
			for(int i=0;i<list.size();i++) {
				list.get(i).setWordNum(wordbookDao.selectWordNum(list.get(i).getWordbookNo()));
			}
		}else {
			list = wordbookDao.selectDirectoryWordbookList(urlPathVo);
			//단어수를 뽑아내기 위한 실행문
			for(int i=0;i<list.size();i++) {
				list.get(i).setWordNum(wordbookDao.selectWordNum(list.get(i).getWordbookNo()));
			}
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
		//기본 단어장을 삭제하려고할때
		if(wordbookDao.selectWordbookType(urlPathVo)==0) {
			wordbookDao.updateDefaultWordbook(urlPathVo);
		}else if(wordbookDao.selectWordbookType(urlPathVo)==1){			
			wordbookDao.deleteWord(urlPathVo);
			wordbookDao.deleteWordbook(urlPathVo);
		}
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
	public void setWord(List<VocabularyListVo> vocaShare) {
		
		for(int i =0 ; i<vocaShare.size(); i++) {
			wordbookDao.insertWord(vocaShare.get(i));
			System.out.println("voca서비스 toString"+vocaShare.get(i).toString());
		}
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
	//페이지네이션 서비스 실행부분
	public PagingVo pagenation(PagingVo pagingVo) {
		pagingVo.setListCnt(9);//한 화면에 보여줄 리스트 갯수
		
		if(pagingVo.getTotal()%pagingVo.getListCnt()==0) {
			pagingVo.setPageLastNum(pagingVo.getTotal()/pagingVo.getListCnt());
		}else {
			pagingVo.setPageLastNum(pagingVo.getTotal()/pagingVo.getListCnt()+1);
		}

		if(pagingVo.getIndex()<1) {
			pagingVo.setIndex(1);
		}else if(pagingVo.getIndex()>pagingVo.getPageLastNum()) {
			pagingVo.setIndex(pagingVo.getPageLastNum());
		}

		if(pagingVo.getIndex()==pagingVo.getPageLastNum()) {
			if(pagingVo.getTotal()%pagingVo.getListCnt()==0) {
				pagingVo.setLastListCnt(pagingVo.getListCnt());
			}else {
				pagingVo.setLastListCnt(pagingVo.getTotal()%pagingVo.getListCnt());
			}
		}else {
			pagingVo.setLastListCnt(pagingVo.getListCnt());
		}
				
		if(pagingVo.getIndex()>=4&&pagingVo.getPageLastNum()>=pagingVo.getIndex()+2) {
			pagingVo.setPageStartNum(pagingVo.getIndex()-2);
			pagingVo.setPageLastNum(pagingVo.getIndex()+2);
		}else {
			if(pagingVo.getIndex()<4) {
				if(pagingVo.getPageLastNum()>5) {
					pagingVo.setPageLastNum(5);
				}
				pagingVo.setPageStartNum(1);					
			}else{
				if(pagingVo.getPageLastNum()<=pagingVo.getIndex()) {
					pagingVo.setPageLastNum(pagingVo.getIndex());
					pagingVo.setPageStartNum(pagingVo.getIndex()-4);
				}else {
					pagingVo.setPageStartNum(pagingVo.getIndex()-3);
				}
			}
		}
		
		//마지막 번호를 알아야함
		
		return pagingVo;
	}
	public boolean realExistUser(URLPathVo urlPathVo) {
		boolean user;
		if(wordbookDao.realExistUser(urlPathVo)==0) {
			user = false;
		}else {
			user = true;
		}
		return user;
	}
	
}
