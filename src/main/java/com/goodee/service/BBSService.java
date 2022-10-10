package com.goodee.service;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.goodee.dao.BBSDAO;
import com.goodee.vo.BBSVO;
import com.goodee.vo.UserVO;

@Service
public class BBSService {
	private BBSDAO dao;

	public BBSService(BBSDAO dao) {
		super();
		this.dao = dao;
		
	} 
	// 1번 문제를 풀기 위한 로직
	// 회원인지 아닌지 구분하는 로직
	public boolean checkUser(UserVO vo) {
		System.out.println("hi");
		//BBSDAO에서 int 타입의 checkUser(UserVO vo)를 i에 담았다
		int i = dao.checkUser(vo);
		// 만약 i가 빈값이 아니면 true를 반환하고 아니면 false를 반환한다.
		return (i>0)?true:false;
	}
	
	public boolean callId(UserVO vo) {
		int j = dao.callId(vo);
		return (j>0)?true:false;
	}
	

	// 전체 리스트 가져오는 로직
	public void getList(Model model) {
		// "list"라는 이름에 전체 목록을 다 담는 로직
		model.addAttribute("list",dao.getList()) ;
	}
	
	// userinfo에서 가져온 정보를 서비스단에서 세션에 추가
	@GetMapping
	public void userinfo(HttpSession session, UserVO vo) {
		//컨트롤러에서 받아와서 id와 pw 2개로 정보 네 개를 다 userinfo에 담는 로직
		session.setAttribute("userinfo", dao.userinfo(vo));
	}
	
	public void selectid(int id, Model model) {
		model.addAttribute("selectid",dao.selectid(id) );
	}
	
	public void userinsert(BBSVO vo, HttpSession session) {
		// 내가 접속한 이름으로 저장되는 로직
		UserVO vo1 = (UserVO)session.getAttribute("userinfo");
		//insert에서 아이디 날짜는 자동으로 생기고 카테고리 제목 컨텐츠는 입력을 해주는데
		// owner_id와 owner는 따로 입력을 하지 않기 때문에 이렇게 생성을 해줘야 한다.
		vo.setOwner(vo1.getUsername());
		vo.setOwnerId(vo1.getId());
		dao.userinsert(vo);
	}
	
	public void updateuser(BBSVO vo, HttpSession session, int id) {
		vo.setId(id);
		dao.updateuser(vo);
	}
	
	public void deleteuser(BBSVO vo, int id) {
		vo.setId(id);
		dao.deleteuser(vo);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
