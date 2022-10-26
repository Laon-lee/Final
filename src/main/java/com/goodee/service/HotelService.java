package com.goodee.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.HotelDAO;
import com.goodee.vo.HotelVO;

@Service
public class HotelService {
	private HotelDAO dao;

	public HotelService(HotelDAO dao) {
		this.dao = dao;
	}

	public void getList(Model model) {

		model.addAttribute("list", dao.selectList());

	}

	public void getRoomList(Model model) {

		model.addAttribute("room", dao.selectRoomList());

	}

	public void getCateList(Model model, String[] cate) {
		/*
		 * for (int i = 0; i < dao.selectCateList(cate).size(); i++) {
		 * System.out.println(cate);
		 * System.out.println(dao.selectCateList(cate).get(i).getHotelName()); }
		 */
		model.addAttribute("cate", dao.selectCateList(cate));
	}
	
	public void nameRoomList(Model model, String hotelname) {
		System.out.println("서비스"+hotelname);
		System.out.println("여기보세요"+dao.selectroomnameList(hotelname).get(0).getHotelName());
		model.addAttribute("room", dao.selectroomnameList(hotelname).get(0));
		
	}
}
