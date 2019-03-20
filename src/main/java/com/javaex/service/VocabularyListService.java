package com.javaex.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.VocabularyListDao;
import com.javaex.vo.PagingVo;
import com.javaex.vo.URLPathVo;
import com.javaex.vo.VocabularyListVo;
import com.javaex.vo.WordbookVo;

@Service
public class VocabularyListService {

	@Autowired
	VocabularyListDao vocabularyListDao;
	
	public void createWordbookService(URLPathVo urlPathVo) {
		if(urlPathVo.getWordbookNo()==0) {
			vocabularyListDao.insertWordbook(urlPathVo);
		}else {
			vocabularyListDao.updateWordbookName(urlPathVo);
		}
	}
	
	public void createWordService(VocabularyListVo vocabularyListVo) {
		
		//입력받은 단어가 배열에 들어가게끔 만드는 구문
		String arr[] = vocabularyListVo.getWordName().split("\\n");
		List<String> arrList = new ArrayList<String>();
		
		for(int i =0;i<arr.length;i++) {
			if(!arr[i].isEmpty()) {
				arrList.add(arr[i]);
			}
		}
		
		String wordArr[] = new String[arrList.size()];
		
		List<VocabularyListVo> seyaList = new ArrayList<VocabularyListVo>();
		
		for(int i =0;i<wordArr.length;i++) {
			wordArr[i] = arrList.get(i);
			vocabularyListVo.setWordName(wordArr[i]);		
			if(vocabularyListDao.selectWordAndMean(vocabularyListVo)!=null) {
				seyaList.add(vocabularyListDao.selectWordAndMean(vocabularyListVo));
			}
		}
		//입력한것중 사전 가져오기
			

		//배열 길이만큼 워드네임 삽입
		for(int i =0;i<wordArr.length;i++) {
			vocabularyListVo.setWordName(wordArr[i]);	
			for(int j=0;j<seyaList.size();j++) {
				// 대소문자 맞추기
				
				if((vocabularyListVo.getWordName()).toLowerCase().equals
						(seyaList.get(j).getSeyaWordName())) {
					vocabularyListVo.setMeanName(seyaList.get(j).getSeyaMeanName());
					
					break;
				}
			}
			//배열 길이만큼 inset문 실행하면 끝
			vocabularyListDao.insertMoreWord(vocabularyListVo);

			//민네임 초기화
			vocabularyListVo.setMeanName(null);
		}
	}
	
/////////////////////////////////////////////////////////////////////////////////////////////////////
	
	public List<VocabularyListVo> getWordAndMean1(VocabularyListVo vocabularyListVo){
		
		List<VocabularyListVo> list = vocabularyListDao.selectAllWord(vocabularyListVo);

		return list;
	}
/////////////////////////////////////////////////////////////////////////////////////////////////////
	//단어장 이름 수정
	public void wordbookNameModify(URLPathVo urlPathVo) {
		vocabularyListDao.updateWordbookName(urlPathVo);
	}
	//단어장 수정
	public void wordModify(VocabularyListVo vocabularyListVo) {
		
		//배열에 넣음
		String[] wordArr = vocabularyListVo.getWordName().split("\\r?\\n");
		
		for(int i=0 ; i<wordArr.length; i++) {
			
			String[] wordOrMean = wordArr[i].split(" ");
			//word update
			if(Integer.parseInt(wordOrMean[1]) == 0) {
				vocabularyListVo.setWordNo(Integer.parseInt(wordOrMean[0]));
				vocabularyListVo.setWordName(wordOrMean[2]);
				vocabularyListDao.updateWordName(vocabularyListVo);
			//mean update
			}else {
				vocabularyListVo.setWordNo(Integer.parseInt(wordOrMean[0]));
				vocabularyListVo.setMeanName(wordOrMean[2]);
				vocabularyListDao.updateMeanName(vocabularyListVo);
			}
		}
	}
/////////////////////////////////////////////////////////////////////////////////////////////////////
	//페이지 네이션
	
	public PagingVo pagenation(PagingVo pagingVo) {
		pagingVo.setListCnt(10);//한 화면에 보여줄 리스트 갯수
		
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
				if(pagingVo.getPageLastNum()<=pagingVo.getIndex()&&pagingVo.getIndex()!=4) {
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
	
/////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	//단어 삭제하는 서비스
	public void deleteSetWord(URLPathVo urlPathVo) {
		vocabularyListDao.deleteWord(urlPathVo);
	}
	
	//디렉토리 목록 보여주는 리스트
	public List<WordbookVo> getWordbookAlldirectoryList(URLPathVo urlPathVo){
		return vocabularyListDao.selectWordbookAlldirectoryList(urlPathVo);
	}
	
	public String getWordbookName(int wordbookNo) {
		return vocabularyListDao.selectOneWordbookName(wordbookNo);
	}
	
	public URLPathVo getNickName(URLPathVo urlPathVo) {
        return vocabularyListDao.selectOneNickName(urlPathVo);
    }
	
}
