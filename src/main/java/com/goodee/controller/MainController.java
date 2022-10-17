package com.goodee.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.goodee.service.NURIService;
import com.goodee.vo.UserVO;

@Controller
public class MainController {
	private NURIService service;

	public MainController(NURIService service) {
		super();
		this.service = service;
	}
	
	@GetMapping("membership")
	public String membership(){
		return "main/membership";
	}
	@GetMapping("membership2")
	public String membership2(UserVO vo, HttpSession session) {
		if(!service.ismember1(vo)) {
		service.membership2(vo);
		session.setAttribute("user", vo);
		return "main/main";
		}else {
			return "main/membershipfail";
		}
	}
	@GetMapping("login")
	public String login(UserVO vo, HttpSession session) {
		if(service.ismember2(vo)) {
			service.getmemberinfo(vo);
			session.setAttribute("user",vo);
			return "main/main";
		}else {
			return "main/main";
		}
	}
	@GetMapping("logout")
	public String loginout(HttpSession session) {
		session.invalidate();
		return "main/main";
	}
	@GetMapping("mypage")
	public String mypage() {
		return "main/mypage";
	}
	@GetMapping("gomain")
	public String gomain() {
		return "main/main";
	}
	@GetMapping("goshop")
	public String goshop() {
		return "shop/shop-main-JJW";
	}
}
