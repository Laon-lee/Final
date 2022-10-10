package com.goodee.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.goodee.dao.BBSDAO;
import com.goodee.service.BBSService;
import com.goodee.vo.UserVO;

@Controller
public class TestController3_1 {

	private BBSService service;
	private BBSDAO dao;

	public TestController3_1(BBSService service) {
		super();
		this.service = service;
	}
	
	
	@GetMapping("/bbs3_1/login")
	public String login() {
		return "/bbs3_1/login";
	}
	
	@GetMapping("/bbs3_1/content")
	public String content(HttpSession session, @ModelAttribute UserVO vo, Model model) {
		if(service.callId(vo)) {
			service.getList(model);
			service.userinfo(session, vo);
			return "/bbs3_1/content";
		} else {
			return "/bbs3_1/login";
		}
	}
}
