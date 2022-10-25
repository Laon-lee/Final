package com.goodee.service;



import org.springframework.stereotype.Service;

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
	public MemberVO getmemberinfo(MemberVO vo) {
		return dao.getmemberinfo(vo);
	
	}


	public int idCheck(MemberVO vo) {
		return dao.idCheck(vo);
	}
	
}
