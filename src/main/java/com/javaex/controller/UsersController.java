package com.javaex.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
				System.out.println("index에서 로그인시에 vo toString" + usersVo.toString());
				session.setAttribute("id", id);
				session.setAttribute("nickname", usersVo.getNickname());
				session.setAttribute("userimage", usersVo.getUserimage());
				session.setAttribute("usercontent", usersVo.getUsercontent());
				System.out.println("index에서 로그인시에 아이디값" + id);

				return "redirect:" + id;
			} else {
				return "main/index";
			}

		}
	}

	@RequestMapping("/logout.do")
	public String userLogOut(HttpSession session, HttpServletRequest req) {
		session.invalidate();

		return "redirect:" + req.getHeader("Referer");
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
		// 로그인 사용자 정보 가져오기

		model.addAttribute("usersVo", usersService.selectOneUsers(usersVo));
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

	@RequestMapping(value = "{id}/usermodify.do", method = RequestMethod.POST)
	public String updateForm(Model model, UsersVo usersVo, MultipartFile file, HttpSession session) {
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
			OutputStream out = new FileOutputStream(saveDir + "/" + saveName); // saveDir + 잠깐지움
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileData);

			System.out.println(file.getOriginalFilename());
			usersVo.setUserimage(saveName); // "upload/"+filepath였던곳 잠깐 바꿈

			if (bout != null) {
				bout.close();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		usersService.updateform(usersVo);
		// 유저 이름보내기 확인용
		String userimagecheck = usersVo.getUserimage();
		System.out.println("이미지이름 제대로 뱉는거 맞지?" + userimagecheck.toString());

		usersVo = usersService.selectOneUsers(usersVo);
		session.setAttribute("id", usersVo.getId());
		session.setAttribute("nickname", usersVo.getNickname());
		session.setAttribute("usercontent", usersVo.getUsercontent());
		session.setAttribute("userimage", usersVo.getUserimage());

		return "kyunghwan/profilemodify/_leeprofilemodify";
	}

	@RequestMapping(value = "/leemodi", method = RequestMethod.GET)
	public String leemodi() {
		System.out.println("leemodi");
		return "kyunghwan/profilemodify/_leeprofilemodify";
	}

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
				session.setAttribute("nickname", usersVo.getNickname());
				session.setAttribute("usercontent", usersVo.getUsercontent());
				session.setAttribute("userimage", usersVo.getUserimage());

//				redirectAttributes.addFlashAttribute("usersVo", usersService.selectOneUsers(usersVo));
				return "redirect:" + req.getHeader("Referer");
			} else {
				return "main/index";
			}
		}
	}

}
