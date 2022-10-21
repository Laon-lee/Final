package com.goodee.service;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.ShopDAO;
import com.goodee.vo.PageVO;
import com.goodee.vo.ShopVO;

@Service
public class ShopService {
	private ShopDAO dao;

	public ShopService(ShopDAO dao) {
		super();
		this.dao = dao;
	}
	
	/*
	 * public void selectList(ShopVO vo) { PageVO inputVO = new PageVO();
	 * inputVO.setTotal(dao.selectCount());
	 * 
	 * }
	 */
	public void getList(String category,Model model) {
		model.addAttribute("list", dao.getList(category)); 
		
	}
	public void getContent(String id, Model model) {
		model.addAttribute("content", dao.getContent(id));
	}
}
