package com.goodee.service;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.MemberDAO;
import com.goodee.dao.ShopDAO;
import com.goodee.vo.MemberVO;

@Service
public class ShopService {
	private ShopDAO dao;
	private MemberDAO mbdao;
	
	public ShopService(ShopDAO dao, MemberDAO mbdao) {
		super();
		this.dao = dao;
		this.mbdao = mbdao;
	}
	public void getProductList(Model model) {
		model.addAttribute("list", dao.getProductList());
	}
	public void getCateList(String category, Model model) {
		model.addAttribute("list", dao.getCateList(category));
	}
	public void getListById(String id, Model model) {
		
		model.addAttribute("qna", dao.getQna(id));
		model.addAttribute("reviews", dao.getReview(id));
		model.addAttribute("list", dao.getListById(id));
	}
	public void getListByIdS(String id, Model model,HttpSession session) {
		MemberVO vo1 = (MemberVO)session.getAttribute("user");
		MemberVO vo2 = mbdao.getmemberinfo(vo1);
		
		model.addAttribute("separateVO",mbdao.separate(vo2)); 
		model.addAttribute("user", vo2);
		model.addAttribute("list", dao.getListById(id));
	}
}
