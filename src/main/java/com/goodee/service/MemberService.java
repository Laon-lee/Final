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

	
	


	public int idCheck(MemberVO vo) {
		System.out.println(vo.getMem_id() +"서비스");
		System.out.println(dao.idCheck(vo));
		return dao.idCheck(vo);
	}
	
}
