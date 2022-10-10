package com.goodee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.goodee.service.BBSService;
import com.goodee.vo.UserVO;

@Controller
public class TestController1 {

	// BBSService를 가져와서 사용하기 위해 소환!!
	private BBSService service;
	public TestController1(BBSService sevice) {
		super();
		this.service = sevice;
	}
	
	@GetMapping("/bbs1/login")
	public String login() {
		return"/bbs1/login";
	}
	
	@GetMapping("/bbs1/success")
	public String success(UserVO vo) {
		if(service.checkUser(vo)) {
			return "/bbs1/success";			
		} else {
			return "/bbs1/login";
		}
	}
}
