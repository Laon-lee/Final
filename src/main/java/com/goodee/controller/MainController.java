package com.goodee.controller;

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
		return "membership";
	}
	@GetMapping("membership2")
	public String membership2(UserVO vo) {
		service.membership2(vo);
		return "membershipsuccess";
	}
	@GetMapping("goshop")
	public String goshop() {
		return "shot-main-JJW";
	}
}
