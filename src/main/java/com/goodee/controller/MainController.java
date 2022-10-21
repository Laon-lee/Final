package com.goodee.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

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
		return "redirect:gomain";
		}else {
			return "main/membershipfail";
		}
	}
	@GetMapping("login")
	public String login(UserVO vo, HttpSession session) {
		if(service.ismember2(vo)) {
			service.getmemberinfo(vo);
			session.setAttribute("user",vo);
			return "redirect:gomain";
		}else {
			return "redirect:gomain";
		}
	}
	
	@GetMapping("logout")
	public String loginout(HttpSession session) {
		session.invalidate();
		return "redirect:gomain";
	}
	
	
	@GetMapping("mypage")
	public String mypage() {
		return "main/mypage";
	}
	@GetMapping("userinfo")
	public String userinfo() {
		return "main/userinfo";
	}
	@GetMapping("usequestion")
	public String usequestion() {
		return "main/usequestion";
	}
	@GetMapping("question")
	public String question() {
		return "main/question";
	}
	@GetMapping("basket")
	public String basket() {
		return "shop/shop-basket";
	}
	@GetMapping("gomain")
	public String gomain() {
		return "main/main";
	}
	@GetMapping("gomain2")
	public String gomain2() {
		return "main/main";
	}
	@GetMapping("goshop")
	public String goshop() {
		return "shop/shop-main-JJW";
	}
	@GetMapping("gohotel")
	public String gohotel() {
		return "hotel/hotelmain";
	}
	
}
