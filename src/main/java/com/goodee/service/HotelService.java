package com.goodee.service;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.HotelDAO;


@Service
public class HotelService {
	private HotelDAO dao;
	
	public HotelService(HotelDAO dao) {
		this.dao = dao;
	}

	public void getList(Model model) {
		
		model.addAttribute("list", dao.selectList());
		
	}
}
