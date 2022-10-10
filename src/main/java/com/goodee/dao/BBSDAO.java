package com.goodee.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.goodee.vo.BBSVO;
import com.goodee.vo.UserVO;

@Mapper
public interface BBSDAO {

	// UserVO vo 형태로 컨트롤러에서 받아왔고 얘네를 이용해서 데이터 베이스서 int를 받아왔다.
	// 여기서 checkUser가 int 타입으로 생성이 되서 service 단에서 idp 담귀고 (i>0) 이게 된다.
	public int checkUser(UserVO vo);
	
	public UserVO userinfo(UserVO vo);
	
	// 매퍼 id= "getList" List<BBSVO>에 담아버린다.
	public List<BBSVO> getList();
	
	public BBSVO selectid(int id);
	
	public int callId(UserVO vo);
	
	public int userinsert(BBSVO vo);
	
	public int updateuser(BBSVO vo);
	
	public int deleteuser(BBSVO vo);
}
