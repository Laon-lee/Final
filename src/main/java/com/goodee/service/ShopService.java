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
	public void getProductList(Model model) {
		model.addAttribute("list", dao.getProductList());
	}
	public void getCateList(String category, Model model) {
		model.addAttribute("list", dao.getCateList(category));
	}
	public void getListById(String id, Model model) {
		model.addAttribute("list", dao.getListById(id));
	}
}
