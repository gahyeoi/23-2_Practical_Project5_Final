package com.example.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	@Autowired
	UserServiceImpl service;

	@RequestMapping(value = "/login")
	public String login(String t, Model model) {
		return "login";
	}

	@PostMapping("/loginOk")
	public String login(@RequestParam("userid") String userid, @RequestParam("password") String password, Model model) {
		// 여기에 실제 로그인 처리 로직을 구현합니다.

		// 아이디와 비밀번호가 일치하는지 확인하는 간단한 예시
		if ("gahyeoi".equals(userid) && "1234".equals(password)) {
			// 로그인 성공
			// 여기에서 세션 등의 로그인 처리를 추가할 수 있습니다.

			return "redirect:/board/list"; // 로그인 성공 시 이동할 페이지
		} else {
			// 로그인 실패
			model.addAttribute("error", "아이디 또는 비밀번호가 올바르지 않습니다.");
			return "redirect:/login"; // 로그인 실패 시 이동할 페이지
		}
	}

	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}

}
