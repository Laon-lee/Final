package com.goodee.service;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.NoticeDAO;

@Service
public class NoticeService {
	private NoticeDAO dao;

	public NoticeService(NoticeDAO dao) {
		super();
		this.dao = dao;
	}
	public void getList(Model model) {
		model.addAttribute("list",dao.getList());
	}
	
	public void getContents(String id, Model model) {
		model.addAttribute("contents",dao.getContents(id));
	}
}
