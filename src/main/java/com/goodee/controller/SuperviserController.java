package com.goodee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.goodee.service.SuperviserService;

@Controller
public class SuperviserController {

	private SuperviserService superservice;
	@GetMapping("viser/main")
	public String viserMain() {
		return"superviser/viser-main";
	}
	
	@GetMapping("viser/proc-add")
	public String addPage() {
		return"superviser/proc-add";
	}
	
	@GetMapping("viser/add-success")
	public String success() {
		
		return "/superviser/proc-add";
	}
}
