package com.goodee.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.goodee.service.BBSService;
import com.goodee.vo.UserVO;

@Controller
public class BBSController5_1 {

	
	private BBSService service;
	
	
	@GetMapping("/bbs5_1/login")
	public String login() {
		return "/bbs5_1/login";
	}
	
	@GetMapping("/bbs5_1/content")
	public String content(Model model, HttpSession session, UserVO vo) {
		if(service.checkUser(vo)) {
			service.getList(model);
			service.userinfo(session, vo);
			return "/bbs5_1/content";
		}else {
			return "/bbs5_1/login";
		}
		
	}
}
