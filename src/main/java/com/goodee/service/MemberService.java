package com.goodee.service;

import org.springframework.stereotype.Service;

import com.goodee.vo.MemberVO;

@Service
public interface MemberService {
	// 회원가입 프로세스
		public void memberJoinProcess(MemberVO vo);
	
}
