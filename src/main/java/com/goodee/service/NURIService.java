package com.goodee.service;

import org.springframework.stereotype.Service;
import com.goodee.dao.NURIDAO;
import com.goodee.vo.UserVO;


@Service
public class NURIService {
	private NURIDAO dao;

	public NURIService(NURIDAO dao) {
		super();
		this.dao = dao;	
	} 
	
	public void membership2(UserVO vo) {
		dao.insertmembership(vo);
	}
	public boolean ismember1(UserVO vo) {
		int i = dao.ismember1(vo);
		return (i>0)?true:false;
	}
	public boolean ismember2(UserVO vo) {
		int i = dao.ismember2(vo);
		return (i>0)?true:false;
	}
	public UserVO getmemberinfo(UserVO vo) {
		return dao.getmemberinfo(vo);
	}
}
