package com.goodee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import com.goodee.service.SuperviserService;
import com.goodee.vo.ShopVO;

@Controller
public class SuperviserController {

	private SuperviserService superservice;
	
	public SuperviserController(SuperviserService superservice) {
		super();
		this.superservice = superservice;
	}

	@GetMapping("viser/main")
	public String viserMain() {
		return"superviser/viser-main";
	}
	
	@GetMapping("viser/proc-add")
	public String addPage() {
		return"superviser/viser-shop-add";
	}
	
	@GetMapping("viser/add-success")
	public String success(ShopVO vo) {
		
		System.out.println(vo.getProductImage());
		System.out.println(vo.getProductContent());
		superservice.viseradd(vo);
		System.out.println("컨트롤러");
		return "/superviser/viser-shop-add";
	}
}
