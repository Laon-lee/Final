package com.goodee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.goodee.service.BBSService;
import com.goodee.vo.UserVO;

@Controller
public class TestController2 {

	// 자 얘가 있어야 서비스를 쓸 수 있겠죠??
	private BBSService service;
	public TestController2(BBSService service) {
		super();
		this.service = service;
	}
	
	@GetMapping("/bbs2/login")
	public String content() {
		return "/bbs2/login";
	}
	
	@GetMapping("/bbs2/content")
	public String content(Model model, UserVO vo) {
		if(service.checkUser(vo)) {
			service.getList(model);
			return "/bbs2/content";
		}else {
			return "/bbs2/login";
		}
	}
}
