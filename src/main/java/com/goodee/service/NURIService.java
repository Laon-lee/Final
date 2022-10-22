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
	
	
}
