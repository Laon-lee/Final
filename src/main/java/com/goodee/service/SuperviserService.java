package com.goodee.service;

import org.springframework.stereotype.Service;

import com.goodee.dao.SuperviserDAO;
import com.goodee.vo.ShopVO;

@Service
public class SuperviserService {
	private SuperviserDAO superdao;

	public SuperviserService(SuperviserDAO superdao) {
		super();
		this.superdao = superdao;
	}
	
	public void viseradd(ShopVO vo) {
		System.out.println("서비스1");
		superdao.addproc(vo);
		System.out.println("서비스2");
	}
}
