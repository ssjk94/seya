package com.javaex.controller;

import java.util.ArrayList;
import java.util.List;

import com.javaex.vo.UsersVo;
import com.javaex.vo.VocabularyListVo;

public class test {

	public static void main(String[] args) {
		//model md
		//md.allattribute("wordbook",list1);
		//md.allattribute("word",list2);
		
		UsersVo user1 = new UsersVo();
		UsersVo user2 = new UsersVo();
		UsersVo user3 = new UsersVo();
		VocabularyListVo voca1 = new VocabularyListVo();
		VocabularyListVo voca2 = new VocabularyListVo();
		VocabularyListVo voca3 = new VocabularyListVo();
		
		List<UsersVo> list1 = new ArrayList<UsersVo>();
		List<VocabularyListVo> list2 = new ArrayList<VocabularyListVo>();
		
		String wordArr1[] = new String[4];
		String wordArr2[] = new String[4];
		String wordArr3[] = new String[4];
		
		wordArr1[0] ="1";
		wordArr1[1] ="2";
		wordArr1[2] ="3";
		wordArr1[3] ="4";
		
		wordArr2[0] ="11";
		wordArr2[1] ="22";
		wordArr2[2] ="33";
		wordArr2[3] ="44";
		
		wordArr3[0] ="111";
		wordArr3[1] ="222";
		wordArr3[2] ="333";
		wordArr3[3] ="444";
		
		voca1.setWordArr(wordArr1);
		list2.add(voca1);
		voca2.setWordArr(wordArr2);
		list2.add(voca2);
		voca3.setWordArr(wordArr3);
		list2.add(voca3);
		
		
//		for(VocabularyListVo a: list2) {
//			String arr[] = a.getWordArr();
//			for(String b:arr) {
//				System.out.println(b);
//			}
//		}
		user1.setUserName("일번");
		user1.setUserImage("11111111111111111111111111111111111");
		user2.setUserName("이번");
		user2.setUserImage("222222222222222222222222222222222222");
		user3.setUserName("삼번");
		user3.setUserImage("33333333333333333333333333333333333");
		list1.add(user1);
		list1.add(user2);
		list1.add(user3);
		
		
		
		
		
		
		
		//list 1번은 하나씩
		//list 2번은 하나에 속한 여러가지
		
		
		for(int i=0; i<list1.size();i++) {
			
			System.out.println("---------------------------------------------");
			System.out.println("리스트 1번 네임"+list1.get(i).getUserName());
			System.out.println("리스트 1번 이미지"+list1.get(i).getUserImage());
			for(int j=0; j<list2.get(i).getWordArr().length ;j++) {
				System.out.println("리스트 2번"+list2.get(i).getWordArr()[j]);
			}
			System.out.println("-------------------------");
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}//main
	
}
