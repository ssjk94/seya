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

import com.javaex.service.UsersService;
import com.javaex.service.WordbookService;
import com.javaex.vo.UsersVo;
import com.javaex.vo.WordbookVo;

@Controller
public class WordbookController {

	@Autowired
	WordbookService wordbookService;
//url로만 가는 맵핑 클래스 하나 만들어 주기
	
	
	@RequestMapping(value = "{urlid}/{directoryname}", method = RequestMethod.GET)
	public String gallery(@PathVariable Map<String, String> path,Model md) {
		
		String urlid = path.get("urlid");
		String directoryname = path.get("directoryname");

		System.out.println("urlid :"+urlid);
		System.out.println("directoryName :"+directoryname);
		System.out.println("db에 등록할 값 확인"+path);
		//단어장 이름,만든날짜,타입,닉네임 리스트
		md.addAttribute("URLid", urlid);
		md.addAttribute("directoryName", directoryname);
		md.addAttribute("wordbooklist",wordbookService.getWordbookList(path));
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
