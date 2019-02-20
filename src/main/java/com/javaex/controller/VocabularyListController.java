package com.javaex.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.VocabularyListService;
import com.javaex.vo.URLPathVo;
import com.javaex.vo.VocabularyListVo;
import com.javaex.vo.WordbookVo;

@Controller
public class VocabularyListController {

	@Autowired
	VocabularyListService vocabularyListService;
	
	@RequestMapping(value = "{URLId}/vocabularylist", method = RequestMethod.GET)
	public String wordbook(URLPathVo urlPathVo,VocabularyListVo vocabularyListVo,Model md,HttpServletRequest req) {
		//no가 있을경우 와
		//no가 없을경우의 리스트 작성을 해야함
		//리스트 컨트롤러
		//이걸 처리 ajax 처리할때는 셀렉문은 히든으로 보내서 씹 가능
//		List<VocabularyListVo> vocaList=vocabularyListService.getWordAndMean(vocabularyListVo,urlPathVo);
		
		System.out.println("보카리스트컨트롤러"+vocabularyListVo.getWordbookNo());
		System.out.println("보카리스트컨트롤러 디렉"+ urlPathVo.getDirectoryNo());
		
		List<VocabularyListVo> vocaList1=vocabularyListService.getWordAndMean1(vocabularyListVo);
		
		//디렉토리
		List<WordbookVo> directoryList = vocabularyListService.getWordbookAlldirectoryList(urlPathVo);
		//현재 셀렉키 썻음 새로 고쳐야할 필요가 있음 서비스에서는 나오지않음 여기서만 나옴
		
		md.addAttribute("wordbookNo", vocabularyListVo.getWordbookNo());
		md.addAttribute("wordbookName", vocabularyListVo.getWordbookName());
		md.addAttribute("URLId", urlPathVo.getURLId());
		md.addAttribute("directoryList", directoryList);
		md.addAttribute("vocaList", vocaList1);
		return "_view/vocabularylist";
	}
	
	@RequestMapping(value = "{URLId}/wordmodify", method = RequestMethod.GET)
	public String modify(URLPathVo urlPathVo,VocabularyListVo vocabularyListVo,Model md) {
		
		System.out.println("워드북 엔오"+urlPathVo.getWordbookNo());
		System.out.println("워드북 네임"+urlPathVo.getWordbookName());
		System.out.println("워드네임"+vocabularyListVo.getWordName());
		
		//단어장 이름 수정
		if(urlPathVo.getWordbookName()!="") {
			System.out.println("단어장 이름 수정");
			vocabularyListService.wordbookNameModify(urlPathVo);
		}
		
		//단어 수정
		if(vocabularyListVo.getWordName()!="") {
			System.out.println("단어 수정");
			vocabularyListService.wordModify(vocabularyListVo);
		}
		return "redirect:"+"/{URLId}";
	}
	
	@ResponseBody
	@RequestMapping(value = "{URLId}/deleteWord", method = RequestMethod.POST)
	public void wordDelete(URLPathVo urlPathVo, VocabularyListVo vocabularyListVo,Model md) {
		System.out.println("ajax 단어삭제");
		vocabularyListService.deleteSetWord(urlPathVo);
	}
	
	@ResponseBody
	@RequestMapping(value = "{URLId}/insertWord", method = RequestMethod.POST)
	public int wordInsert(URLPathVo urlPathVo, VocabularyListVo vocabularyListVo,Model md) {
		//워드 네임은 보카브에  엔오들은 url에
		System.out.println("ajax 단어장 만들기");
		
		//단어장 이름 적지않으면 처음페이지로 리턴
		if(urlPathVo.getWordbookName() == "") {
			return 0;
		}
		//단어장이 없을 경우 생성후 워드북 no들이 반환됨	
		vocabularyListService.createWordbookService(urlPathVo);
		//셀렉트키로 뽑은 wordbookNo값을 써야하는 리스트에 삽입
		vocabularyListVo.setWordbookNo(urlPathVo.getWordbookNo());
		//단어장 생성까지는 됨 나머지 처음부터 다 다시 뜯어봐야함
		if(vocabularyListVo.getWordName()!= "") {
			vocabularyListService.createWordService(vocabularyListVo);
		}
		
		//wordbookNo값 리턴해줘야함
		return vocabularyListVo.getWordbookNo();
	}
	
}
