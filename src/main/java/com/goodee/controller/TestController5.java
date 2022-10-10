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
public class TestController5 {

	private BBSService service;

	public TestController5(BBSService service) {
		super();
		this.service = service;
	}
	
	@GetMapping("/bbs5/login")
	public String login() {
		return "/bbs5/login";
	}
	
	@GetMapping("/bbs5/content")
	public String content(Model model, HttpSession session, UserVO vo) {
		if(service.checkUser(vo)) {
			service.getList(model);
			service.userinfo(session, vo);
			return "/bbs5/content";
		} else {
			return "/bbs5/login";
		}
	}
	@GetMapping("/bbs5/update/{id}")//<-| 얘네 둘이 일치, int id는 그냥 우리가 지어주는 이름
	public String update(@PathVariable("id") int id, Model model) {
		model.addAttribute("id", id);
		return "/bbs5/update";
	}
	
	
	@GetMapping("/bbs5/content_result/{id}")
	public String content_result(BBSVO vo, HttpSession session, Model model, 
								@PathVariable("id") int id) {
		System.out.println("오긴 오지?");
		service.updateuser(vo, session, id);
		service.getList(model);
		return "/bbs5/content";
	}
	
}
