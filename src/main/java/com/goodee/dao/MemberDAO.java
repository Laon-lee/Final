package com.goodee.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.goodee.vo.MemberVO;



@Mapper
public interface MemberDAO {
	public int idCheck(MemberVO vo);
	
	public int insertmembership(MemberVO vo);

	public int ismember2(MemberVO vo);
	public MemberVO getmemberinfo(MemberVO vo);
}
