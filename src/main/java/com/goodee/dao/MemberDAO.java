package com.goodee.dao;

import org.apache.ibatis.annotations.Mapper;

import com.goodee.vo.MemberVO;

@Mapper
public interface MemberDAO {
	
	public void memberJoinMethod(MemberVO vo);
}
