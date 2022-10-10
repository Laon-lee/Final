package com.goodee.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.goodee.service.BBSService;
import com.goodee.vo.BBSVO;
import com.goodee.vo.UserVO;

@Controller
public class TestController4_1 {
	
	private BBSService service; 
	
	public TestController4_1(BBSService service) {
		super();
		this.service = service;
	}

	@GetMapping("/bbs4_1/login")
	public String login() {
		return "/bbs4_1/login";
	}
	
	@GetMapping("/bbs4_1/content")
	public String content(HttpSession session, Model model, UserVO vo) {
		if(service.checkUser(vo)) {
			service.getList(model);
			service.userinfo(session, vo);
			return "bbs4_1/content";
		} else {
			return "bbs4_1/login";
		}
	}
	
	
}
