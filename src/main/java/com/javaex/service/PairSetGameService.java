package com.javaex.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.repository.PairSetGameDao;
import com.javaex.vo.PairSetGameVo;
import com.javaex.vo.URLPathVo;
import com.sun.javafx.image.impl.IntArgb;
import com.sun.org.apache.xalan.internal.xsltc.util.IntegerArray;

@Service
public class PairSetGameService {
	
	@Autowired
	PairSetGameDao pairSetGameDao;
	//게임용
	public List<Object> getPairGameSource(PairSetGameVo pairSetGameVo){
		//전체 단어장의 단어를 다 가져온 리스트
		List<PairSetGameVo> purityList = pairSetGameDao.selectPairGameSource(pairSetGameVo);
		List<PairSetGameVo> finishList = new ArrayList<PairSetGameVo>();
		List<PairSetGameVo> randomList = new ArrayList<PairSetGameVo>();
		List<Object> ObArr = new ArrayList<Object>(); 
		if(!purityList.isEmpty()) {			
			int listLength = (purityList.size()/4)+ 1;
			
			
			for(int i=0 ;i<listLength;i++) {
				PairSetGameVo pair = new PairSetGameVo();
				
				for(int j=1;j<5;j++) {
					
					int index =(int)(Math.random()*purityList.size());
					PairSetGameVo testPair = purityList.get(index);
					
					if(j==1) {
						pair.setWord1(testPair.getWordName());
						pair.setMean1(testPair.getMeanName());
					}else if(j==2) {
						pair.setWord2(testPair.getWordName());
						pair.setMean2(testPair.getMeanName());
					}else if(j==3) {
						pair.setWord3(testPair.getWordName());
						pair.setMean3(testPair.getMeanName());
					}else if(j==4) {
						pair.setWord4(testPair.getWordName());
						pair.setMean4(testPair.getMeanName());
					}
					
					purityList.remove(index);
					
					if(purityList.size()==0) {
						break;
					}
				}
				
				finishList.add(pair);
				
				if(purityList.size()==0) {
					break;
				}
			}
			////////여기까지 finishList
			for(int i=0;i<finishList.size();i++) {
				PairSetGameVo pair = new PairSetGameVo();
				
				int randomNum =1;
				if(finishList.get(i).getWord4()!=null&&finishList.get(i).getMean4()!=null) {
					randomNum = 4;
				}else if(finishList.get(i).getWord3()!=null&&finishList.get(i).getMean3()!=null){
					randomNum = 3;
				}else if(finishList.get(i).getWord2()!=null&&finishList.get(i).getMean2()!=null){
					randomNum = 2;
				}
				
				int wordArr[]= new int[randomNum];
				int meanArr[]= new int[randomNum];
				
				//난수 생성기
				for(int j=0;j<randomNum;j++) {
					wordArr[j] = (int)(Math.random()*randomNum)+1;
					
					for(int k=0;k<j;k++) {
						if(wordArr[j]==wordArr[k]) {
							j--;
							break;
						}
					}
				}
				
				//난수 생성기
				for(int j=0;j<randomNum;j++) {
					meanArr[j] = (int)(Math.random()*randomNum)+1;
					
					for(int k=0;k<j;k++) {
						if(meanArr[j]==meanArr[k]) {
							j--;
							break;
						}
					}
				}
				int randomIndex = 0;
				for(int j=0;j<wordArr.length;j++) {
					int a = wordArr[j];
					String str;
					if(a==1) {
						
						if(randomIndex==0) {
							str = finishList.get(i).getWord1();
							randomIndex++;
						}else if(randomIndex==1) {
							str = finishList.get(i).getWord2();
							randomIndex++;
						}else if(randomIndex==2) {
							str = finishList.get(i).getWord3();
							randomIndex++;
						}else {
							str = finishList.get(i).getWord4();
							randomIndex++;
						}
						pair.setWord1(str);
					}else if(a==2) {
						if(randomIndex==0) {
							str = finishList.get(i).getWord1();
							randomIndex++;
						}else if(randomIndex==1) {
							str = finishList.get(i).getWord2();
							randomIndex++;
						}else if(randomIndex==2) {
							str = finishList.get(i).getWord3();
							randomIndex++;
						}else {
							str = finishList.get(i).getWord4();
							randomIndex++;
						}
						pair.setWord2(str);
					}else if(a==3) {
						if(randomIndex==0) {
							str = finishList.get(i).getWord1();
							randomIndex++;
						}else if(randomIndex==1) {
							str = finishList.get(i).getWord2();
							randomIndex++;
						}else if(randomIndex==2) {
							str = finishList.get(i).getWord3();
							randomIndex++;
						}else {
							str = finishList.get(i).getWord4();
							randomIndex++;
						}
						pair.setWord3(str);
					}else if(a==4) {
						if(randomIndex==0) {
							str = finishList.get(i).getWord1();
							randomIndex++;
						}else if(randomIndex==1) {
							str = finishList.get(i).getWord2();
							randomIndex++;
						}else if(randomIndex==2) {
							str = finishList.get(i).getWord3();
							randomIndex++;
						}else {
							str = finishList.get(i).getWord4();
							randomIndex++;
						}
						pair.setWord4(str);
					}
				}
				
				randomIndex = 0;
				
				for(int j=0;j<meanArr.length;j++) {
					int a = meanArr[j];
					String str;
					
					if(a==1) {
						
						if(randomIndex==0) {
							str = finishList.get(i).getMean1();
							randomIndex++;
						}else if(randomIndex==1) {
							str = finishList.get(i).getMean2();
							randomIndex++;
						}else if(randomIndex==2) {
							str = finishList.get(i).getMean3();
							randomIndex++;
						}else {
							str = finishList.get(i).getMean4();
							randomIndex++;
						}
						pair.setMean1(str);
					}else if(a==2) {
						if(randomIndex==0) {
							str = finishList.get(i).getMean1();
							randomIndex++;
						}else if(randomIndex==1) {
							str = finishList.get(i).getMean2();
							randomIndex++;
						}else if(randomIndex==2) {
							str = finishList.get(i).getMean3();
							randomIndex++;
						}else {
							str = finishList.get(i).getMean4();
							randomIndex++;
						}
						pair.setMean2(str);
					}else if(a==3) {
						if(randomIndex==0) {
							str = finishList.get(i).getMean1();
							randomIndex++;
						}else if(randomIndex==1) {
							str = finishList.get(i).getMean2();
							randomIndex++;
						}else if(randomIndex==2) {
							str = finishList.get(i).getMean3();
							randomIndex++;
						}else {
							str = finishList.get(i).getMean4();
							randomIndex++;
						}
						pair.setMean3(str);
					}else if(a==4) {
						if(randomIndex==0) {
							str = finishList.get(i).getMean1();
							randomIndex++;
						}else if(randomIndex==1) {
							str = finishList.get(i).getMean2();
							randomIndex++;
						}else if(randomIndex==2) {
							str = finishList.get(i).getMean3();
							randomIndex++;
						}else {
							str = finishList.get(i).getMean4();
							randomIndex++;
						}
						pair.setMean4(str);
					}
				}
				
				randomList.add(pair);
			}
			ObArr.add(finishList);
			ObArr.add(randomList);
		}
		
		return ObArr;
	}
	
	
	
	
	
	//점수 업데이트
	public void scoreRankinInsert(PairSetGameVo pairSetGameVo) {
		pairSetGameDao.insertGameScore(pairSetGameVo);
	}
	//틀린단어 인서트
	public void wrongWordInsert(PairSetGameVo pairSetGameVo) {
		
		//wordbookno 삽입해서 wordbook에 입력
		pairSetGameVo.setWordbookNo(pairSetGameDao.selectWrongWord(pairSetGameVo));
		
		pairSetGameDao.inserWrongWord(pairSetGameVo);
	}
}
