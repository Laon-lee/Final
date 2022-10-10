package com.goodee.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.goodee.service.BBSService;
import com.goodee.vo.UserVO;

@Controller
public class TestController3 {
	private BBSService service;

	public TestController3(BBSService service) {
		super();
		this.service = service;
	}
	
	@GetMapping("/bbs3/login")
	public String login() {
		return "/bbs3/login";
	}
	
	@GetMapping("/bbs3/content") //세션에 저장              vo에 id, pw담김       모델에 담긴리스트
	public String content(HttpSession session, @ModelAttribute UserVO vo, Model model) {
		System.out.println("넘어오냐");
		if(service.checkUser(vo)) {
				//도서 목록 뽑아오기
			service.getList(model);
				//세션에 userinfo 담기
			service.userinfo(session, vo);
			return "/bbs3/content";
		} else {
			return "/bbs3/login";
		}
	}
	@GetMapping("/bbs3/result")
	public String result(Model model,
						@RequestParam("id") int id) {
		service.selectid(id, model);
		return "/bbs3/result";
	}
	
	
//	@GetMapping("/bbs3/login")
//	public String login() {
//		return "bbs3/login";
//	}
//	
//	@GetMapping("/bbs3/login")             
//	public String login3(HttpSession session,
//									//vo에 userid와 password가 담김
//			Model model, @ModelAttribute UserVO vo) {
//				//여기는 id, password만 담김
//		if(service.checkUser(vo)) {
//			//회원이여서 트루가 되면 여기서 부터 로직 시작
//			//매퍼에서 설정해놓은 정보 4개를 다 담는 로직
//			service.userinfo(session, vo);
//			// 전체 리스트를 모델에 담아주는 로직.
//			service.getList(model);
//			return "/bbs3/result3";
//		} else {
//			return "/bbs3/login";
//		}
//		
//	}
//	
//	@GetMapping("/bbs3/result")
//	public String result(Model model) {
//		service.getList(model);
//		return "/bbs3/result";
//	}
//	

}
