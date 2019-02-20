package com.javaex.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.VocabularyListDao;
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
			System.out.println("배열"+arr[i]);
		}
		
		String wordArr[] = new String[arrList.size()];
		
		for(int i =0;i<wordArr.length;i++) {
			wordArr[i] = arrList.get(i);
		}
		vocabularyListVo.setWordArr(wordArr);
		
		//여기까지는 가능가능///////////////////////////////////////////////////////여기까지
		
		//입력한것중 사전 가져오기
		List<VocabularyListVo> seyaList =	vocabularyListDao.selectWordAndMean(vocabularyListVo);

		//배열 길이만큼 워드네임 삽입
		for(int i =0;i<wordArr.length;i++) {
			vocabularyListVo.setWordName(wordArr[i]);
			for(int j=0;j<seyaList.size();j++) {
				// 대소문자 맞추기
				if(vocabularyListVo.getWordName().toLowerCase().equals
						(seyaList.get(j).getSeyaWordName().toLowerCase())) {
					
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
		
		for(VocabularyListVo a :list) {
			System.out.println("리스트 서비스 toString"+a.toString());
		}
		
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
	
	
	//단어 삭제하는 서비스
	public void deleteSetWord(URLPathVo urlPathVo) {
		vocabularyListDao.deleteWord(urlPathVo);
	}
	
	//디렉토리 목록 보여주는 리스트
	public List<WordbookVo> getWordbookAlldirectoryList(URLPathVo urlPathVo){
		return vocabularyListDao.selectWordbookAlldirectoryList(urlPathVo);
	}

	public URLPathVo getNickName(URLPathVo urlPathVo) {
        return vocabularyListDao.selectOneNickName(urlPathVo);
    }
	
}
