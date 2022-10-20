package com.goodee.service;

import org.springframework.stereotype.Service;

import com.goodee.dao.MemberDAO;
import com.goodee.vo.MemberVO;

@Service
public class MemberServiceImp implements MemberService{
	private MemberDAO dao;

	public void setDao(MemberDAO dao) {
		this.dao = dao;
	}

	// 회원가입
	public void memberJoinProcess(MemberVO vo) {
		dao.memberJoinMethod(vo);
	}

}
