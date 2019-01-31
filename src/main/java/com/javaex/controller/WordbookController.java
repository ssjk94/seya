package com.javaex.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.WordbookService;
import com.javaex.vo.URLPathVo;

@Controller
public class WordbookController {

	@Autowired
	WordbookService wordbookService;

//사용자 아이디로 들어갔을때 리스트 출력	
	@RequestMapping(value = "{URLId}", method = RequestMethod.GET)
	public String wordbook(URLPathVo urlpath,Model md) {
		
		System.out.println("URLId :"+urlpath.getURLId());
		System.out.println("db에 등록할 값 확인"+urlpath.toString());
		
		md.addAttribute("URLId", urlpath.getURLId());
		md.addAttribute("wordbooklist",wordbookService.getWordbookAllList(urlpath));
		return "_view/gallery";
	}
//사용자 아이디 + 디렉토리 리스트 출력
	@RequestMapping(value = "{URLId}/{directoryName}", method = RequestMethod.GET)
	public String gallery(URLPathVo urlpath,Model md) {
		
		System.out.println("URLId :"+urlpath.getURLId());
		System.out.println("directoryName :"+urlpath.getDirectoryName());
		System.out.println("db에 등록할 값 확인"+urlpath.toString());
		//단어장 이름,만든날짜,타입,닉네임 리스트
		md.addAttribute("URLId", urlpath.getURLId());
		md.addAttribute("directoryName", urlpath.getDirectoryName());
		md.addAttribute("wordbooklist",wordbookService.getWordbookDirectoryList(urlpath));
		return "_view/gallery";
	}
	
	@RequestMapping(value = "{urlid}/list", method = RequestMethod.GET)
	public String list(@PathVariable String urlid,@PathVariable String directoryname,Model md) {
		System.out.println("list cont:"+urlid);
		System.out.println("gallery cont:"+directoryname);
		//단어장 이름,만든날짜,타입,닉네임 리스트
//		md.addAttribute("URLid", urlid);
//		md.addAttribute("directoryname", directoryname);
//		
//		md.addAttribute("wordbooklist",wordbookService.getWordbookList());
		return "_view/list";
	}
//directory id도 보내야함
	@RequestMapping(value = "{urlid}/addvocabulary", method = RequestMethod.GET)
	public String addvocabulary(@PathVariable String urlid,Model md) {
		System.out.println("addvocabulary cont:"+urlid);
		md.addAttribute("URLid", urlid);
		
		
		return "_view/addvocabulary";
	}
//directory id도 보내야함
	@RequestMapping(value = "{urlid}/vocabularylist", method = RequestMethod.GET)
	public String vocabularylist(@PathVariable String urlid,Model md,HttpServletRequest req) {
		System.out.println("vocabularylist cont:"+urlid);
		md.addAttribute("URLid", urlid);
		
		String wordbookname=req.getParameter("wordbookname");
		String word=req.getParameter("word");
		
//		wordbookService
		
		return "_view/vocabularylist";
	}

}
