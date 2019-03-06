package com.javaex.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.javaex.service.UsersService;
import com.javaex.vo.HeaderSearchVo;
import com.javaex.vo.URLPathVo;
import com.javaex.vo.UsersVo;
import com.javaex.vo.VocabularyListVo;
import com.javaex.vo.WordbookVo;

@Controller
public class UsersController {

	@Autowired
	UsersService usersService;

	// 자기아이디 아닐때 or 게스트로 페이지를 봤을때
	/*
	 * @RequestMapping("/{URLId}") public String urlCheck(HttpServletRequest req,
	 * HttpSession session, UsersVo usersVo) {
	 * 
	 * return ""; }
	 */

	// 회원가입
	@RequestMapping("/userinsert.do")
	public String insertUser(@ModelAttribute UsersVo usersVo, HttpServletRequest req) {

		usersVo.setUserImage("default.png");
		usersVo.setUserContent("안녕하세요");
		usersService.insertUser(usersVo);
		usersService.insertDirectory(usersVo);
		usersService.insertWordBook(usersVo);

		return "redirect:/";

	}

	// 로그인
	@RequestMapping(value = "/userlogin.do", method = RequestMethod.POST)
	public String userLogin(@ModelAttribute UsersVo usersVo, HttpSession session, HttpServletRequest req, Model model) {
		System.out.println(usersVo.toString());
		if (usersService.userLogin(usersVo) == null) {
			return "main/index";

		} else {
			usersService.userLogin(usersVo);
			String id = req.getParameter("id");
			String password = req.getParameter("password");

			if (usersVo.getId().equals(id) && usersVo.getPassword().equals(password)) {
				/*
				 * System.out.println("index에서 로그인시에 vo toString, selectoneusers이전"+usersVo.
				 * toString());
				 * 
				 * usersVo.setId(id); System.out.println("usersVo.setId(id) "+ id);
				 */
				usersVo = usersService.selectOneUsers(usersVo);

				session.setAttribute("id", id);
				session.setAttribute("nickName", usersVo.getNickName());
				session.setAttribute("userImage", usersVo.getUserImage());
				session.setAttribute("userContent", usersVo.getUserContent());

				return "redirect:" + id;
			} else {
				return "main/index";
			}

		}
	}

	// 로그아웃
	@RequestMapping("/logout.do")
	public String userLogOut(HttpSession session, HttpServletRequest req) {
		session.invalidate();

		return "redirect:" + req.getHeader("Referer");
	}

	// 정보수정 페이지로 넘기는 맵핑
	@RequestMapping("{id}/profilemodify")
	public String updatePageForm(@PathVariable String id, Model model, UsersVo usersVo, HttpSession session,
			URLPathVo urlPathVo) {
		System.out.println("정보수정 페이지갈거임");
		if (id == null) {
			throw new IllegalArgumentException("사용자 아이디가 필요합니다.");
		}
		System.out.println("여기까지는 왔어요?");

		usersVo.setId(id);
		System.out.println(usersVo.toString());
		// 로그인 사용자 정보 가져오기

		model.addAttribute("usersVo", usersService.selectOneUsers(usersVo));
		System.out.println(usersVo.toString());
		session.setAttribute("id", id);

		// urlpathvo
		usersVo.setId(id);
		model.addAttribute("urlPathVo", usersService.getNickName2(usersVo));

		return "kyunghwan/profilemodify/_leeprofilemodify";
	}

