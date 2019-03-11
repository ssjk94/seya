package com.javaex.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.WordbookService;
import com.javaex.vo.PagingVo;
import com.javaex.vo.URLPathVo;
import com.javaex.vo.VocabularyListVo;
import com.javaex.vo.WordbookVo;

@Controller
public class WordbookController {

	@Autowired
	WordbookService wordbookService;
	
	//사용자 아이디로 들어갔을때 갤러리 출력 컨트롤러
	@RequestMapping(value = "{URLId}", method = RequestMethod.GET)
	public String wordbook(String keyword,URLPathVo urlPathVo,PagingVo pagingVo,Model md) {
		
		//URLId에 들어온 값이 진짜 있는 유저인지 알아보는서비스
		if(!wordbookService.realExistUser(urlPathVo)) {
			//리다이렉트로 보내기
			return "redirect:"+"/";
		}
		
		//검색결과 받는거
		System.out.println("keword: "+keyword);
		keyword = "안녕하세여";
		//기본은 전체 디렉토리
		//디렉토리는 가는데
		
		List<WordbookVo> directoryList = wordbookService.getWordbookAlldirectoryList(urlPathVo);
		List<WordbookVo> wordbookList = wordbookService.getDefaultWordbookList(urlPathVo);
		//워드북의 갯수
		pagingVo.setTotal(wordbookList.size());
		pagingVo = wordbookService.pagenation(pagingVo);
		
		//리스트 잘라주는 문장 들어가야함
		try {
			wordbookList = wordbookList.subList(
					pagingVo.getListCnt()*(pagingVo.getIndex()-1),
					pagingVo.getListCnt()*(pagingVo.getIndex()-1)+pagingVo.getLastListCnt());
		}catch (IndexOutOfBoundsException e) {
			
		}
		
		System.out.println(pagingVo.toString());
		
		md.addAttribute("URLId", urlPathVo.getURLId());
		md.addAttribute("directoryList",directoryList);
		md.addAttribute("wordbookList",wordbookList);		
		md.addAttribute("urlPathVo", wordbookService.getNickName(urlPathVo));
		md.addAttribute("keyword", keyword);
		//디렉토리에 단어장이 없을때 디렉토리 토리토리
		md.addAttribute("directoryNo", urlPathVo.getDirectoryNo());
		md.addAttribute("pagingVo", pagingVo);
		return "_view/gallery";
	}
	//리스트 출력 컨트롤러
	@RequestMapping(value = "{URLId}/list", method = RequestMethod.GET)
	public String wordbookgallery(URLPathVo urlPathVo,Model md) {
		
		List<WordbookVo> directoryList = wordbookService.getWordbookAlldirectoryList(urlPathVo);
		List<WordbookVo> wordbookList = wordbookService.getDefaultWordbookList(urlPathVo);
		
		md.addAttribute("listview", 0);
		md.addAttribute("URLId", urlPathVo.getURLId());
		md.addAttribute("directoryList",directoryList);
		md.addAttribute("wordbookList",wordbookList);
		md.addAttribute("urlPathVo", wordbookService.getNickName(urlPathVo));
		//디렉토리에 단어장이 없을때 디렉토리 토리토리
		md.addAttribute("directoryNo", urlPathVo.getDirectoryNo());
		
		
		return "_view/list";
	}
	
	@ResponseBody
	@RequestMapping(value = "{URLId}/delete", method = RequestMethod.POST)
	public void wordbookDelete(URLPathVo urlPathVo,Model md) {
		System.out.println("삭제");
		wordbookService.deleteWordbook(urlPathVo);
	}
	
	@ResponseBody
	@RequestMapping(value = "{URLId}/share", method = RequestMethod.POST)
	public void wordbookShare(URLPathVo urlPathVo,Model md, HttpSession session) {
		
		String id= (String) session.getAttribute("id");
		//String id= req.getParameter("id");
		System.out.println(id);
		System.out.println("공유");
		System.out.println(urlPathVo.getURLId());
		System.out.println("워드북 엔오"+urlPathVo.getWordbookNo());
		//session.id != urlid 활성화 되어서
		//wordbookNo와 urlid로 단어장,닉네임,시간,공유 등등 찾고
		
		//가져가려는 단어장 정보를 가져오는 WordbookVo형 객체
		//자기의 첫번째 디렉토리번호를 가져오는 문
		WordbookVo wordbookVo=wordbookService.getWordbookInfo(urlPathVo,id);
		System.out.println(wordbookVo.toString());
		//단어장에 있는 리스트 형으로 단어 다 가져오기
		List<VocabularyListVo> vocaShare = wordbookService.getVocabularyInfo(urlPathVo);
		
		//단어장 만들기
		wordbookService.setWordbook(wordbookVo);
		
		//반환된 단어장 no를 세팅
		for(VocabularyListVo a:vocaShare) {
			a.setWordbookNo(wordbookVo.getWordbookNo());
		}
		
		//만든후 no값에 리스트 넣어서 ㄱㄱ
		wordbookService.setWord(vocaShare);
		
		//다시한번 워드 테이블 전체를 가져가서 
		//session.id와 일치하는 사람에게 생성한다
	}
	
	@ResponseBody
	@RequestMapping(value = "{URLId}/change", method = RequestMethod.POST)
	public void wordbookChange(WordbookVo wordbookvo,Model md) {
		System.out.println("공유기능 변경");
		wordbookService.setWordbookAccess(wordbookvo);
	}
	
	
}
