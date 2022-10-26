package com.goodee.service;



import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.MemberDAO;
import com.goodee.vo.MemberVO;

@Service
public class MemberService{
	private MemberDAO dao;
	
	public MemberService(MemberDAO dao) {
		super();
		this.dao = dao;
	}

	// 회원가입
	public void membership2(MemberVO vo) {
		dao.insertmembership(vo);
	}
	public boolean ismember1(MemberVO vo) {
		int i = dao.idCheck(vo);
		return (i>0)?true:false;
	}
	public boolean ismember2(MemberVO vo) {
		int i = dao.ismember2(vo);
		return (i>0)?true:false;
	}
	public int idCheck(MemberVO vo) {
		return dao.idCheck(vo);
	}
	public MemberVO getmemberinfo(MemberVO vo) {
		return dao.getmemberinfo(vo);
	
	}
	public void getmemberinfo(MemberVO vo,HttpSession session, Model model) {
		MemberVO vo1 = (MemberVO)session.getAttribute("user");
		System.out.println(dao.getmemberinfo(vo1));
		model.addAttribute("list",dao.getmemberinfo(vo1));
	}
	
}