	// 정보수정페이지
	@RequestMapping(value = "{id}/usermodify.do", method = RequestMethod.POST)
	public String updateForm(Model model, UsersVo usersVo, MultipartFile file, HttpSession session, URLPathVo urlPathVo,
			HttpServletRequest req) {

//		if (id == null) {
//			throw new IllegalArgumentException("사용자 아이디가 필요합니다.");
//		}
		if (file.isEmpty()) {

			usersService.updateform2(usersVo);

			usersVo = usersService.selectOneUsers(usersVo);
			session.setAttribute("id", usersVo.getId());
			session.setAttribute("nickName", usersVo.getNickName());
			session.setAttribute("userContent", usersVo.getUserContent());
			session.setAttribute("userImage", usersVo.getUserImage());

			model.addAttribute("urlPathVo", usersService.getNickName2(usersVo));

			return "kyunghwan/profilemodify/_leeprofilemodify";
		} else {
			// 파일업로드
			try {
				String saveDir = "D:/_seyaworld/upload/profile";
				// 원파일이름
				String orgName = file.getOriginalFilename();
				System.out.println("orgName:" + orgName);

				// 확장자
				String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
				System.out.println("exName:" + exName);

				// 저장파일이름
				String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
				System.out.println("saveName:" + saveName);

				// 파일패스 생성
				String filePath = saveDir + saveName;
				System.out.println("filePath:" + filePath);

				// 파일 사이즈
				long fileSize = file.getSize();
				System.out.println("fileSize:" + fileSize);

				byte[] fileData = file.getBytes();
				OutputStream out = new FileOutputStream(saveDir + "/" + saveName); // saveDir + 잠깐지움
				BufferedOutputStream bout = new BufferedOutputStream(out);

				bout.write(fileData);

				System.out.println(file.getOriginalFilename());
				usersVo.setUserImage(saveName);
				
				if (bout != null) {
					bout.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
			usersService.updateform(usersVo);

			usersVo = usersService.selectOneUsers(usersVo);
			session.setAttribute("id", usersVo.getId());
			session.setAttribute("nickName", usersVo.getNickName());
			session.setAttribute("userContent", usersVo.getUserContent());
			session.setAttribute("userImage", usersVo.getUserImage());

			model.addAttribute("urlPathVo", usersService.getNickName2(usersVo));

			return "kyunghwan/profilemodify/_leeprofilemodify";
		}
	}

	@RequestMapping(value = "/leemodi", method = RequestMethod.GET)
	public String leemodi() {
		System.out.println("leemodi");
		return "kyunghwan/profilemodify/_leeprofilemodify";
	}

	// 헤더 네비게이션 로그인
	@RequestMapping(value = "/headerlogin.do", method = RequestMethod.POST)
	public String headerLogin(@ModelAttribute UsersVo usersVo, HttpSession session, HttpServletRequest req, Model model,
			RedirectAttributes redirectAttributes) {

		System.out.println(usersVo.toString() + "    " + req.getRequestURI());
		System.out.println("req.getHeader(\"Referer\")   " + req.getHeader("Referer"));

		System.out.println(req.getRequestURI());
		if (usersService.userLogin(usersVo) == null) {
			return "main/index";

		} else {
			usersService.userLogin(usersVo);
			String id = req.getParameter("id");
			String password = req.getParameter("password");
			System.out.println("req id:" + id);
			System.out.println("req pw:" + password);

			if (usersVo.getId().equals(id) || usersVo.getPassword().equals(password)) {
				System.out.println("아이디 비번 확인");
				// model.addAttribute("usersVo", usersService.selectOneUsers(usersVo));
				// 세션 넣고 확인할것임
				usersVo = usersService.selectOneUsers(usersVo);
				System.out.println("세션에 저장될 이름들은" + usersVo.toString());
				session.setAttribute("id", usersVo.getId());
				session.setAttribute("nickName", usersVo.getNickName());
				session.setAttribute("userContent", usersVo.getUserContent());
				session.setAttribute("userImage", usersVo.getUserImage());

//				redirectAttributes.addFlashAttribute("usersVo", usersService.selectOneUsers(usersVo));
				return "redirect:" + req.getHeader("Referer");
			} else {
				return "main/index";
			}
		}
	}

	// 헤더 써치

	@RequestMapping(value = "/selectsearch.do")
	public String searchPage(HeaderSearchVo headerSearchVo, HttpServletRequest req, Model model, HttpSession session,
			VocabularyListVo vocabularyListVo) {

		List<HeaderSearchVo> list = usersService.selectSearch(headerSearchVo);
		
		for (int i = 0; i < list.size(); i++) {
			System.out.println("toString" + list.get(i).toString());
			//System.out.println("워드북no : " + list.get(i).getWordbookNo());
			
			headerSearchVo.setWordbookNo(list.get(i).getWordbookNo());
			int count = usersService.countWordName(headerSearchVo);
			
			list.get(i).setCount(count);
			
		
			int wordbookNo = list.get(i).getWordbookNo();
			vocabularyListVo.setWordbookNo(wordbookNo);
			
			
			List<HeaderSearchVo> list2 = usersService.searchWordMeanList(wordbookNo);
			//System.out.println("워드 민,kor :" + vocabularyListVo.toString());

			String[] wordArr = new String[4];
			String[] meanArr = new String[4];

			for (int j = 0; j < list2.size() ; j++) {
				wordArr[j] = list2.get(j).getWordName();
				meanArr[j] = list2.get(j).getMeanName();
			}
			list.get(i).setWordArr(wordArr);
			list.get(i).setMeanArr(meanArr);

			/*
			 * for (String b : wordArr) { System.out.println("워드 배열" + b); } for (String b :
			 * meanArr) { System.out.println("뜻 배열" + b); }
			 */
		}
		
		model.addAttribute("list", list);
		
		
		return "main/seyasearch";
	}

	// 메인페이지
	@RequestMapping(value = "/mainpage", method = RequestMethod.GET)
	public String returnMainPage() {

		return "main/mainpage";
	}

	// 검색
	@RequestMapping(value = "/searchform", method = RequestMethod.GET)
	public String searchForm() {

		return "main/searchform";
	}

	// 아이디 중복체크
	@RequestMapping(value = "/idcheck.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<Object, Object> idcheck(String id) {
		int count = 0;
		Map<Object, Object> map = new HashMap<Object, Object>();
		count = usersService.idCheck(id);
		map.put("cnt", count);
		return map;
	}

	// 이메일 중복체크
	@RequestMapping(value = "/emailcheck.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<Object, Object> emailcheck(String email) {
		System.out.println("id넘어옴? : " + email);
		int count = 0;
		Map<Object, Object> map = new HashMap<Object, Object>();

		count = usersService.emailCheck(email);
		System.out.println("count 확인 1 :" + count);
		map.put("cnt", count);
		return map;
	}

	// 닉네임 중복체크
	@RequestMapping(value = "/nicknamecheck.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<Object, Object> nicknamecheck(String nickname) {
		System.out.println("id넘어옴? : " + nickname);
		int count = 0;
		Map<Object, Object> map = new HashMap<Object, Object>();

		count = usersService.nicknameCheck(nickname);
		System.out.println("count 확인 1 :" + count);
		map.put("cnt", count);
		return map;
	}
	
	//네이버 아이디로 로그인 
  	@RequestMapping(value="login", method=RequestMethod.GET)
	public String loginGET() {
		System.out.println("네아로 확인 login");
		return "main/seyamain";
	}
	
	@RequestMapping(value="loginpostnaver", method=RequestMethod.GET)
	public String loginPOSTNaver(HttpSession session) {
		
		System.out.println("네아로 확인 loginpostnaver");
		return "main/loginpostnaver";
	}
	// 게임 임시 보내기 폼
	@RequestMapping("/multiplechoice")
	public String multipleChoice(HttpSession session, HttpServletRequest req) {
		

		return "main/multiplechoice";
	}
	
	
}
