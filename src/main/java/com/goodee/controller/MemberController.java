package com.goodee.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goodee.service.MemberService;
import com.goodee.vo.MemberVO;

@Controller
public class MemberController {
	private MemberService mbservice;

	public MemberController(MemberService mbservice) {
		super();
		this.mbservice = mbservice;
	}

	@PostMapping("/idcheck")
	@ResponseBody
	public int idcheck(@RequestBody MemberVO vo ) {
		System.out.println(vo.getMem_id() +"컨트롤러");
		System.out.println(mbservice.idCheck(vo));
		return mbservice.idCheck(vo);
	}
}
