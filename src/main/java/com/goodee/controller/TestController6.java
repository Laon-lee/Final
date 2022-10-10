package com.goodee.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.goodee.service.BBSService;
import com.goodee.vo.BBSVO;
import com.goodee.vo.UserVO;

@Controller
public class TestController6 {

	private BBSService service;

	public TestController6(BBSService service) {
		super();
		this.service = service;
	}
	
	@GetMapping("/bbs6/login")
	public String login() {
		return "/bbs6/login";
	}
	
	@GetMapping("/bbs6/content")
	public String content(UserVO vo, Model model) {
		if(service.checkUser(vo)) {
			service.getList(model);
			return "/bbs6/content";
		}else {
			return "/bbs6/login";
		}
	}
	
	@GetMapping("/bbs6/delete/{id}")
	public String content(Model model, BBSVO vo1,
						@PathVariable("id") int id) {
		service.deleteuser(vo1, id);
		service.getList(model);
		return "/bbs6/content";
	}
}
