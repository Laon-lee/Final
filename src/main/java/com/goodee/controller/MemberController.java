package com.goodee.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goodee.service.MemberService;
import com.goodee.vo.MemberVO;
import com.goodee.vo.UserVO;

@Controller
public class MemberController {
	private MemberService mbservice;

	public MemberController(MemberService mbservice) {
		super();
		this.mbservice = mbservice;
	}
	
	@PostMapping("membership2")
	public String membership2(MemberVO vo, HttpSession session) {
		if(!mbservice.ismember1(vo)) {
		mbservice.membership2(vo);
		session.setAttribute("user", vo);
		return "redirect:gomain";
		}else {
			return "main/membershipfail";
		}
	}
	
	@GetMapping("login")
	public String login(@RequestParam("mem_id1") String mem_id, 
						@RequestParam("mem_pw1") String mem_pw,
						HttpSession session) {
	MemberVO vo =new MemberVO();
	vo.setMem_id(mem_id);
	vo.setMem_pw(mem_pw);
		if(mbservice.ismember2(vo)) {
			mbservice.getmemberinfo(vo);
			session.setAttribute("user",vo);
			return "redirect:gomain";
		}else {
			return "redirect:gomain";
		}
	}
	
	@GetMapping("logout")
	public String loginout(HttpSession session) {
		session.invalidate();
		return "redirect:gomain";
	}
	
	@PostMapping("/idcheck")
	@ResponseBody
	public int idcheck(@RequestBody MemberVO vo ) {
		return mbservice.idCheck(vo);
	}
}
