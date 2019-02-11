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
	
	//사전에서 단어를 가져온다 뜻과 함께 입력한것을
	public List<VocabularyListVo> getWordAndMean(VocabularyListVo vocabularyListVo,URLPathVo urlPathVo){
		List<VocabularyListVo> wordList = new ArrayList<VocabularyListVo>();
		
		
		if(urlPathVo.getWordbookNo()==0) {
			//입력받은 단어가 배열에 들어가게끔 만드는 구문	
			String wordArr[]=vocabularyListVo.getWordName().split("\\n");
			
			for(int i =0;i<wordArr.length;i++) {
				wordArr[i]=wordArr[i].trim();
			}
			vocabularyListVo.setWordArr(wordArr);
			
			//단어장 만들기문
			vocabularyListDao.insertWordbook(urlPathVo);
			
			
			
			//단어장을 새로 만들때 가장 끝에있는 단어장 번호 가져오기
			int num=vocabularyListDao.selectWordbookNo(urlPathVo).getWordbookNo();
			vocabularyListVo.setWordbookNo(num);
	
			//단어 삽입문
			for(int i =0;i<vocabularyListVo.getWordArr().length;i++) {
				vocabularyListVo.setWordName(wordArr[i]);
				vocabularyListDao.insertWord(vocabularyListVo);
			}
			
			//단어 가져오기
			wordList = vocabularyListDao.selectWord(vocabularyListVo);
			
//			for(VocabularyListVo a:wordList) {
//				System.out.println("여기23"+a.toString());
//			}
			
			//입력한것중 사전 가져오기
			List<VocabularyListVo> seyaList =	vocabularyListDao.selectWordAndMean(vocabularyListVo);
			for(int i=0;i<wordList.size();i++) {
				for(int j=0;j<seyaList.size();j++) {
					if(wordList.get(i).getWordName().equals(seyaList.get(j).getSeyaWordName())) {
						wordList.get(i).setMeanName(seyaList.get(j).getSeyaMeanName());
						break;
					}
				}
			}
			//wordList로 업데이트 시작해야함
			for(int i=0;i<wordList.size();i++) {
				vocabularyListDao.updateWordAndMean(wordList.get(i));				
			}
			//마지막으로 모든 컬럼 뽑아낸다
			return vocabularyListDao.selectAllWord(vocabularyListVo);
		}
		else {
			return vocabularyListDao.selectAllWord(vocabularyListVo);
		}
	}
	
	
	//디렉토리 목록 보여주는 리스트
	public List<WordbookVo> getWordbookAlldirectoryList(URLPathVo urlPathVo){
		return vocabularyListDao.selectWordbookAlldirectoryList(urlPathVo);
	}
		
		
	
}
