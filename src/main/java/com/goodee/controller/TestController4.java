package com.goodee.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.goodee.service.BBSService;
import com.goodee.vo.BBSVO;
import com.goodee.vo.UserVO;

@Controller
public class TestController4 {

	private BBSService service;

	public TestController4(BBSService service) {
		super();
		this.service = service;
	}
	
	
	@GetMapping("/bbs4/login")
	public String login() {
		return "/bbs4/login";
	}
	
	@GetMapping("/bbs4/content")
	public String content(UserVO vo, Model model, HttpSession session) {
		
		if(service.checkUser(vo)){
			service.getList(model);
			service.userinfo(session, vo);
			return "/bbs4/content";
		}else {
			return "/bbs4/login";
		}
	}
	
	@GetMapping("/bbs4/insert")
	public String insert() {
		return"/bbs4/insert";
	}
	
	@GetMapping("/bbs4/newcontent")								// content, title이 BBSVO에 있어서
	public String newcontent(Model model, HttpSession session, BBSVO vo) {
		
		service.userinsert(vo, session);
		service.getList(model);
		return "/bbs4/content";
	}
}
