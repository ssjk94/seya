package com.javaex.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.UsersService;
import com.javaex.vo.UsersVo;

@Controller
public class UsersController {

	@Autowired
	UsersService usersService;

	// @ResponseBody

	@RequestMapping("/userinsert.do")
	public String insertUser(@ModelAttribute UsersVo usersVo, HttpServletRequest req) {
		usersVo.toString();
		usersService.insertUser(usersVo);
		usersVo.toString();
		return "main/index";

	}

	@RequestMapping(value ="/userlogin.do", method = RequestMethod.POST)
	public String userLogin(@ModelAttribute UsersVo usersVo, HttpSession session, HttpServletRequest req) {

		System.out.println(usersVo.toString());
		if (usersService.userLogin(usersVo) == null) {
			return "main/index";

		} else {
			usersService.userLogin(usersVo);
			String id = req.getParameter("id");
			String password = req.getParameter("password");
			System.out.println("req id:" + id);
			System.out.println("req pw:" + password);

			if (usersVo.getId().equals(id) || usersVo.getPassword().equals(password)) {
				System.out.println("sdasd");
				session.setAttribute("id", id);
				return "_view/leegallery";
			} else {
				return "main/index";
			}

		}
	}

	@RequestMapping("/logout.do")
	public String userLogOut(HttpSession session) {
		session.removeAttribute("id");
		return "_view/leegallery";

	}

	@RequestMapping("{id}/profilemodify")
	public String updatePageForm(@PathVariable String id, Model model, UsersVo usersVo, HttpSession session) {
		System.out.println("정보수정 페이지갈거임");
		if (id == null) {
			throw new IllegalArgumentException("사용자 아이디가 필요합니다.");
		}
		System.out.println("여기까지는 왔어요?");
		
		usersVo.setId(id);
		System.out.println(usersVo.toString());
		//로그인 사용자 정보 가져오기
		
		
		model.addAttribute("usersVo",usersService.selectOneUsers(usersVo));
		System.out.println(usersVo.toString());
		session.setAttribute("id", id);
		/*
		 * String nickname = usersVo.getNickname(); String userimage =
		 * usersVo.getUserimage(); String usercontent = usersVo.getUsercontent(); //로그인
		 * 사용자 정보 화면에 보내기 model.addAttribute("nickname2", nickname);
		 * model.addAttribute("userimage2", userimage);
		 * model.addAttribute("usercontent2", usercontent);
		 */
		
		return "kyunghwan/profilemodify/_leeprofilemodify";
	}

	@RequestMapping(value = "{URLId}/usermodify.do", method = RequestMethod.POST)
	public String updateForm(Model model, UsersVo usersVo, MultipartFile file) {
		System.out.println("수정버튼누름?");
		System.out.println(usersVo.toString());
		System.out.println(file.getOriginalFilename());
		usersVo.setUserimage(file.getOriginalFilename());

//		if (id == null) {
//			throw new IllegalArgumentException("사용자 아이디가 필요합니다.");
//		}
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
			OutputStream out = new FileOutputStream(saveDir + "/" + saveName); //saveDir + 잠깐지움 
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileData);

			System.out.println(file.getOriginalFilename());
			usersVo.setUserimage(saveName); //"upload/"+filepath였던곳 잠깐 바꿈

			if (bout != null) {
				bout.close();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		usersService.updateform(usersVo);
//		System.out.println("id: " + id);
		// model.addAttribute("user", user);
		//유저 이름보내기 확인용
		String userimage = usersVo.getUserimage();
		System.out.println("이미지이름 제대로 뱉는거 맞지?"+ userimage.toString());
		
		
		model.addAttribute("userimage", userimage);
		
		return "kyunghwan/profilemodify/_leeprofilemodify";
	}

	@RequestMapping(value = "/leemodi", method = RequestMethod.GET)
	public String leemodi() {
		System.out.println("leemodi");
		return "kyunghwan/profilemodify/_leeprofilemodify";
	}

}
